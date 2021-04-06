package com.mason.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.mason.service.UserService;
import com.mason.utils.EncryptDecrypt;

/**
 * Servlet implementation class VerifyEmail
 */
@WebServlet("/VerifyEmail")
public class VerifyEmail extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public VerifyEmail() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String uid=request.getParameter("uid");
		StringBuffer sb=new StringBuffer(uid);
		char charspace = ' ';
		String emailid="",message=null;
		UserService us=new UserService();
		
		try
		{
			for(int i=0;i<uid.length();i++)
			{
				if(Character.compare(sb.charAt(i), charspace)<=0)
				{
					sb.deleteCharAt(i);
					sb.insert(i, '+');
				}
			}
			uid=sb.toString();
			new EncryptDecrypt();
			emailid=EncryptDecrypt.decrypt(uid);
			message=us.verifyEmailId(emailid);
		}catch (Exception e) {
			// TODO: handle exception
		}
		request.setAttribute("message", message);
		getServletContext().getRequestDispatcher("/RegSuccess.jsp").forward(request, response);;
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}

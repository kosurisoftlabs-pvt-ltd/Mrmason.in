package com.mason.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.mason.bean.User;

/**
 * Servlet implementation class ShowProfile
 */
@WebServlet("/ShowProfile")
public class ShowProfile extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ShowProfile() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		HttpSession session = request.getSession();
		User user=new User();
		String pagename = "",message="";
		
		
		try
		{
			if(session.getAttribute("referenceid")!=null)
			{
				user.setBod_seq_no(Integer.parseInt(session.getAttribute("referenceid").toString()));
				user=new com.mason.service.UserService().viewUserProfile(user);
				if(session.getAttribute("usertype").equals("U"))
				{
					pagename = "/userProfileview.jsp";
				}
				else
					if(session.getAttribute("usertype").equals("A"))
				{
					pagename = "/adminProfileview.jsp";
				}
			}
			else
			{
				pagename = "/login3.jsp";
				message = "Please Login to Continue.....";
			}
		}catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
		request.setAttribute("userdetails", user);
		getServletContext().getRequestDispatcher(pagename).forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}

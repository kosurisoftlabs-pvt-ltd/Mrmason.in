package com.mason.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.mason.bean.LoginDetails;
import com.mason.service.LoginService;
import com.mason.utils.EncryptDecrypt;

/**
 * Servlet implementation class ResetPassword
 */
@WebServlet("/ResetPassword")
public class ResetPassword extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ResetPassword() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String emailid=request.getParameter("emailid");
		String newPassword=request.getParameter("newPassword");
		String conPassword=request.getParameter("confirmPassword");
		emailid=emailid.replaceAll(" ", "+");
		new EncryptDecrypt();
		
		String message=null;
		
		LoginDetails login=new LoginDetails();
		login.setPASSWORD(newPassword);
		LoginService ls=new LoginService();
		try
		{
		if(newPassword.equals(conPassword))
		{
			emailid=EncryptDecrypt.decrypt(emailid);
			System.out.println("IN compare equals"+emailid);
			login.setUSERNAME(emailid);
			message = ls.resetPassword(login);
		}
		else
		{
			message="New Password & Confirm Password doesn't match.";
		}
		}catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
		request.setAttribute("message", message);
		getServletContext().getRequestDispatcher("/RegSuccess.jsp").forward(request, response);
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}

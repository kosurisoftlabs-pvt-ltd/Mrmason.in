package com.mason.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.mason.service.UserService;

/**
 * Servlet implementation class ValidateOTPReset
 */
@WebServlet("/ValidateOTPReset")
public class ValidateOTPReset extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ValidateOTPReset() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String mobileno=request.getParameter("mobileNo");
		String otp=request.getParameter("otp");
		String pagename= null,message = null;
		boolean b=false;
		UserService us= new UserService();
		b = us.verifyResetPwdMobileNo(mobileno, otp);
		if(b)
		{
			message = "";
			pagename="/createNewPassword.jsp";
		}
		else
		{
			message = "Invalid OTP.";
			pagename="/RegSuccess.jsp";
		}
		
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

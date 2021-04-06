package com.mason.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.mason.service.UserService;

/**
 * Servlet implementation class ChangePassword
 */
@WebServlet("/ChangePassword")
public class ChangePassword extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ChangePassword() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String oldPassword = "", newpassword = "",confirmpassword = "", message = "",pagename="";
		HttpSession hs=request.getSession();
		String userid=hs.getAttribute("referenceid").toString();
		boolean flag=true;
		try
		{
			if(request.getParameter("oldPassword")!=null)
			{ oldPassword=request.getParameter("oldPassword");}
			else
			{	message = "Invalid Old Password"; flag=false;}
			if(request.getParameter("newPassword")!=null)
			{	newpassword=request.getParameter("newPassword");	}
			else
			{		message = "Invalid New Password";flag=false;	}
			if(request.getParameter("conPassword")!=null)
			{		confirmpassword=request.getParameter("conPassword");}
			else
			{	message = "Invalid Confirm Password";flag=false;	}
			
			if(flag)
			{
				message = new UserService().changePassword(userid,oldPassword,newpassword);
			}
			if(hs.getAttribute("usertype").equals("U"))
			{
				pagename = "/user_changepassword.jsp";
			}
			else
				if(hs.getAttribute("usertype").equals("A"))
			{
				pagename = "/changepassword.jsp";
			}
			
		}catch (Exception e) {
			// TODO: handle exception
		}
		request.setAttribute("message", message);
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

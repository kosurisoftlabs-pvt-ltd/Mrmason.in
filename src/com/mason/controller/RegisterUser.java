package com.mason.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.mason.bean.User;
import com.mason.service.UserService;

/**
 * Servlet implementation class RegisterUser
 */
@WebServlet("/RegisterUser")
public class RegisterUser extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public RegisterUser() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		User user=new User();
		String usertypes="";
		String []userTypes=null;
		UserService userObject=new UserService();
		String message=null;
		try
		{
			
		user.setName(request.getParameter("name"));
		user.setMobileNo(request.getParameter("mobileNo"));
		user.setEmailId(request.getParameter("emailId"));
		user.setAddress(request.getParameter("address"));
		user.setCity(request.getParameter("city"));
		user.setState(request.getParameter("state"));
		user.setDistrict(request.getParameter("district"));
		user.setPincodeNo(request.getParameter("pincodeNo"));
		user.setPassword(request.getParameter("password"));
		userTypes= request.getParameterValues("usertype");
		
		for(int i=0;i<userTypes.length;i++)
		{
			if(i+1==userTypes.length)
			{
				usertypes+=userTypes[i];
			}else
			{
				usertypes+=userTypes[i]+",";
			}
		}
		
		user.setUserTypes(usertypes);

			if(userObject.checkEmailid(user.getEmailId()))
			{
				message="Email Already Registered.";
			}
			else
			if(userObject.checkMobile(user.getMobileNo()))
			{
				message="Mobile Already Registered.";
			}
			else
			{
				message = userObject.registerUser(user);
			}
		}catch (Exception e) {
			// TODO: handle exception
		}
		String page="/RegSuccess.jsp";
		request.setAttribute("message", message);
		getServletContext().getRequestDispatcher(page).forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}

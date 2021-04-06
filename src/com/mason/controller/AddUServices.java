package com.mason.controller;

import java.io.File;
import java.io.IOException;
import java.io.InputStream;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.servlet.http.Part;

import com.mason.bean.UserServices;
import com.mason.service.UserService;

/**
 * Servlet implementation class AddUServices
 */
@WebServlet("/AddUServices")
@javax.servlet.annotation.MultipartConfig
public class AddUServices extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AddUServices() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		UserServices us=new UserServices();
		String message ="";
		HttpSession hs=request.getSession();
		try
		{
			us.setSERVICE_TYPE(request.getParameter("serviceType"));
			us.setAVAILABLE_WITHIN_RANGE(request.getParameter("withInRange"));
			us.setQUALIFICATION(request.getParameter("educationQual"));
			
			us.setEXPERIENCE(request.getParameter("experience"));
			us.setSTATUS(request.getParameter("availability"));
			us.setPINCODE(request.getParameter("Work_Location"));
			us.setCITY(request.getParameter("city"));
			
			Part certificate=request.getPart("certification");
	        InputStream is=null,is1=null;
			if(certificate!=null)
			{
				is = certificate.getInputStream();
			}
			us.setCERTIFICATE1(is);
			us.setCERTIFICATE2(is1);
			us.setUSER_ID(hs.getAttribute("referenceid").toString());
			message = new UserService().addUserServiceDetails(us);
			
		}catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
		request.setAttribute("message", message);
		getServletContext().getRequestDispatcher("/user_addmyservice.jsp").forward(request, response);
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}

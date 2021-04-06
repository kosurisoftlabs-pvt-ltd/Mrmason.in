package com.mason.controller;

import java.io.IOException;
import java.io.InputStream;

import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;

import com.mason.bean.ServicePerson;
import com.mason.service.ServicePersonService;

/**
 * Servlet implementation class UpdateServicePerson
 */
@WebServlet("/UpdateServicePerson")
@MultipartConfig
public class UpdateServicePerson extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public UpdateServicePerson() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		ServicePerson sp = new ServicePerson();
		String message = "";
		try
		{
			
		sp.setSERVICE_TYPE(request.getParameter("servicetype"));
		sp.setNAME(request.getParameter("name"));
		sp.setCONTACT_NO(request.getParameter("contact"));
		sp.setEMAIL_ID(request.getParameter(""));
		sp.setEXPERIENCE(request.getParameter("experience"));
		sp.setQUALIFICATION(request.getParameter("qualification"));
		Part part = request.getPart("certificate");
		InputStream is = null;
		if(part!=null)
		{
			is=part.getInputStream();
		}
		sp.setCERTIFICATE(is);
		sp.setPINCODE(request.getParameter("pincode"));
		sp.setSTATE(request.getParameter("state"));
		sp.setDISTRICT(request.getParameter("district"));
		sp.setCITY(request.getParameter("city"));
		sp.setAVAILABLE_STATUS(request.getParameter("availability"));
		sp.setWITH_IN_RANGE(request.getParameter("withinrange"));
		sp.setSER_PER_SEQ_ID(Integer.parseInt(request.getParameter("serpersonid").toString()));
		message = new ServicePersonService().updateServicePerson(sp);
		
		}catch (Exception e) {
			e.printStackTrace();
		}
		
		getServletContext().getRequestDispatcher("/View_Service_Persons").forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}

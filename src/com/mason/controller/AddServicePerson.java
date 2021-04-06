package com.mason.controller;

import java.io.IOException;
import java.io.InputStream;

import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.servlet.http.Part;

import com.mason.bean.ServicePerson;
import com.mason.service.ServicePersonService;

/**
 * Servlet implementation class AddServicePerson
 */
@WebServlet("/AddServicePerson")
@MultipartConfig
public class AddServicePerson extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AddServicePerson() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		ServicePerson sp = new ServicePerson();
		HttpSession hs=request.getSession();
		InputStream is=null;
		String pagename = "",message ="";
		
		try
		{
			if(hs.getAttribute("referenceid")!=null)
			{
				sp.setNAME(request.getParameter("personname"));
				sp.setCONTACT_NO(request.getParameter("contact"));
				sp.setEMAIL_ID(request.getParameter("email"));
				sp.setEXPERIENCE(request.getParameter("years"));
				sp.setQUALIFICATION(request.getParameter("qualification"));
				/*sp.setPINCODE(request.getParameter("pincode"));*/
				
				sp.setPINCODE(request.getParameter("Work_Location"));    // added by mahesh kosuri
				sp.setCITY(request.getParameter("city"));
				sp.setSTATE(request.getParameter("state"));
				sp.setDISTRICT(request.getParameter("district"));
				sp.setAVAILABLE_STATUS(request.getParameter("availablestatus"));
				sp.setWITH_IN_RANGE(request.getParameter("withinrange"));
				sp.setREGISTERED_BY(hs.getAttribute("referenceid").toString());
				sp.setSTATUS(request.getParameter("A"));
				sp.setSERVICE_TYPE(request.getParameter("servicetype"));
				Part part = request.getPart("Certificate");
				if(part!=null)
				{
					is=part.getInputStream();;
					sp.setCERTIFICATE(is);
				}
				message = new ServicePersonService().addServicePerson(sp);
				pagename="/user_add_service_person.jsp";
			}
			else
			{
				pagename="/login3.jsp";
				message = "Please Login to continue....";
			}
			
		}catch (Exception e) {
			e.printStackTrace();
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

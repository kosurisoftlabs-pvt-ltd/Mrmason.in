package com.mason.bean;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class AddServiceUser
 */
@WebServlet("/AddServiceUser")
public class AddServiceUser extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AddServiceUser() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		ServicePerson sp = new ServicePerson();
		
		try
		{
			sp.setSER_PER_SEQ_ID(Integer.parseInt(""));
			sp.setNAME(request.getParameter(""));
			sp.setCONTACT_NO(request.getParameter(""));
			sp.setEMAIL_ID(request.getParameter(""));
			sp.setEXPERIENCE(request.getParameter(""));
			sp.setQUALIFICATION(request.getParameter(""));
			sp.setPINCODE(request.getParameter(""));
			sp.setCITY(request.getParameter(""));
			sp.setSTATE(request.getParameter(""));
			sp.setDISTRICT(request.getParameter(""));
			sp.setAVAILABLE_STATUS(request.getParameter(""));
			sp.setWITH_IN_RANGE(request.getParameter(""));
			sp.setREGISTERED_BY(request.getParameter(""));
			sp.setSTATUS(request.getParameter(""));
			sp.setSERVICE_TYPE(request.getParameter(""));
			
			
		}catch (Exception e) {
			e.printStackTrace();
		}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}

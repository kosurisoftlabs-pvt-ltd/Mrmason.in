package com.mason.controller;

import java.io.IOException;
import java.util.HashMap;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.mason.service.LoginService;
import com.mason.service.ServicesService;

/**
 * Servlet implementation class ServiceRequest
 */
@WebServlet("/ServiceRequest")
public class ServiceRequest extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
	/*Constructor*/
    public ServiceRequest() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		com.mason.bean.ServiceRequest sr=new com.mason.bean.ServiceRequest();
		String message = "", pagename="";
		HttpSession hs=request.getSession();
		String userid= "";
		sr.setSERVICE_NAME(request.getParameter("service"));
		/*sr.setREQ_PINCODE(request.getParameter("pincode1")); */
		
		sr.setREQ_PINCODE(request.getParameter("Work_Location"));  /**added by mahesh kosuri*/
		

		
		sr.setDESCRIPTION(request.getParameter("description"));
		
		if(request.getParameter("reqDate")=="")
		{
			sr.setSERVICE_DATE("");
		}
		else
		{
			sr.setSERVICE_DATE(request.getParameter("reqDate"));
		}
		sr.setSTATUS("R");
		/*HashMap <String,String> hm=new HashMap<String,String>();*/
		try
		{
			if(hs.getAttribute("referenceid")!=null)
			{
				sr.setREQUESTED_BY(hs.getAttribute("referenceid").toString());
				message = new ServicesService().addServiceRequest(sr);
				pagename = "/ImyServiceRequests";
			}
			else
			{
				message = "Please Login to submit a Request.";
				request.setAttribute("message", message);
				request.setAttribute("servicerequest", sr);
				pagename = "/login1.jsp";//ServiceRequesterRegister.jsp
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

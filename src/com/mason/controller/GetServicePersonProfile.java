package com.mason.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.mason.bean.ServicePerson;
import com.mason.service.ServicePersonService;

/**
 * Servlet implementation class GetServicePersonProfile
 */
@WebServlet("/GetServicePersonProfile")
public class GetServicePersonProfile extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public GetServicePersonProfile() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String pagename = "/Edit_Service_Person.jsp",spid="",message="";
		ServicePerson sp=new ServicePerson();
		int page = 0;
		
		try
		{
			if(request.getParameter("page")!=null)
			{
				page = Integer.parseInt(request.getParameter("page"));
			}
			if(request.getParameter("spid")!=null)
			{
				spid=request.getParameter("spid");
				sp = new ServicePersonService().getServicePersonDetailsById(spid);
				request.setAttribute("servicePerson", sp);
				pagename="/Edit_Service_Person.jsp";
			}
			else
			{
				message = "Please Login to continue....";
				pagename="/login3.jsp";
			}
			
		}catch (Exception e) {
			// TODO: handle exception
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

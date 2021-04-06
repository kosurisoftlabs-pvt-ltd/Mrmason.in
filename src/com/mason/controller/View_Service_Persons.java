package com.mason.controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.mason.bean.ServicePerson;
import com.mason.dao.ServicePersonDAO;
import com.mason.dao.ServicePersonDAOImpl;

/**
 * Servlet implementation class View_Service_Persons
 */
@WebServlet("/View_Service_Persons")
public class View_Service_Persons extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public View_Service_Persons() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String servicetype = "",date = "",serviceproviderid="",pincode="",pagename = "",message = "";
		int page=1,noofRecords=0,numofpages=0,maxrowsperpage=5;
		ArrayList<ServicePerson> al=new ArrayList<ServicePerson>();
		HttpSession hs=request.getSession();
		ServicePersonDAO sdao = new ServicePersonDAOImpl();
		ServicePerson sp=new ServicePerson();
		try
		{
			if(hs.getAttribute("referenceid")!=null)
			{
				serviceproviderid = hs.getAttribute("referenceid").toString();
				if(request.getParameter("page")!=null)
				{
					page = Integer.parseInt(request.getParameter("page"));
				}
				
				if(request.getParameter("servicetype")!=null)
				{
					servicetype = request.getParameter("servicetype");
				}
				else
				if(request.getAttribute("servicetype")!=null)
				{
					servicetype = request.getAttribute("servicetype").toString();
				}	
				
				/*if(request.getParameter("pincode")!=null)
				{
					pincode = request.getParameter("pincode");
				}
				else
				if(request.getAttribute("pincode")!=null)
				{
					pincode = request.getAttribute("pincode").toString();
				}
				*/
				
				
				if(request.getParameter("Work_Location")!=null)
				{
					pincode = request.getParameter("Work_Location");
				}
				else
				if(request.getAttribute("Work_Location")!=null)
				{
					pincode = request.getAttribute("Work_Location").toString();
					
				}
				sp.setSERVICE_TYPE(servicetype);
				sp.setPINCODE(pincode);
				sp.setREGISTERED_BY(serviceproviderid);
				al=sdao.getServicePersonDetailsByServiceProvider(sp, ((page-1)*maxrowsperpage), maxrowsperpage);
				noofRecords=sdao.getNoOfRecords();
				if(noofRecords%maxrowsperpage>0){				
					numofpages=(noofRecords/maxrowsperpage)+1;
				}
				else
				{
					numofpages=noofRecords/maxrowsperpage;
				}
					request.setAttribute("servicePersons", al);
					request.setAttribute("numofpages", numofpages);
					request.setAttribute("noofrecords", noofRecords);
					request.setAttribute("currentPage", page);
					pagename="/View_Service_Persons.jsp";
				
			}
			else
			{
				message = "Please Login to continue....";
				pagename="/login3.jsp";
			}
			
		}catch (Exception e) {
			e.printStackTrace();
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

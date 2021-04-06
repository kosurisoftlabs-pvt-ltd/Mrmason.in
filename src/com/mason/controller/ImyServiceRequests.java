package com.mason.controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.mason.dao.ServiceDAO;
import com.mason.dao.ServiceDAOImpl;

/**
 * Servlet implementation class ImyServiceRequests
 */
@WebServlet("/ImyServiceRequests")
public class ImyServiceRequests extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ImyServiceRequests() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String date="",pagename="";
		String service="",reqDate = "";
		int page=1,noofRecords=0,numofpages=0,maxrowsperpage=5;
		HttpSession hs=request.getSession();
		ArrayList<com.mason.bean.ServiceRequest> al = new ArrayList<com.mason.bean.ServiceRequest>();
		 com.mason.bean.ServiceRequest sr=new com.mason.bean.ServiceRequest();
		try
		{
			
			if(hs.getAttribute("referenceid")!=null)
			{
				sr.setREQUESTED_BY(hs.getAttribute("referenceid").toString());
				if(request.getParameter("page")!=null)
	        	{
	        		page=Integer.parseInt(request.getParameter("page"));
	        	}
				if(request.getParameter("date")!=null)
				{
					date=request.getParameter("date");
					service=request.getParameter("service");
					reqDate = request.getParameter("reqDate");
				}
				else
				if(request.getAttribute("date")!=null)
				{
					date=request.getAttribute("date").toString();
					service=request.getAttribute("service").toString();
					reqDate = request.getAttribute("reqDate").toString();
				}	
				sr.setSERVICE_NAME(service);
				sr.setSERVICE_DATE(reqDate);
				ServiceDAO sdao = new ServiceDAOImpl();
				al=sdao.getServiceRequestByUser(sr, ((page-1)*maxrowsperpage), maxrowsperpage);
				noofRecords=sdao.getNoOfRecords();
				if(noofRecords%maxrowsperpage>0){				
				numofpages=(noofRecords/maxrowsperpage)+1;
			}
			else
			{
				numofpages=noofRecords/maxrowsperpage;
			}
				request.setAttribute("serviceRequests", al);
				request.setAttribute("numofpages", numofpages);
				request.setAttribute("noofrecords", noofRecords);
				request.setAttribute("currentPage", page);
				if(hs.getAttribute("usertype").toString().equals("I"))
				{
					pagename="/ImyServiceRequests.jsp";
				}
				else
				if(hs.getAttribute("usertype").toString().equals("U"))
				{
					pagename="/SPmyServiceRequests.jsp";
				}
				//SPmyServiceRequests.jsp
			}
			else
			{
				request.setAttribute("message", "Please login..");
				pagename="/login3.jsp";
			}
		}catch (Exception e) {
			// TODO: handle exception
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

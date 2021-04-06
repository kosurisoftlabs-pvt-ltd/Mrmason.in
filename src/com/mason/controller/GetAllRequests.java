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
 * Servlet implementation class GetAllRequests
 */
@WebServlet("/GetAllRequests")
public class GetAllRequests extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public GetAllRequests() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
//		./user_new_requestsA.jsp
		String servicetype = "",date = "",status="",serviceproviderid="",pagename = "",message = "";
		int page=1,noofRecords=0,numofpages=0,maxrowsperpage=5;
		HttpSession hs=request.getSession();
		com.mason.bean.ServiceRequest sr = new com.mason.bean.ServiceRequest();
		ArrayList<com.mason.bean.ServiceRequest> al=new ArrayList<com.mason.bean.ServiceRequest>();
		ServiceDAO sdao = new ServiceDAOImpl();
		try
		{
			if(hs.getAttribute("referenceid")!=null)
			{
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
				if(request.getParameter("reqDate")!=null)
				{
					date = request.getParameter("reqDate");
				}
				else
				if(request.getAttribute("reqDate")!=null)
				{
					servicetype = request.getAttribute("reqDate").toString();
				}
				if(request.getParameter("status")!=null)
				{
					status = request.getParameter("status");
				}else
				if(request.getAttribute("status")!=null)
				{
					servicetype = request.getAttribute("status").toString();
				}

				sr.setSERVICE_NAME(servicetype);
				sr.setSERVICE_DATE(date);
				sr.setSTATUS(status);
				
				al=sdao.getAllServiceRequestsByCriteria(sr, ((page-1)*maxrowsperpage), maxrowsperpage);
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
					pagename="/user_new_requestsA.jsp";
				
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

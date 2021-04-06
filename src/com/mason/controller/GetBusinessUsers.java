package com.mason.controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.mason.bean.User;
import com.mason.dao.UserDAO;
import com.mason.dao.UserDAOImpl;

/**
 * Servlet implementation class GetBusinessUsers
 */
@WebServlet("/GetBusinessUsers")
public class GetBusinessUsers extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public GetBusinessUsers() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String pincode="",city="",fromdate="",todate="",pagename="",message="";
		int page=1,noofRecords=0,numofpages=0,maxrowsperpage=5;
		HttpSession session=request.getSession();
		UserDAO udao= new UserDAOImpl();
		User u=new User();
		ArrayList<User> al=new ArrayList<User>();
		try
		{
			if(session.getAttribute("referenceid")!=null)
			{
				if(request.getParameter("page")!=null)
				{
					page = Integer.parseInt(request.getParameter("page"));
				}
				if(request.getParameter("pincodeNo")!=null)
				{
					pincode = request.getParameter("pincodeNo");
				}
				else
				if(request.getAttribute("pincodeNo")!=null)
				{
					pincode = request.getAttribute("pincodeNo").toString();
				}	
				
				if(request.getParameter("city")!=null)
				{
					city = request.getParameter("city");
				}
				else
				if(request.getAttribute("city")!=null)
				{
					city = request.getAttribute("city").toString();
				}
				
				if(request.getParameter("fromdate")!=null)
				{
					fromdate = request.getParameter("fromdate");
				}
				else
				if(request.getAttribute("fromdate")!=null)
				{
					fromdate = request.getAttribute("fromdate").toString();
				}
				
				if(request.getParameter("todate")!=null)
				{
					todate = request.getParameter("todate");
				}
				else
				if(request.getAttribute("todate")!=null)
				{
					todate = request.getAttribute("todate").toString();
				}
				
				u.setPincodeNo(pincode);
				u.setCity(city);
				u.setRegistrationDate(fromdate);
				u.setPassword(todate);
				al=udao.getUsersDetails(u, ((page-1)*maxrowsperpage), maxrowsperpage);
				noofRecords=udao.getNoOfRecords();
				if(noofRecords%maxrowsperpage>0){				
					numofpages=(noofRecords/maxrowsperpage)+1;
				}
				else
				{
					numofpages=noofRecords/maxrowsperpage;
				}
				request.setAttribute("userDetails",al);
				request.setAttribute("numofpages", numofpages);
				request.setAttribute("noofrecords", noofRecords);
				request.setAttribute("currentPage", page);
				pagename="/ViewBusinessUUsers.jsp";
			}
			else
			{
				pagename = "/login3.jsp";
				message = "Please Login to Continue.....";
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

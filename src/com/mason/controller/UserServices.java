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
 * Servlet implementation class UserServices
 */
@WebServlet("/UserServices")
public class UserServices extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public UserServices() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String servicetype = "",date = "",serviceproviderid="",pincode="",pagename = "",message = "";
		int page=1,noofRecords=0,numofpages=0,maxrowsperpage=5;
		ArrayList<com.mason.bean.UserServices> al=new ArrayList<com.mason.bean.UserServices>();
		HttpSession hs=request.getSession();
		ServiceDAO sdao = new ServiceDAOImpl();
		com.mason.bean.UserServices us=new com.mason.bean.UserServices();
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
				}*/
				
				
				
				if(request.getParameter("pincode")!=null)
				{
					pincode = request.getParameter("pincode");
				}
				else
				if(request.getAttribute("pincode")!=null)
				{
					pincode = request.getAttribute("pincode").toString();
				}
				us.setUSER_ID(serviceproviderid);
				us.setSERVICE_TYPE(servicetype);
				/*us.setPINCODE(pincode);*/
				us.setPINCODE(pincode);
				System.out.println("User REquest : "+us);
				al=sdao.getSPServices(us, ((page-1)*maxrowsperpage), maxrowsperpage);
				noofRecords=sdao.getNoOfRecords();
				if(noofRecords%maxrowsperpage>0){				
					numofpages=(noofRecords/maxrowsperpage)+1;
				}
				else
				{
					numofpages=noofRecords/maxrowsperpage;
				}
					request.setAttribute("userServices", al);
					request.setAttribute("numofpages", numofpages);
					request.setAttribute("noofrecords", noofRecords);
					request.setAttribute("currentPage", page);
					pagename="/usermyservices.jsp";
				
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

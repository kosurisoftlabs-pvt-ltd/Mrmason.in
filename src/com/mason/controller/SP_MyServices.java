package com.mason.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class SP_MyServices
 */
@WebServlet("/SP_MyServices")
public class SP_MyServices extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public SP_MyServices() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
		int buid = 0, page=1,noofRecords=0,numofpages=0,maxrowsperpage=5;
		String pagename = "", message  = "";
		String pincode="",userid="";
		
		HttpSession hs=request.getSession();
		try
		{
			if(hs.getAttribute("referenceid")!=null)
			{
				buid = Integer.parseInt(request.getParameter("buid"));
	//			al=udao.getUserBusinessDetails(us, ((page-1)*maxrowsperpage), maxrowsperpage);
	//			noofRecords=udao.getNoOfRecords();
				if(noofRecords%maxrowsperpage>0){				
					numofpages=(noofRecords/maxrowsperpage)+1;
				}
				else
				{
					numofpages=noofRecords/maxrowsperpage;
				}
				request.setAttribute("numofpages", numofpages);
				request.setAttribute("noofrecords", noofRecords);
				request.setAttribute("currentPage", page);
				pagename="/user_myservices.jsp";
			}
			else
			{
				message = "Please Login to continue....";
				pagename = "/login3.jsp";
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

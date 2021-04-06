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
import com.mason.bean.UserBusinessDetails;
import com.mason.dao.UserDAO;
import com.mason.dao.UserDAOImpl;

/**
 * Servlet implementation class GetBUBusinessDetails
 */
@WebServlet("/GetBUBusinessDetails")
public class GetBUBusinessDetails extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public GetBUBusinessDetails() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int buid = 0, page=1,noofRecords=0,numofpages=0,maxrowsperpage=5;
		String pagename = "", message  = "";
		HttpSession session = request.getSession();
		UserDAO udao = new UserDAOImpl();
		User us=new User();
		ArrayList<UserBusinessDetails> al=new ArrayList<UserBusinessDetails>();
		try
		{
			if(session.getAttribute("referenceid")!=null)
			{
				buid = Integer.parseInt(request.getParameter("buid"));
				us.setBod_seq_no(buid);
				al=udao.getUserBusinessDetails(us, ((page-1)*maxrowsperpage), maxrowsperpage);
				noofRecords=udao.getNoOfRecords();
				if(noofRecords%maxrowsperpage>0){				
					numofpages=(noofRecords/maxrowsperpage)+1;
				}
				else
				{
					numofpages=noofRecords/maxrowsperpage;
				}
				request.setAttribute("BUBusinessDetails",al);
				request.setAttribute("numofpages", numofpages);
				request.setAttribute("noofrecords", noofRecords);
				request.setAttribute("currentPage", page);
				pagename="/ViewBUBusinessDetails.jsp";
			}
			else
			{
				message = "Please Login to continue....";
				pagename = "/login3.jsp";
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

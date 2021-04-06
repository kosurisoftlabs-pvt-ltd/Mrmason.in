package com.mason.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class AdminProductsMassUpload
 */
@WebServlet("/AdminProductsMassUpload")
public class AdminProductsMassUpload extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AdminProductsMassUpload() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String pagename="";
		RequestDispatcher rd= getServletContext().getRequestDispatcher(pagename);
		String category = request.getParameter("category");
		
		if(category.equalsIgnoreCase("paints"))
		{
			pagename="/PaintsSpecsMassUpload";
			rd.forward(request, response);
		}
		else
		if(category.equalsIgnoreCase("cement"))
		{
			pagename="/CementSpecsMassUpload";
			rd.forward(request, response);
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

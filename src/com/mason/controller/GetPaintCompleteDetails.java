package com.mason.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.mason.bean.PaintsDetails;
import com.mason.service.ProductsService;

/**
 * Servlet implementation class GetPaintCompleteDetails
 */
@WebServlet("/GetPaintCompleteDetails")
public class GetPaintCompleteDetails extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public GetPaintCompleteDetails() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String pseqid = "";
		PaintsDetails pd = new PaintsDetails();
		try
		{
			pseqid = request.getParameter("pseqid");
			pd=new ProductsService().viewAPaintIndividualDetails(pseqid);
			request.setAttribute("PaintDetails", pd);
		}catch (Exception e) {
			e.printStackTrace();
		}
		getServletContext().getRequestDispatcher("/zoom.jsp").forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}

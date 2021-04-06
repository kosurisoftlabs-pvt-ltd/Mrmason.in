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
 * Servlet implementation class GetPaintsIndividualDetails
 */
@WebServlet("/GetPaintsIndividualDetails")
public class GetPaintsIndividualDetails extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public GetPaintsIndividualDetails() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String pseqid=request.getParameter("pseqid");
		String page= request.getParameter("page");
		PaintsDetails pd=new PaintsDetails();
		try
		{
			pd=new ProductsService().viewPaintIndividualDetails(pseqid);
		}catch (Exception e) {
			e.printStackTrace();
		}
		System.out.println(pd);
		request.setAttribute("paintDetails", pd);
		getServletContext().getRequestDispatcher("/user_update_product.jsp").forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}

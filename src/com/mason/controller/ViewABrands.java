package com.mason.controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.mason.bean.Brand;
import com.mason.service.CategoryService;

/**
 * Servlet implementation class ViewABrands
 */
@WebServlet("/ViewABrands")
public class ViewABrands extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ViewABrands() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		ArrayList<Brand> al=new ArrayList<Brand>();
		try
		{
			al = new CategoryService().viewAllBrands();
		}catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
		request.setAttribute("branddetails", al);
		getServletContext().getRequestDispatcher("/view_brands.jsp").forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}

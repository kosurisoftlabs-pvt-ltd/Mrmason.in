package com.mason.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.mason.bean.PaintsDetails;
import com.mason.service.ProductsService;

/**
 * Servlet implementation class AddPaintsMaterial
 */
@WebServlet("/AddPaintsMaterial")
public class AddPaintsMaterial extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AddPaintsMaterial() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		HttpSession hs=request.getSession();
		boolean b = false;
		String message = "",pagename="";
		PaintsDetails pd=new PaintsDetails();
		String specification[];
		try
		{
			if(hs.getAttribute("referenceid")!=null)
			{
			pd.setSKUID(request.getParameter("skuid"));
			pd.setCATEGORY(request.getParameter("productcategory"));
			pd.setSUBCATEGORY(request.getParameter("subcategory"));
			pd.setMANUFACTURER_NAME(request.getParameter("brandname"));
			pd.setSPECIAL_NAME(request.getParameter("specialname"));
			pd.setINTER_EXTER(request.getParameter("interexter"));
			pd.setWEIGHT(request.getParameter("weight"));
			pd.setAVAILABLE_COLORS(request.getParameter("availablecolors"));
			pd.setPRICE(request.getParameter("price"));
			pd.setDESCRIPTION(request.getParameter("description"));
			pd.setSPECIFICATION1(request.getParameter("specification"));
			specification =request.getParameterValues("city");
			for(int i=0;i<specification.length;i++)
			{
				if(i==0)
				{
					pd.setSPECIFICATION2(specification[i]);
				}
				if(i==1)
				{
					pd.setSPECIFICATION3(specification[i]);
				}
				if(i==2)
				{
					pd.setSPECIFICATION4(specification[i]);
				}
				if(i==3)
				{
					pd.setSPECIFICATION5(specification[i]);
				}
			}
			
			pd.setDISPLAY(request.getParameter("displaytype"));
			pd.setREFERENCE_ID(hs.getAttribute("referenceid").toString());
			
			message=new ProductsService().addProduct(pd);
			pagename="/user_addproduct.jsp";
			}
			else
			{
				message = "Please Login to continue....";
				pagename="/login3.jsp";
			}
			
		}catch (Exception e) {
			e.printStackTrace();
		}
		request.setAttribute("message", message);
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

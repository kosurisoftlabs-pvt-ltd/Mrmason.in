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
 * Servlet implementation class PaintMaterialUpdate
 */
@WebServlet("/PaintMaterialUpdate")
public class PaintMaterialUpdate extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public PaintMaterialUpdate() {
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
		String message = "";
		PaintsDetails pd=new PaintsDetails();
		try
		{
			pd.setPAINTS_SEQ_ID(Integer.parseInt(request.getParameter("pseqid")));
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
			pd.setSPECIFICATION1(request.getParameter("Specification1"));
			pd.setSPECIFICATION2(request.getParameter("Specification2"));
			pd.setSPECIFICATION3(request.getParameter("Specification3"));
			pd.setSPECIFICATION4(request.getParameter("Specification4"));
			pd.setSPECIFICATION5(request.getParameter("Specification5"));
			pd.setDISPLAY(request.getParameter("displaytype"));
			pd.setSTATUS(request.getParameter("status"));
			pd.setREFERENCE_ID(hs.getAttribute("referenceid").toString());
			
			b=new ProductsService().updatePaintDetails(pd);
			
			if(b)
			{
				message = "Update Successfull..";
			}
			else
			{
				message = "Update Failed. Please try again...";
			}

		}catch (Exception e) {
			e.printStackTrace();
		}
		request.setAttribute("message", message);
		getServletContext().getRequestDispatcher("/GetSPMaterialsDetails").forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}

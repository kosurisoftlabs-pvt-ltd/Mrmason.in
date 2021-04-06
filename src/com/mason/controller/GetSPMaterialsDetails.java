package com.mason.controller;

import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.mason.bean.PaintsDetails;
import com.mason.dao.CategoryDAO;
import com.mason.dao.CategoryDAOImpl;
import com.mason.dao.ProductsDAO;
import com.mason.dao.ProductsDAOImpl;

/**
 * Servlet implementation class GetSPMaterialsDetails
 */
@WebServlet("/GetSPMaterialsDetails")
public class GetSPMaterialsDetails extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public GetSPMaterialsDetails() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String productcategory = "",brand = "",serviceproviderid="",subcategory="",pagename = "",message = "";
		int page=1,noofRecords=0,numofpages=0,maxrowsperpage=5;
		HttpSession hs=request.getSession();
		ProductsDAO pdao = new ProductsDAOImpl();
		CategoryDAO cdao = new CategoryDAOImpl();
		HashMap<String,String> hm = new HashMap<String,String>();
		
		try
		{
			hm = cdao.getAllCategories();
			if(hs.getAttribute("referenceid")!=null)
			{
				serviceproviderid = hs.getAttribute("referenceid").toString();
				if(request.getParameter("page")!=null)
				{
					page = Integer.parseInt(request.getParameter("page"));
				}
				
				if(request.getAttribute("message")!=null)
				{
					request.setAttribute("message",request.getAttribute("message"));
				}
				
				if(request.getParameter("productcategory")!=null)
				{
					productcategory = request.getParameter("productcategory");
				}
				else
				if(request.getAttribute("productcategory")!=null)
				{
					productcategory = request.getAttribute("productcategory").toString();
				}	
				
				if(request.getParameter("subcategory")!=null)
				{
					subcategory = request.getParameter("subcategory");
				}
				else
				if(request.getAttribute("subcategory")!=null)
				{
					subcategory = request.getAttribute("subcategory").toString();
				}
				
				if(request.getParameter("brand")!=null)
				{
					brand = request.getParameter("brand");
				}
				else
				if(request.getAttribute("brand")!=null)
				{
					brand = request.getAttribute("brand").toString();
				}
				if(hm.get(productcategory).equalsIgnoreCase("paints"))
				{
					PaintsDetails pd = new PaintsDetails();
					pd.setCATEGORY(productcategory);
					pd.setSUBCATEGORY(subcategory);
					pd.setMANUFACTURER_NAME(brand);
					pd.setREFERENCE_ID(hs.getAttribute("referenceid").toString());
					ArrayList<PaintsDetails> al=pdao.viewSPPaintsDetails(pd, ((page-1)*maxrowsperpage), maxrowsperpage);
					noofRecords=pdao.getNoOfRecords();
					if(noofRecords%maxrowsperpage>0){				
						numofpages=(noofRecords/maxrowsperpage)+1;
					}
					else
					{
						numofpages=noofRecords/maxrowsperpage;
					}
					request.setAttribute("paintsDetails", al);
					pagename = "/viewSPPaintMaterial.jsp";
				}
					request.setAttribute("numofpages", numofpages);
					request.setAttribute("noofrecords", noofRecords);
					request.setAttribute("currentPage", page);
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

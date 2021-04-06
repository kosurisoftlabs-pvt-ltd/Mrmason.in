package com.mason.controller;

import java.io.IOException;
import java.io.InputStream;
import java.util.ArrayList;
import java.util.Base64;
import java.util.HashMap;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.commons.io.IOUtils;

import com.mason.bean.CementDetails;
import com.mason.bean.PaintsDetails;
import com.mason.bean.TilesDetails;
import com.mason.dao.ProductsDAO;
import com.mason.dao.ProductsDAOImpl;
import com.mason.service.CategoryService;

/**
 * Servlet implementation class getBuildingMaterials
 */
@WebServlet("/GetBuildingMaterials")
public class GetBuildingMaterials extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public GetBuildingMaterials() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String id="",category="",subcategory="",materialtype="",city="",brand="",pagename = "",message = "";
		int page=1,noofRecords=0,numofpages=0,maxrowsperpage=15;
		HttpSession hs=request.getSession();
		PaintsDetails pd=new PaintsDetails();
		CementDetails cd=new CementDetails();
		TilesDetails td=new TilesDetails();
		ProductsDAO pdao = new ProductsDAOImpl();	
		HashMap<String,String> chm = new HashMap<String,String>();
		try
		{
			chm = new CategoryService().getAllCategories();
			if(request.getParameter("productcategory")!=null)
			{
				category = request.getParameter("productcategory");
			}
			
			
			if(request.getParameter("page")!=null)
			{
				page = Integer.parseInt(request.getParameter("page"));
			}
			if(request.getParameter("productcategory")!=null)
			{
				category = request.getParameter("productcategory");
			}
			if(request.getParameter("subcategory")!=null)
			{
				subcategory = request.getParameter("subcategory");
			}
			if(request.getParameter("brand")!=null)
			{
				brand = request.getParameter("brand");
			}
			
			
			
			/*if(request.getParameter("materialtype")!=null)
			{
				materialtype = request.getParameter("materialtype");
			}
			if(request.getParameter("city")!=null)
			{
				city = request.getParameter("city");
			}*/
			
			pd.setCATEGORY(category);
			pd.setSUBCATEGORY(subcategory);
			pd.setMANUFACTURER_NAME(brand);
			cd.setCATEGORY(category);
			cd.setSUBCATEGORY(subcategory);
			cd.setMANUFACTURER_NAME(brand);
			td.setCATEGORY(category);
			td.setSUBCATEGORY(subcategory);
			td.setMANUFACTURER_NAME(brand);
			/*pd.setINTER_EXTER(materialtype);
			pd.setSPECIAL_NAME(city);*/
			
			if(hs.getAttribute("referenceid")!=null)
			{
				id = hs.getAttribute("referenceid").toString();
				
				if(chm.get(category).equalsIgnoreCase("Paints"))
				{
					ArrayList<PaintsDetails> al=new ArrayList<PaintsDetails>();
					al=pdao.viewASPPaintsDetails(pd, ((page-1)*maxrowsperpage), maxrowsperpage);
					for(int i=0;i<al.size();i++)
					{
						InputStream i1s =getServletContext().getResourceAsStream("/images/ServiceImage.png");
						PaintsDetails pdi = al.get(i);
						if(pdi.getPAINTSIMAGE().length()<=0)
						{
							byte[] bytes = IOUtils.toByteArray(i1s);
							String photo1 = Base64.getEncoder().encodeToString(bytes);
					        pdi.setPAINTSIMAGE(photo1);
						}
					}
					noofRecords=pdao.getNoOfRecords();
					if(noofRecords%maxrowsperpage>0){				
						numofpages=(noofRecords/maxrowsperpage)+1;
					}
					else
					{
						numofpages=noofRecords/maxrowsperpage;
					}
						request.setAttribute("paintsDetails", al);
						request.setAttribute("numofpages", numofpages);
						request.setAttribute("noofrecords", noofRecords);
						request.setAttribute("currentPage", page);
						request.setAttribute("maxrowsperpage", maxrowsperpage);
						pagename="/searchmr.jsp";
				}else if(chm.get(category).equalsIgnoreCase("cement"))
				{
					ArrayList<CementDetails> al=new ArrayList<CementDetails>();
					al=pdao.viewASPCementDetails(cd, ((page-1)*maxrowsperpage), maxrowsperpage);
					System.out.println("Array Size : "+al.size());
					for(int i=0;i<al.size();i++)
					{
						InputStream i1s =getServletContext().getResourceAsStream("/images/ServiceImage.png");
						CementDetails cdi = al.get(i);
						if(cdi.getIMAGE().length()<=0)
						{
							byte[] bytes = IOUtils.toByteArray(i1s);
							String photo1 = Base64.getEncoder().encodeToString(bytes);
					        cdi.setIMAGE(photo1);
						}
					}
					
					noofRecords=pdao.getNoOfRecords();
					if(noofRecords%maxrowsperpage>0){				
						numofpages=(noofRecords/maxrowsperpage)+1;
					}
					else
					{
						numofpages=noofRecords/maxrowsperpage;
					}
						request.setAttribute("cementDetails", al);
						request.setAttribute("numofpages", numofpages);
						request.setAttribute("noofrecords", noofRecords);
						request.setAttribute("currentPage", page);
						request.setAttribute("maxrowsperpage", maxrowsperpage);
						pagename="/searchCement.jsp";
				}else if(chm.get(category).equalsIgnoreCase("tiles"))
				{
					ArrayList<TilesDetails> al=new ArrayList<TilesDetails>();
					al=pdao.viewASPTilesDetails(td, ((page-1)*maxrowsperpage), maxrowsperpage);
					System.out.println("Array Size : "+al.size());
					for(int i=0;i<al.size();i++)
					{
						InputStream i1s =getServletContext().getResourceAsStream("/images/ServiceImage.png");
						TilesDetails tdi = al.get(i);
						if(tdi.getIMAGE().length()<=0)
						{
							byte[] bytes = IOUtils.toByteArray(i1s);
							String photo1 = Base64.getEncoder().encodeToString(bytes);
					        tdi.setIMAGE(photo1);
						}
					}
					
					noofRecords=pdao.getNoOfRecords();
					if(noofRecords%maxrowsperpage>0){				
						numofpages=(noofRecords/maxrowsperpage)+1;
					}
					else
					{
						numofpages=noofRecords/maxrowsperpage;
					}
						request.setAttribute("tilesDetails", al);
						request.setAttribute("numofpages", numofpages);
						request.setAttribute("noofrecords", noofRecords);
						request.setAttribute("currentPage", page);
						request.setAttribute("maxrowsperpage", maxrowsperpage);
						pagename="/searchTiles.jsp";
				}
				else
				{
					message="No Category Found. Please try from the listed Category..";
					pagename="/index.jsp";
				}
				
			}
			else
			{
				if(chm.get(category).equalsIgnoreCase("Paints"))
				{
					ArrayList<PaintsDetails> al=new ArrayList<PaintsDetails>();
					al=pdao.viewASPPaintsDetails(pd, ((page-1)*maxrowsperpage), maxrowsperpage);
					System.out.println("ArraySize :"+al.size());
					for(int i=0;i<al.size();i++)
					{
						InputStream i1s =getServletContext().getResourceAsStream("/images/ServiceImage.png");
						PaintsDetails pdi = al.get(i);
						if(pdi.getPAINTSIMAGE().length()<=0)
						{
							byte[] bytes = IOUtils.toByteArray(i1s);
							String photo1 = Base64.getEncoder().encodeToString(bytes);
					        pdi.setPAINTSIMAGE(photo1);
						}
					}
					
					noofRecords=pdao.getNoOfRecords();
					if(noofRecords%maxrowsperpage>0){				
						numofpages=(noofRecords/maxrowsperpage)+1;
					}
					else
					{
						numofpages=noofRecords/maxrowsperpage;
					}
						request.setAttribute("paintsDetails", al);
						request.setAttribute("numofpages", numofpages);
						request.setAttribute("noofrecords", noofRecords);
						request.setAttribute("currentPage", page);
						request.setAttribute("maxrowsperpage", maxrowsperpage);
						pagename="/searchmr.jsp";
				}
				else if(chm.get(category).equalsIgnoreCase("cement"))
				{
					ArrayList<CementDetails> al=new ArrayList<CementDetails>();
					al=pdao.viewASPCementDetails(cd, ((page-1)*maxrowsperpage), maxrowsperpage);
					System.out.println("Array Size : "+al.size());
					for(int i=0;i<al.size();i++)
					{
						InputStream i1s =getServletContext().getResourceAsStream("/images/ServiceImage.png");
						CementDetails cdi = al.get(i);
						if(cdi.getIMAGE().length()<=0)
						{
							byte[] bytes = IOUtils.toByteArray(i1s);
							String photo1 = Base64.getEncoder().encodeToString(bytes);
					        cdi.setIMAGE(photo1);
						}
					}
					
					noofRecords=pdao.getNoOfRecords();
					if(noofRecords%maxrowsperpage>0){				
						numofpages=(noofRecords/maxrowsperpage)+1;
					}
					else
					{
						numofpages=noofRecords/maxrowsperpage;
					}
						request.setAttribute("cementDetails", al);
						request.setAttribute("numofpages", numofpages);
						request.setAttribute("noofrecords", noofRecords);
						request.setAttribute("currentPage", page);
						request.setAttribute("maxrowsperpage", maxrowsperpage);
						pagename="/searchCement.jsp";
				}else if(chm.get(category).equalsIgnoreCase("tiles"))
				{
					ArrayList<TilesDetails> al=new ArrayList<TilesDetails>();
					al=pdao.viewASPTilesDetails(td, ((page-1)*maxrowsperpage), maxrowsperpage);
					System.out.println("Array Size : "+al.size());
					for(int i=0;i<al.size();i++)
					{
						InputStream i1s =getServletContext().getResourceAsStream("/images/ServiceImage.png");
						TilesDetails tdi = al.get(i);
						if(tdi.getIMAGE().length()<=0)
						{
							byte[] bytes = IOUtils.toByteArray(i1s);
							String photo1 = Base64.getEncoder().encodeToString(bytes);
					        tdi.setIMAGE(photo1);
						}
					}
					
					noofRecords=pdao.getNoOfRecords();
					if(noofRecords%maxrowsperpage>0){				
						numofpages=(noofRecords/maxrowsperpage)+1;
					}
					else
					{
						numofpages=noofRecords/maxrowsperpage;
					}
						request.setAttribute("tilesDetails", al);
						request.setAttribute("numofpages", numofpages);
						request.setAttribute("noofrecords", noofRecords);
						request.setAttribute("currentPage", page);
						request.setAttribute("maxrowsperpage", maxrowsperpage);
						pagename="/searchTiles.jsp";
				}
				else
				{
					message="No Category Found. Please try from the listed Category..";
					pagename="/index.jsp";
				}
			}
		}
		catch (Exception e) {
			e.printStackTrace();
		}
		System.out.println("Page name : "+pagename);
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

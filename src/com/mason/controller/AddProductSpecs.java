package com.mason.controller;

import java.io.IOException;
import java.io.InputStream;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.servlet.http.Part;

import com.mason.bean.PaintsDetails;
import com.mason.service.ProductsService;

/**
 * Servlet implementation class AddProductSpecs
 */
@WebServlet("/AddProductSpecs")
@javax.servlet.annotation.MultipartConfig
public class AddProductSpecs extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AddProductSpecs() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		PaintsDetails pd=new PaintsDetails();
		HttpSession hs=request.getSession();
		InputStream is=null;
		String pagename="",message="",specifications[];
		try
		{
			if(hs.getAttribute("referenceid")!=null)
			{
				pd.setCATEGORY(request.getParameter("productcategory"));
				pd.setSUBCATEGORY(request.getParameter("subcategory"));
				pd.setSPECIAL_NAME(request.getParameter("specialname"));
				pd.setINTER_EXTER(request.getParameter("painttype"));
				pd.setMANUFACTURER_NAME(request.getParameter("brandname"));
				pd.setSKUID(request.getParameter("skuid"));
				pd.setAVAILABLE_COLORS(request.getParameter("availablecolors")); 
				pd.setWEIGHT(request.getParameter("availableweights"));
				specifications=request.getParameterValues("specification");
				
				for(int i=0;i<specifications.length;i++)
				{
					if(i==0)
					{
						pd.setSPECIFICATION1(specifications[i]);
					}
					if(i==1)
					{
						pd.setSPECIFICATION2(specifications[i]);
					}
					if(i==2)
					{
						pd.setSPECIFICATION3(specifications[i]);
					}
					if(i==3)
					{
						pd.setSPECIFICATION4(specifications[i]);
					}
					if(i==4)
					{
						pd.setSPECIFICATION5(specifications[i]);
					}
					if(i==5)
					{
						pd.setSPECIFICATION6(specifications[i]);
					}
					if(i==6)
					{
						pd.setSPECIFICATION7(specifications[i]);
					}
					if(i==7)
					{
						pd.setSPECIFICATION8(specifications[i]);
					}
					if(i==8)
					{
						pd.setSPECIFICATION9(specifications[i]);
					}
					if(i==9)
					{
						pd.setSPECIFICATION10(specifications[i]);
					}
					if(i==10)
					{
						pd.setSPECIFICATION11(specifications[i]);
					}
					if(i==11)
					{
						pd.setSPECIFICATION12(specifications[i]);
					}
				}
				
				Part photo = request.getPart("image");
				ServletContext context = getServletContext();
			    InputStream i1s = context.getResourceAsStream("/images/ServiceImage.png");
//				System.out.println(getServletContext().getRealPath("/images/ServiceImage.png"));
//				System.out.println("photo size : "+photo.getSize());
				if(photo.getSize()>0)
				{
//					System.out.println("photo exists");
					is = photo.getInputStream();	
				}
				else
				{
//					System.out.println("photo doesnt exists");
//					System.out.println(getClass().getResourceAsStream("/images/ServiceImage.png"));
					is=i1s;
					//list.add(resizeImage(ImageIO.read(getClass().getResourceAsStream("c.png"))));
				}
				pd.setIMAGE(is);
				if(pd.getCATEGORY().equals("Cement"))
				{
					message = new ProductsService().addPaintSpecs(pd);
				}
				else
				if(pd.getCATEGORY().equals("Paints"))
				{
					message = new ProductsService().addPaintSpecs(pd);
				}
				else
				{
					message = new ProductsService().addPaintSpecs(pd);
				}
				pagename="/Addproduct.jsp";
			}else
			{
				
				pagename="/login3.jsp";
				message="Please Login to continue....";
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

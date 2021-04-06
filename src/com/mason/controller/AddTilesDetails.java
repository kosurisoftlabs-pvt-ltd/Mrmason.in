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

import com.mason.bean.TilesDetails;
import com.mason.service.ProductsService;

/**
 * Servlet implementation class AddTilesDetails
 */
@WebServlet("/AddTilesDetails")
@javax.servlet.annotation.MultipartConfig
public class AddTilesDetails extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AddTilesDetails() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		TilesDetails td=new TilesDetails();
		HttpSession hs=request.getSession();
		InputStream is=null;
		String pagename="",message="",specifications[];
		try
		{
			if(hs.getAttribute("referenceid")!=null)
			{
				td.setCATEGORY(request.getParameter("productcategory"));
				td.setSUBCATEGORY(request.getParameter("subcategory"));
				td.setMANUFACTURER_NAME(request.getParameter("brandname"));
				td.setSPECIAL_NAME(request.getParameter("specialname"));
				td.setTILES_TYPE(request.getParameter("cementtype"));
				td.setNOMINAL_SIZE(request.getParameter("nominalSize"));
				td.setLENGTH(request.getParameter("length"));
				td.setWIDTH(request.getParameter("width"));
				td.setTHICKNESS(request.getParameter("thickness"));
				td.setSKUID(request.getParameter("skuid"));
				
				td.setDESCRIPTION(request.getParameter("description"));
				specifications=request.getParameterValues("specification");
				
				for(int i=0;i<specifications.length;i++)
				{
					if(i==0)
					{
						td.setSPECIFICATION1(specifications[i]);
					}
					if(i==1)
					{
						td.setSPECIFICATION2(specifications[i]);
					}
					if(i==2)
					{
						td.setSPECIFICATION3(specifications[i]);
					}
					if(i==3)
					{
						td.setSPECIFICATION4(specifications[i]);
					}
					if(i==4)
					{
						td.setSPECIFICATION5(specifications[i]);
					}
					if(i==5)
					{
						td.setSPECIFICATION6(specifications[i]);
					}
					if(i==6)
					{
						td.setSPECIFICATION7(specifications[i]);
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
				td.setTilesImage(is);
				message = new ProductsService().addTilesDetails(td);
				pagename="/AddTilesproduct.jsp";
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

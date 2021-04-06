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

import com.mason.bean.CementDetails;
import com.mason.service.ProductsService;

/**
 * Servlet implementation class AddCementProduct
 */
@WebServlet("/AddCementProduct")
@javax.servlet.annotation.MultipartConfig
public class AddCementProduct extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AddCementProduct() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		CementDetails cd=new CementDetails();
		HttpSession hs=request.getSession();
		InputStream is=null;
		String pagename="",message="",specifications[];
		try
		{
			if(hs.getAttribute("referenceid")!=null)
			{
				cd.setCATEGORY(request.getParameter("categoryid"));
				cd.setSUBCATEGORY(request.getParameter("subcategory"));
				cd.setSPECIAL_NAME(request.getParameter("specialname"));
				cd.setCEMENT_TYPE(request.getParameter("cementtype"));
				cd.setMANUFACTURER_NAME(request.getParameter("brandname"));
				cd.setSKUID(request.getParameter("skuid"));
				cd.setMASS(request.getParameter("mass"));
				cd.setWEIGHT(request.getParameter("availableweights"));
				cd.setDESCRIPTION(request.getParameter("description"));
				specifications=request.getParameterValues("specification");
				
				for(int i=0;i<specifications.length;i++)
				{
					if(i==0)
					{
						cd.setSPECIFICATION1(specifications[i]);
					}
					if(i==1)
					{
						cd.setSPECIFICATION2(specifications[i]);
					}
					if(i==2)
					{
						cd.setSPECIFICATION3(specifications[i]);
					}
					if(i==3)
					{
						cd.setSPECIFICATION4(specifications[i]);
					}
					if(i==4)
					{
						cd.setSPECIFICATION5(specifications[i]);
					}
					if(i==5)
					{
						cd.setSPECIFICATION6(specifications[i]);
					}
					if(i==6)
					{
						cd.setSPECIFICATION7(specifications[i]);
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
				cd.setCEMENT_IMAGE(is);
				message = new ProductsService().addCementDetails(cd);
				pagename="/AddCementproduct.jsp";
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

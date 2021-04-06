package com.mason.controller;

import java.io.IOException;
import java.io.InputStream;
import java.util.Base64;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.io.IOUtils;

import com.mason.bean.PaintsDetails;
import com.mason.service.ProductsService;

/**
 * Servlet implementation class GetAPaintsIndividualDetails
 */
@WebServlet("/getAPaintsIndividualDetails")
public class GetAPaintsIndividualDetails extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public GetAPaintsIndividualDetails() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String pseqid=request.getParameter("pseqid");
		String page= request.getParameter("page");
		PaintsDetails pd=new PaintsDetails();
		try
		{
			InputStream i1s =getServletContext().getResourceAsStream("/images/ServiceImage.png");
			pd=new ProductsService().viewAPaintIndividualDetails(pseqid);
				if(pd.getPAINTSIMAGE().length()<=0)
				{
					byte[] bytes = IOUtils.toByteArray(i1s);
					String photo1 = Base64.getEncoder().encodeToString(bytes);
			        pd.setPAINTSIMAGE(photo1);
				}
		}catch (Exception e) {
			e.printStackTrace();
		}
		request.setAttribute("paintDetails", pd);
		getServletContext().getRequestDispatcher("/admin_update_paint_product.jsp").forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}

package com.mason.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.mason.bean.UserBusinessDetails;
import com.mason.service.UserService;

/**
 * Servlet implementation class AddNewBusiness
 */
@WebServlet("/AddNewBusiness")
public class AddNewBusiness extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AddNewBusiness() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String message ="",btype="",pagename="";
		HttpSession session=request.getSession();
		
		
		try
		{
			if(session.getAttribute("referenceid")!=null)
			{
				btype=request.getParameter("businessType");
				if(btype.equals("Manufacturer"))
				{
					btype="M";
					pagename="/user_manufacturer.jsp";
				}
				else
				if(btype.equals("Distributor"))
				{
					btype="D";
					pagename="/user_distributor.jsp";
				}
				else
				if(btype.equals("Dealer"))
				{
					btype="E";
					pagename="/user_dealer.jsp";
				}
				else
				if(btype.equals("Retailer"))
				{
					btype="R";
					pagename="/user_retailer.jsp";
				}
				UserBusinessDetails ubd=new UserBusinessDetails();
				ubd.setBUSINESS_NAME(request.getParameter("businessname"));
				ubd.setBUSINESS_TYPE(btype);
				ubd.setGSTIN(request.getParameter("gstno"));
				ubd.setSTREET(request.getParameter("street"));
				ubd.setDNO(request.getParameter("dno"));
				ubd.setCITY(request.getParameter("city"));
				ubd.setPINCODE(request.getParameter("pincode"));
				ubd.setSTATE(request.getParameter("state"));
				ubd.setSTATUS("A");
				ubd.setLANDMARK(request.getParameter("Landmark"));
				
				ubd.setREFERENCE_ID(session.getAttribute("referenceid").toString());
				message = new UserService().getUserObject().addUserBusinessDetails(ubd);
			}
			else
			{
				pagename = "/login3.jsp";
				message = "Please Login to Continue.....";
			}
		}catch (Exception e) {
			// TODO: handle exception
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

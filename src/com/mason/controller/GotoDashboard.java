package com.mason.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class GotoDashboard
 */
@WebServlet("/GotoDashboard")
public class GotoDashboard extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public GotoDashboard() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String username="",usertypes="",referenceid="",pagename="/LoginCheck.jsp",usertype="";
		HttpSession hs=request.getSession(false);
		try {
//			System.out.println("is new"+hs.isNew());
			if(hs!=null)
			{
				//System.out.println("Session Exists");
				referenceid=(String)hs.getAttribute("referenceid");
//				System.out.println("Mahesh "+referenceid);
				usertypes=(String)hs.getAttribute("usertypes");
//				System.out.println("Mahesh1 "+usertypes);
				username=(String)hs.getAttribute("username");
//				System.out.println("Mahesh2 "+username);
				usertype=(String)hs.getAttribute("usertype");
//				System.out.println("Mahesh3 "+usertype);
				
				if(usertype.equals("A"))
				{
					pagename="./UserHomepage.jsp";
				}
				else
				if(usertype.equals("U"))
				{
					pagename="./user_dashboard.jsp";
				}
				else
				if(usertype.equals("I"))
				{
					pagename="./individual_dashboard.jsp";
				}
				else
				{
					request.setAttribute("message", "Please Login to Continue...");
					pagename="./LoginCheck.jsp";
				}
			}
			else
			{
				System.out.println("Session doesn't Exists");
				request.setAttribute("message", "Please Login to Continue...");
				pagename="./LoginCheck.jsp";
			}
			
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}	
//   		System.out.println("User name "+username);
//   		System.out.println("user types "+usertypes);
//   		System.out.println("reference id "+referenceid);
//   		System.out.println("page name "+pagename);
//   		System.out.println("usertype "+usertype);
   		
//		getServletContext().getRequestDispatcher(pagename).forward(request, response);
   		response.sendRedirect(pagename);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}

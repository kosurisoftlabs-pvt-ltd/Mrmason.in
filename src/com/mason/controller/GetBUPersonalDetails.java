package com.mason.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.mason.bean.User;
import com.mason.service.UserService;

/**
 * Servlet implementation class GetBUPersonalDetails
 */
@WebServlet("/GetBUPersonalDetails")
public class GetBUPersonalDetails extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public GetBUPersonalDetails() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		int buid = 0;
		String pagename = "", message  = "";
		HttpSession session = request.getSession();
		User u = new User();
		try
		{
			if(session.getAttribute("referenceid")!=null)
			{
				buid = Integer.parseInt(request.getParameter("buid"));
				u.setBod_seq_no(buid);
				u=new UserService().viewUserProfile(u);
				request.setAttribute("userDetails", u);
				pagename = "/BUPesonalDetails.jsp";
			}
			else
			{
				message = "Please Login to continue....";
				pagename = "/login3.jsp";
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

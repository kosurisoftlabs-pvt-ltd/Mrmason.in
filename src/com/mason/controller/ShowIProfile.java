package com.mason.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.mason.bean.User;

/**
 * Servlet implementation class ShowIProfile
 */
@WebServlet("/ShowIProfile")
public class ShowIProfile extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ShowIProfile() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		HttpSession session = request.getSession();
		User user=new User();
		
		user.setBod_seq_no(Integer.parseInt(session.getAttribute("referenceid").toString()));
		try
		{
			user=new com.mason.service.UserService().viewUserProfile(user);
		}catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
		request.setAttribute("userdetails", user);
		getServletContext().getRequestDispatcher("/useriProfileview.jsp").forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}

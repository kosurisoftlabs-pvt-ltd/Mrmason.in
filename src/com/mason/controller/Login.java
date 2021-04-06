package com.mason.controller;

import java.io.IOException;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.mason.bean.LoginDetails;
import com.mason.service.LoginService;

/**
 * Servlet implementation class Login
 */
@WebServlet("/Login")
public class Login extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Login() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String email=request.getParameter("email");
		String password=request.getParameter("password");
		String message=null,pagename=null;
		LoginService us=new LoginService();
		LoginDetails login=new LoginDetails();
		HttpSession hs=request.getSession();
		login.setUSERNAME(email);
		login.setPASSWORD(password);
		Map<String,String> map = new HashMap<String,String>();
		try
		{
			map = us.userlogin(login);
			if(map.get("loseqid").equals("0"))
			{
				message=map.get("email")+" Not yet registered. Please <a href='./register.jsp'>Register Here</a>";
				pagename="/login3.jsp";
			}
			else
			if(map.get("loseqid").equals("-1"))
			{
				message="Email Id & Mobile No. Not yet Verified.<br>A verification link has been sent to your emailid and OTP to your Mobile No.<br>";
				pagename="/LoginCheck.jsp";
			}
			else
			if(map.get("loseqid").equals("2"))
			{
				hs.setAttribute("referenceid", map.get("referenceid"));
				hs.setAttribute("usertypes", map.get("usertypes"));
				hs.setAttribute("username", email);
				hs.setAttribute("usertype", map.get("usertype"));
				message="Mobile No. not yet verified. OTP has been sent to your Mobile No. Please check and Verify...";
				pagename="/index.jsp";
			}
			else
			if(map.get("loseqid").equals("3"))
			{
				hs.setAttribute("referenceid", map.get("referenceid"));
				hs.setAttribute("usertypes", map.get("usertypes"));
				hs.setAttribute("username", email);
				hs.setAttribute("usertype", map.get("usertype"));
				message="Email ID not yet verified. Verification Mail has been sent to your Email ID. Please check and Verify...";
				pagename="/index.jsp";
			}
			else
			if(map.get("loseqid").equals("4"))
			{
				message=map.get("email")+" has been Blocked by Administration. Please <a href='#'>Contact Admin</a>";
				pagename="/LoginCheck.jsp";
			}
			else
			if(map.get("loseqid").equals("5"))
			{
				message=map.get("email")+" Password mismatch...";
				pagename="/LoginCheck.jsp";
			}
			else
			if(map.get("loseqid").equals("6"))
			{
				message="Mobile No. Not yet Verified.";
				pagename="/LoginCheck.jsp";
			}
			else
			if(map.get("loseqid").equals("7"))
			{
				message="Email ID. Not yet verified..";
				pagename="/LoginCheck.jsp";
			}
			else
			{
				message="Login Success";
				hs.setAttribute("referenceid", map.get("referenceid"));
				hs.setAttribute("usertypes", map.get("usertypes"));
				hs.setAttribute("username", email);
				hs.setAttribute("usertype", map.get("usertype"));

				/*System.out.println(hs.getAttribute("referenceid"));
				System.out.println(hs.getAttribute("usertypes"));
				System.out.println(hs.getAttribute("username"));
				System.out.println(hs.getAttribute("usertype"));*/
				pagename="/index.jsp";
			}
			
		}catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
		request.setAttribute("message", message);
		request.setAttribute("usermap", map);
		/*System.out.println("Message : "+message);
		System.out.println("Map items : "+map);
		System.out.println("page name : "+pagename);*/
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

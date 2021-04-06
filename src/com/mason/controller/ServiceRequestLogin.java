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
import com.mason.service.ServicesService;

/**
 * Servlet implementation class ServiceRequestLogin
 */
@WebServlet("/ServiceRequestLogin")
public class ServiceRequestLogin extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ServiceRequestLogin() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		com.mason.bean.ServiceRequest sr=new com.mason.bean.ServiceRequest();
		String message = "",pagename="";
		HttpSession hs=request.getSession();
		String userid= "";
		sr.setSERVICE_NAME(request.getParameter("service"));
		/*sr.setREQ_PINCODE(request.getParameter("pincode1"));*/         /* commented by mahesh kosuri*/  
		sr.setREQ_PINCODE(request.getParameter("WORK_LOCATION"));  /**added by mahesh kosuri*/
		
		sr.setDESCRIPTION(request.getParameter("description"));
		sr.setSERVICE_DATE(request.getParameter("reqDate"));
		sr.setSTATUS("-1");
		LoginDetails login=new LoginDetails();
		login.setUSERNAME(request.getParameter("email"));
		login.setPASSWORD(request.getParameter("password"));
		Map<String, String> map=new HashMap<String,String>();
		try
		{
			map=new LoginService().getLoginObject().userLogin(login);
			if(map.get("loseqid").equals("0"))
			{
				message=map.get("email")+" Not yet registered. Please <a href='./register.jsp'>Register Here</a>";
				pagename="/login1.jsp";
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
				hs.setAttribute("username", login.getUSERNAME());
				sr.setREQUESTED_BY(map.get("referenceid"));
				
				message = new ServicesService().addServiceRequest(sr);
				message+="<br>Mobile No. not yet verified. OTP has been sent to your Mobile No. Please check and Verify.To validate <a href=''>Validate</a>";
				pagename="/ImyServiceRequests.jsp";
			}
			else
			if(map.get("loseqid").equals("3"))
			{
				hs.setAttribute("referenceid", map.get("referenceid"));
				hs.setAttribute("usertypes", map.get("usertypes"));
				hs.setAttribute("username", login.getUSERNAME());
				sr.setREQUESTED_BY(map.get("referenceid"));
				message = new ServicesService().addServiceRequest(sr);
				message+="<br>Email ID not yet verified. Verification Mail has been sent to your Email ID. Please check and Verify.To validate <a href=''>Validate</a>";
				pagename="/ImyServiceRequests.jsp";
			}
			else
			if(map.get("loseqid").equals("4"))
			{
				message=map.get("email")+" has been Blocked by Administrator. Please <a href='#'>Contact Admin</a>";
				pagename="/login1.jsp";
			}
			else
			if(map.get("loseqid").equals("5"))
			{
				message=map.get("email")+" Password mismatch...";
				pagename="/login1.jsp";
			}
			else
			if(map.get("loseqid").equals("6"))
			{
				message="Mobile No. Not yet Verified.";
				pagename="/login1.jsp";
			}
			else
			if(map.get("loseqid").equals("7"))
			{
				message="Email ID. Not yet verified..";
				pagename="/login1.jsp";
			}
			else
			{
				sr.setREQUESTED_BY(map.get("referenceid"));
				sr.setSTATUS("R");
				message = new ServicesService().addServiceRequest(sr);
				hs.setAttribute("referenceid", map.get("referenceid"));
				hs.setAttribute("usertypes", map.get("usertypes"));
				hs.setAttribute("username", login.getUSERNAME());
				hs.setAttribute("usertype", "I");
				request.setAttribute("date", "");
				request.setAttribute("service", "");
				request.setAttribute("reqDate", "");
				pagename="/ImyServiceRequests";
			}
		}catch (Exception e) {
			// TODO: handle exception
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

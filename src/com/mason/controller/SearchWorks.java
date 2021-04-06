package com.mason.controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.mason.bean.ServiceRequest;
import com.mason.dao.ServiceDAO;
import com.mason.dao.ServiceDAOImpl;
import com.mason.service.ServicesService;

/**
 * Servlet implementation class SearchWorks
 */
@WebServlet("/SearchWorks")
public class SearchWorks extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public SearchWorks() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
		
		
		com.mason.bean.ServiceRequest sr=new com.mason.bean.ServiceRequest();
		
		
		ArrayList<com.mason.bean.ServiceRequest> al=new ArrayList<com.mason.bean.ServiceRequest>();
		ServiceDAO sdao = new ServiceDAOImpl();
		/*String message = "", pagename="";*/
		
		sr.setSERVICE_NAME(request.getParameter("ServiceType"));
		/*sr.setREQ_PINCODE(request.getParameter("pincode1")); */
		
		sr.setREQ_PINCODE(request.getParameter("Work_Location"));  /**added by mahesh kosuri*/
		
	}
	
	/*al = sdao.getAllServiceRequest (String servicename , String location)*/
		
		/*sr.setDESCRIPTION(request.getParameter("description"));
		
		if(request.getParameter("reqDate")=="")
		{
			sr.setSERVICE_DATE("");
		}
		else
		{
			sr.setSERVICE_DATE(request.getParameter("reqDate"));
		}
		sr.setSTATUS("R");
		HashMap <String,String> hm=new HashMap<String,String>();
		try
		{
			if(hs.getAttribute("referenceid")!=null)
			{
				sr.setREQUESTED_BY(hs.getAttribute("referenceid").toString());
				message = new ServicesService().addServiceRequest(sr);
				pagename = "/ImyServiceRequests";
			}
			else
			{
				message = "Please Login to submit a Request.";
				request.setAttribute("message", message);
				request.setAttribute("servicerequest", sr);
				pagename = "/login1.jsp";//ServiceRequesterRegister.jsp
			}
		}catch (Exception e) {
			// TODO: handle exception
		}
		request.setAttribute("message", message);
		getServletContext().getRequestDispatcher(pagename).forward(request, response);
		
	}

*/		
		
		
		/*int page;
		*/
		
		/* al=sdao.getAllServiceRequestsByCriteria(sr, ((page-1)*maxrowsperpage), maxrowsperpage);
		noofRecords=sdao.getNoOfRecords();
		if(noofRecords%maxrowsperpage>0){				
			numofpages=(noofRecords/maxrowsperpage)+1;
		}
		else
		{
			numofpages=noofRecords/maxrowsperpage;
		}
			request.setAttribute("serviceRequests", al);
			request.setAttribute("numofpages", numofpages);
			request.setAttribute("noofrecords", noofRecords);
			request.setAttribute("currentPage", page);
			pagename="/user_new_requestsA.jsp";
		
	}
	}
		
		
		
		
	*/	
		
		
	

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}

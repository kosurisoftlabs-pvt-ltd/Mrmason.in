<%@ page language="java" import="com.mason.bean.*,java.util.*,com.mason.service.*" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
 <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
        <meta charset="utf-8" />
        <title>Mr.Mason</title>
        <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no" />
        <meta content="A fully featured admin theme which can be used to build CRM, CMS, etc." name="description" />
        <meta content="Coderthemes" name="author" />
        <meta http-equiv="X-UA-Compatible" content="IE=edge" />
        <link rel="shortcut icon" href="dashboard/images/favicon.png">
        <link href="../plugins/c3/c3.min.css" rel="stylesheet" type="text/css"  />
        <link href="dashboard/css/bootstrap.min.css" rel="stylesheet" type="text/css" />
        <link href="dashboard/css/icons.css" rel="stylesheet" type="text/css" />
        <link href="dashboard/css/metismenu.min.css" rel="stylesheet" type="text/css" />
        <link href="dashboard/css/style.css" rel="stylesheet" type="text/css" />
		<link href="dashboard/css/kosuri.css" rel="stylesheet" type="text/css" />
        <script src="dashboard/js/modernizr.min.js"></script>
        <style>
        #one{
            font-size: 18px;
		    color: #3c653e;
		    text-decoration: underline;
		    font-weight: 500;
		    }
          </style>
          <script type="text/javascript">
          function validation()
          {
        	  if(document.getElementById("servicetype").value=="Service Type")
       		  {
       		  	alert("Please Select any Service...");
       		  	return false;
       		  }
          }
          </script>
   </head>
   <body>
        <!-- Begin page -->
             <div id="wrapper">
            <jsp:include page="./user_top_bar.jsp"></jsp:include>
            <jsp:include page="./usersidebar.jsp"></jsp:include>
                   <div class="content-page">
                   
                       <div class="content">
                       <div class="container-fluid">
                       <!--=============== top section ================-->
                        <div class="row">
                        <div class="col-12">
                        <div class="page-title-box">
                        <h4 class="page-title float-left">New Requests</h4>
                        <ol class="breadcrumb float-right">
                        <li class="breadcrumb-item"><a href="user_dashboard.jsp">Dashboard</a></li>
                        <li class="breadcrumb-item"><a href="index.jsp">Home</a></li>
                        </ol>
                        <div class="clearfix"></div>
                        </div>
                        </div>
                        </div>
                      <!--=============== end top section ================-->

                      <!--============== body section ==============--> 
                        <div class="row">
                        <div class="col-xl-12 col-sm-12">
						<div class="home1">
			  <!--=========== form section =============-->
						<div class="col-xl-12 col-sm-12">
						 <span class="bo">My Request</span>
						<form action="UNewRequests" name="form" method="post" onsubmit="return validation()">
						   <div class="form-group col-md-12 col-sm-12"></div>
						   <div class="row">
						   <%
						   String servicetype="",reqDate="";
						   try
						   {
							   if(request.getParameter("servicetype")!=null)
							   {
							   		servicetype=request.getParameter("servicetype");
							   }
							   if(request.getParameter("servicetype")!=null)
							   {
								   reqDate=request.getParameter("reqDate");
							   }
							   
						   }
						   catch(Exception e)
						   {
							   e.printStackTrace();
						   }
						   ArrayList<UserServices> al= new ServicesService().getServiceProviderServices(session.getAttribute("referenceid").toString());
						   %>
							<div class="form-group col-md-4 col-sm-4">
							<label for="email">Service Type</label>
							<select class="form1" id="service" name="servicetype">
								<option>Service Type</option>
								<option>Carpenter</option>
								<option>Electrician</option>
								<option>Painter</option>
								<option>Plumber</option>
								<%
								for(int i =0;i<al.size();i++)
								{
									UserServices us=al.get(i);
									if(servicetype.equals(us.getSERVICE_TYPE()))
									{
									%>
									<option selected="selected"><%=us.getSERVICE_TYPE()%></option>	
									<%
									}
									else
									{
									%>
									<option><%=us.getSERVICE_TYPE()%></option>	
									<%
									}
								}
								%>
							</select>
							</div>
							
						    <div class="form-group col-md-4 col-sm-4">
							<label for="email">Service Requested Date </label>
							<input type="date" class="form1" name="reqDate" id="reqDate" placeholder="DD/MM/YYYY">
							</div>
							
							<div class="form-group col-md-2 col-sm-2">
							<label for="email" id="la">To</label>
							<button type="submit" class="btn btn-info btn-block" name="sub" id="box"> Submit </button>
							</div>
						   
						    <div class="form-group col-md-2 col-sm-2"></div>
						    </div>
						  
						  </form>
						  </div>
				 <!--=========== end form section =============-->
				  <div class="col-xl-12 col-sm-12"><br></div>
                 <!--=========== table section =============-->	
				    
				    <div class="col-xl-12 col-sm-12">
				    <div id="no-more-tables">
                    <table class="col-md-12 table-bordered table-striped table-condensed cf">
        		          <thead class="cf" id="cf">
        			      <tr>
        			      <th class="numeric">Request ID</th>
        				  <th class="numeric">Service Type</th>
        				  <th class="numeric">Req. Date</th>
        				  <th class="numeric">Service Date</th>
        				  <th class="numeric">Pin code</th>
        			 <!--	  <th class="numeric">Phone Number</th> -->  <!--  added by mahesh kosuri -->
        			      </tr>
        		          </thead>
						  
        		          <tbody>
        		          <%
        		          /* ArrayList<ServiceRequest> al = new ArrayList<ServiceRequest>();
						  al=(ArrayList<ServiceRequest>)request.getAttribute("serviceRequests");  */
        		          int numofpages = Integer.parseInt(request.getAttribute("numofpages").toString());
						  int noofrecords = Integer.parseInt(request.getAttribute("noofrecords").toString());
						  int currentpage = Integer.parseInt(request.getAttribute("currentPage").toString());
        		          %>
        		          <c:forEach var="sr" items="${serviceRequests}">
        			      <tr>
        				  <td data-title="Type" class="numeric"><c:out value="${sr.REQUEST_ID}"/></td>
        				  <td data-title="Type" class="numeric"><c:out value="${sr.SERVICE_NAME}"/></td>
        				  <td data-title="Date" class="numeric"><c:out value="${sr.SERVICE_REQUEST_DATE}"/></td>
        				  <td data-title="Location" class="numeric"><c:out value="${sr.SERVICE_DATE}"/></td>
        				  <td data-title="Name" class="numeric"><c:out value="${sr.REQ_PINCODE}"/></td>
        				 <!--		 <td data-title="Ph" class="numeric"><c:out value="${sr.REQ_PH}"/></td> -->
        			 <!--	  <td data-title="work" class="numeric"><a href="">Get Details</a></td>  -->
           			      </tr>
						  </c:forEach>
        		          </tbody>
        	              </table>
        	              <table>
							<tr>
							<td>Pages</td>
							<%System.out.println("No of Pages :: "+numofpages); %>
							<c:forEach begin="1" end="${numofpages}" var="i">
									<td><a href="./UNewRequests?page=${i}">${i}</a></td>
							</c:forEach>
							</tr>
						  </table>
					</div>
					</div>
			    <!--=========== end table section =============-->	
			    
                         </div>
						 </div>
						</div>
					    </div>
                        </div>
						<div class="col-xl-12 col-sm-12"><br><br></div>
                     <!--============== body section ==============--> 
               <!--================= footer section ================-->
                <footer class="footer text-right">
				Copyright © 2018 All Rights Reserved By Mr.Mason.
                </footer>
              <!--================= end footer section ================-->
            </div>
            </div>
       
        <!-- jQuery  -->
        <script src="dashboard/js/jquery.min.js"></script>
        <script src="dashboard/js/popper.min.js"></script>
        <script src="dashboard/js/bootstrap.min.js"></script>
        <script src="dashboard/js/metisMenu.min.js"></script>
        <script src="dashboard/js/waves.js"></script>
        <script src="dashboard/js/jquery.slimscroll.js"></script>
        <!-- Counter js  -->
        <script src="../plugins/waypoints/jquery.waypoints.min.js"></script>
        <script src="../plugins/counterup/jquery.counterup.min.js"></script>
        <!--C3 Chart-->
        <script type="text/javascript" src="../plugins/d3/d3.min.js"></script>
        <script type="text/javascript" src="../plugins/c3/c3.min.js"></script>
        <!--Echart Chart-->
        <script src="../plugins/echart/echarts-all.js"></script>
        <!-- Dashboard init -->
        <script src="dashboard/pages/jquery.dashboard.js"></script>
        <!-- App js -->
        <script src="dashboard/js/jquery.core.js"></script>
        <script src="dashboard/js/jquery.app.js"></script>

    </body>
</html>
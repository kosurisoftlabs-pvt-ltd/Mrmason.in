<%@ page language="java" import="com.mason.bean.*,java.util.*"  contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
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
                        <h4 class="page-title float-left">My Request</h4>
                        <ol class="breadcrumb float-right">
                        <li class="breadcrumb-item"><a href="individual.jsp">Dashboard</a></li>
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
						<form name="form" method="post" onsubmit="return validation()">
						   <div class="form-group col-md-12 col-sm-12"></div>
						   <div class="row">
							<div class="form-group col-md-4 col-sm-4">
							<label for="email">My Request :</label>
							<select class="form1" id="years">
							<option>-- Business Name --</option>
							<option>Building Materials</option>
							<option>Property Materials</option>
							</select>
							</div>
							
						    <div class="form-group col-md-4 col-sm-4">
							<label for="email">To Date :</label>
							<input type="date" class="form1" name="date" id="certification" placeholder="DD/MM/YYYY" required>
							</div>
							
							<div class="form-group col-md-2 col-sm-2">
							<label for="email" id="la">To</label>
							<button type="submit" class="btn btn-info btn-block" name="sub" id="box"> Submit </button>
							</div>
						   
						    <div class="form-group col-md-2 col-sm-2"></div>
						    </div>
						  
						  </form>
						  </div>
						
						  <div class="col-xl-12 col-sm-12"><br></div>
						<!--============ tab section ===========-->
						  <div class="col-xl-12 col-sm-12">
						  <div id="no-more-tables">
                          <table class="col-md-12 table-bordered table-striped table-condensed cf">
        		          <thead class="cf" id="cf">
        			      <tr>
        				  <th class="numeric">Service Type</th>
        				  <th class="numeric">Req. Date</th>
        				  <th class="numeric">Description</th>
        				  <th class="numeric">Pincode</th>
        				  <th class="numeric">Status Of work</th>
        			      </tr>
        		          </thead>
						  
        		          <tbody>
        		          <%
        		          /* ArrayList<ServiceRequest> al = new ArrayList<ServiceRequest>();
						  al=(ArrayList<ServiceRequest>)request.getAttribute("serviceRequests"); */
        		          int numofpages = Integer.parseInt(request.getAttribute("numofpages").toString());
						  int noofrecords = Integer.parseInt(request.getAttribute("noofrecords").toString());
						  int currentpage = Integer.parseInt(request.getAttribute("currentPage").toString());
        		          %>
        		          <c:forEach var="sr" items="${serviceRequests}">
        			      <tr>
        				  <td data-title="Type" class="numeric"><c:out value="${sr.SERVICE_NAME}"/></td>
        				  <td data-title="Date" class="numeric"><c:out value="${sr.SERVICE_REQUEST_DATE}"/></td>
        				  <td data-title="Location" class="numeric"><c:out value="${sr.DESCRIPTION}"/></td>
        				  <td data-title="Name" class="numeric"><c:out value="${sr.REQ_PINCODE}"/></td>
        				  <td data-title="work" class="numeric"><c:out value="${sr.STATUS}"/></td>
           			      </tr>
						  </c:forEach>
        		          </tbody>
        	              </table>
        	              <table>
							<tr>
							<td>Pages</td>
							<%System.out.println("No of Pages :: "+numofpages); %>
							<c:forEach begin="1" end="${numofpages}" var="i">
									<td><a href="./ImyServiceRequests?page=${i}&k=v">${i}</a></td>
							</c:forEach>
							</tr>
						  </table>
                          </div>
						  </div>
						<!--============ end tab section ===========-->
				    <div class="col-xl-12 col-sm-12"><br><br></div>
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
</html>
</html>
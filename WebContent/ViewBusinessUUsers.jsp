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
	function getPincodeDets(str)
    {
    	if (str=="")
    	  {
    	  document.getElementById("pincodedata").value="";
    	  return;
    	  }  
    	if (window.XMLHttpRequest)
    	  {// code for IE7+, Firefox, Chrome, Opera, Safari
    	  xmlhttp=new XMLHttpRequest();
    	  }
    	else
    	  {// code for IE6, IE5
    	  xmlhttp=new ActiveXObject("Microsoft.XMLHTTP");
    	  }
    	xmlhttp.onreadystatechange=function()
    	  {
    	  if (xmlhttp.readyState==4 && xmlhttp.status==200)
    	    {
    	    document.getElementById("pincodedata").value=xmlhttp.responseText;
    	    var pincodedata = document.getElementById("pincodedata").value;
    	    var str_array = pincodedata.split(',');
    	    document.getElementById("city").value=str_array[0].replace(/^\s*/, "").replace(/\s*$/, "");
    	    document.getElementById("district").value=str_array[1].replace(/^\s*/, "").replace(/\s*$/, "");
    	    document.getElementById("state").value=str_array[2].replace(/^\s*/, "").replace(/\s*$/, "");
    	    }
    	  }
    	xmlhttp.open("GET","./getPincode.jsp?pincode="+str,true);
    	xmlhttp.send();
    }
	</script>
   </head>
   <body>
        <!-- Begin page -->
             <div id="wrapper">
            <jsp:include page="./homeTop1.jsp"></jsp:include>
            <jsp:include page="./dashboardSidebar.jsp"></jsp:include>
                   <div class="content-page">
                   
                       <div class="content">
                       <div class="container-fluid">
                       <!--=============== top section ================-->
                        <div class="row">
                        <div class="col-12">
                        <div class="page-title-box">
                        <h4 class="page-title float-left">Registererd Business Users</h4>
                        <ol class="breadcrumb float-right">
                        <li class="breadcrumb-item"><a href="UserHomepage.jsp">Dashboard</a></li>
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
						 <div class="form-group col-md-12 col-sm-12"></div>
						 <form name="form" action="./GetBusinessUsers" method="post" onsubmit="return validation()">
						 <div class="row">
						
						 <%-- <div class="form-group col-md-3 col-sm-3">
                         <label for="pincode">Category :</label>
                         <jsp:include page="./Category.jsp"/>
                         </div> --%>
                         
						 <div class="form-group col-md-3 col-sm-3">
                         <label for="pincode">Pincode :</label>
                         <input type="hidden" name="pincodedata" class="form-control" id="pincodedata">
                         <input type="text" class="form1" onchange="getPincodeDets(this.value)" name="pincodeNo" id="pincodeNo" placeholder="Enter Pincode">
                         </div>
                         
                         <div class="form-group col-md-3 col-sm-3">
                         <label for="pincode">City :</label>
                         <input type="text" class="form1" name="city" id="city" placeholder="Enter City">
                         </div>
						 
						 <div class="form-group col-md-3 col-sm-3">
                         <label for="pincode">From Date :</label>
                         <input type="date" class="form1" name="fromdate" id="fromdate" placeholder="Enter Your From Date" >
                         </div>
                         
                         <div class="form-group col-md-3 col-sm-3">
                         <label for="pincode">To Date :</label>
                         <input type="date" class="form1" name="todate" id="todate" placeholder="Enter Your To Date" >
                         </div>
						 
						<!--  <div class="form-group col-md-3 col-sm-3">
                         <label for="pincode">Material Name :</label>
                         <input type="text" class="form1" name="material" id="material" placeholder="Your Material Name" >
                         </div> -->
                         
						 <div class="col-xl-2 col-sm-2">
						 <label for="pincode"></label>
						 <button type="submit" class="btn btn-info btn-block" name="sub"  id="box"> Search </button>
						 </div>
						 </div>
						 </form>
						 </div>
				 <!--=========== end form section =============-->
				  	<div class="col-xl-12 col-sm-12">
						My Search <%=request.getParameter("pincodeNo") %>|<%=request.getParameter("city") %>|<%=request.getParameter("fromdate") %>|<%=request.getParameter("todate") %>
					</div>
                 <!--=========== table section =============-->	
				    
				    <div class="col-xl-12 col-sm-12">
				    <div id="no-more-tables">
                    <table class="col-md-12 table-bordered table-striped table-condensed cf">
        		    <thead class="cf" id="cf">
        			<tr>
        				<th class="numeric">Business User Name</th>
        				<th class="numeric">Email-ID</th>
        				<th class="numeric">Mobile</th>
        				<th class="numeric">City</th>
        				<th class="numeric">Address</th>
        				<th class="numeric">Selected User Types</th>
        				<th class="numeric">Details</th>
        				
        				
        			</tr>
        		    </thead>
        		    <tbody>
        		    <% 
        		    	ArrayList<User> al=new ArrayList<User>();
						String pincode="",city="",fromdate="",todate="";
        		    	int numofpages =0,noofrecords=0,currentpage=0;
					 try
					 {
						 if(request.getParameter("pincodeNo")!=null){pincode=request.getParameter("pincodeNo");}
						 if(request.getParameter("city")!=null){city=request.getParameter("city");}
						 if(request.getParameter("fromdate")!=null){fromdate=request.getParameter("fromdate");}
						 if(request.getParameter("todate")!=null){todate=request.getParameter("todate");}
						al=(ArrayList<User>)request.getAttribute("userDetails");	 
						numofpages = Integer.parseInt(request.getAttribute("numofpages").toString());
						noofrecords = Integer.parseInt(request.getAttribute("noofrecords").toString());
						currentpage = Integer.parseInt(request.getAttribute("currentPage").toString());
					 }catch(Exception e)
					 {
					 }
					if(al.size()<=0)
					{%>
						<tr><td colspan="6">No Records</td></tr>
					<%}
					else
					{%>
					<c:forEach var="user" items="${userDetails}">    
        			<tr>
        				<td data-title="Quantity ID" class="numeric"><a href="#" id="one" data-toggle="modal" data-target="#myModal">${user.name}</a></td>
        				<td data-title="Date" class="numeric">${user.emailId}</td>
        				<td data-title="Pincode" class="numeric">${user.mobileNo}</td>
        				<td data-title="Quantity ID" class="numeric"><a href="#" id="one" data-toggle="modal" data-target="#myModal">${user.city}</a></td>
        				<td data-title="Date" class="numeric">${user.address},<br>${user.city},<br>${user.district},<br>${user.state}</td>
        				<td data-title="Pincode" class="numeric">${user.userTypes}</td>
        				<th class="numeric">
        				<form action="./GetBUPersonalDetails" method="post">
        				  <input type="hidden" name="pincodeNo" value="<%=pincode%>">
        				  <input type="hidden" name="city" value="<%=city%>">
        				  <input type="hidden" name="fromdate" value="<%=fromdate%>">
        				  <input type="hidden" name="todate" value="<%=todate%>">
        				  <input type="hidden" name="page" value="<%=currentpage%>">
        				  <input type="hidden" name="buid" value="${user.bod_seq_no }">
        				  <button type="submit" class="btn btn-link" value="PersonalDetails">Personal Details</button>
        				  </form>
        				  <form action="GetBUBusinessDetails" method="get">
        				  <input type="hidden" name="pincodeNo" value="<%=pincode%>">
        				  <input type="hidden" name="city" value="<%=city%>">
        				  <input type="hidden" name="fromdate" value="<%=fromdate%>">
        				  <input type="hidden" name="todate" value="<%=todate%>">
        				  <input type="hidden" name="page" value="<%=currentpage%>">
        				  <input type="hidden" name="buid" value="${user.bod_seq_no }">
        				  <button type="submit" class="btn btn-link" value="BusinessDetails">Business Details</button>
        				  </form>
        				  <form action="#" method="post">
        				  <input type="hidden" name="pincodeNo" value="<%=pincode%>">
        				  <input type="hidden" name="city" value="<%=city%>">
        				  <input type="hidden" name="fromdate" value="<%=fromdate%>">
        				  <input type="hidden" name="todate" value="<%=todate%>">
        				  <input type="hidden" name="page" value="<%=currentpage%>">
        				  <input type="hidden" name="buid" value="${user.bod_seq_no }">
        				  <button type="submit" class="btn btn-link" value="ServiceDetails">Service Details</button>
        				  </form>
        				  <form action="#" method="post">
        				  <input type="hidden" name="pincodeNo" value="<%=pincode%>">
        				  <input type="hidden" name="city" value="<%=city%>">
        				  <input type="hidden" name="fromdate" value="<%=fromdate%>">
        				  <input type="hidden" name="todate" value="<%=todate%>">
        				  <input type="hidden" name="page" value="<%=currentpage%>">
        				  <input type="hidden" name="buid" value="${user.bod_seq_no }">
        				  <button type="submit" class="btn btn-link" value="MaterialDetails">Material Details</button>
        				  </form>
        				
        				</th>
        			</tr>
        			</c:forEach>
        			<%} %>
					</tbody>
					</table>
					<table>
							<tr>
							<td>Pages</td>
							<c:forEach begin="1" end="${numofpages}" var="i">
									<td><a href="./GetBusinessUsers?pincodeNo=<%=request.getParameter("pincodeNo") %>&city=<%=request.getParameter("city") %>&fromcity=<%=request.getParameter("fromdate") %>&todate=<%=request.getParameter("todate") %>?page=${i}">${i}</a></td>
							</c:forEach>
							</tr>
						  </table>
					</div>
					</div>
			    <!--=========== end table section =============-->	
			    
			    <!--==================== popup section ================-->
			        <div class="modal fade" id="myModal" role="dialog">
                    <div class="modal-dialog">
    
			        <div class="modal-content">
			        <div class="modal-header">
			        <button type="button" class="close" data-dismiss="modal">&times;</button>
			        <h4 class="modal-title">New Quotaions</h4>
			        </div>
			        <div class="modal-body">
			         <form name="form" method="post" onsubmit="return validation()">
						 <div class="row">
						
						 <div class="form-group col-md-6 col-sm-6">
                         <label for="pincode">Material Name :</label>
                         <input type="text" class="form1" name="material" id="material" placeholder="Your Material Name" required>
                         </div>
                         
                         <div class="form-group col-md-6 col-sm-6">
                         <label for="pincode">Quantity :</label>
                         <input type="text" class="form1" name="quantity" id="quantity" placeholder="Enter Your Quantity" required>
                         </div>
						 
						 <div class="form-group col-md-6 col-sm-6">
                         <label for="pincode">Brand :</label>
                         <input type="text" class="form1" name="brand" id="brand" placeholder="Enter Your Brand" required>
                         </div>
                         
                         <div class="form-group col-md-6 col-sm-6">
                         <label for="pincode">Price :</label>
                         <input type="text" class="form1" name="Price" id="Price" placeholder="Enter Your Price" required>
                         </div>
                         
                          <div class="col-xl-12 col-sm-12"></div>
                         <div class="col-xl-2 col-sm-2"></div>
						 <div class="col-xl-3 col-sm-3">
						 <button type="submit" class="btn btn-info btn-block" name="sub" id="box"> Send </button>
						 </div>
						 <div class="col-xl-2 col-sm-2"></div>
						 <div class="col-xl-3 col-sm-3">
						 <button type="submit" class="btn btn-danger btn-block" name="sub" id="box" style="font-size: 18px; line-height: 20px;"> Save </button>
						 </div>
						  <div class="col-xl-2 col-sm-2"></div>
						 </div>
						 </form>
			        </div>
			        <div class="modal-footer">
			        <button style="line-height: 14px; background: #3c653e; color: #fff;" type="button" class="btn btn-default" data-dismiss="modal">Close</button>
			        </div>
			        </div>
			      
			        </div>
			        </div>
			    <!--=================== end popup section =================-->		
						
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
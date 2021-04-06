<%@ page language="java" import="com.mason.bean.*,java.util.*,com.mason.service.*" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
 <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
        <meta charset="utf-8" />
        <title>Mr.Mason | Service Persons Details</title>
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
          
          
           <meta name="google-site-verification" content="gG3OAGF9VX_pK7SbcB2KhRDYWhhAaj6EQspeOjVcyrE" />
   <!-- good api key starts-->
   <script type="text/javascript"  defer src="https://maps.googleapis.com/maps/api/js?key=AIzaSyBE49eJ-hTzLNA7IKZ2DOnW-4BBHDzDXlA&sensor=false&libraries=places&callback=initMap"></script> 
 
   <!--   good api key Ends   -->
   
          
          <!--======================= Start Google API copied from zorocabs by Mahesh Kosuri      ============ -->     
                     
         
      
     <!--  <script type="text/javascript" src="https://maps.googleapis.com/maps/api/js?key=AIzaSyBE49eJ-hTzLNA7IKZ2DOnW-4BBHDzDXlA&sensor=false&libraries=places&callback=initMap"></script>        -->  
        	           
                     
   <script>


/*    var options = {
		   types: ['(regions)'],
		   componentRestrictions: {country: "us"}
		  };
	    */
	/*    var options = {
  			   types: ['(cities)'],
		        componentRestrictions: { country: "IN" }
		    }; */
	   
	   var options1 = {
		        componentRestrictions: { country: "IN" }
		    };
          
function initMap() {
                
initMap1();
initMap2();
initMap3();
initMap4();
initMap5();
initMap6();
}
 
function initMap1() {
    
	var input = document.getElementById('locationTextField1');

	var autocomplete = new google.maps.places.Autocomplete(input, options1);
    //var locationTextField1 = new google.maps.places.Autocomplete(input, options);
	            
	}          

function initMap2() {
    
	var input = document.getElementById('locationTextField2');
	                
	var autocomplete = new google.maps.places.Autocomplete(input, options1);

	
	            
	}

function initMap3() {
    
	var input = document.getElementById('locationTextField3');
	                
	var autocomplete = new google.maps.places.Autocomplete(input, options1);
	            
	}
function initMap4() {
    
	var input = document.getElementById('locationTextField4');
	                
	var autocomplete = new google.maps.places.Autocomplete(input, options1);
	            
	}
function initMap5() {
    
	var input = document.getElementById('locationTextField5');
	                
	var autocomplete = new google.maps.places.Autocomplete(input, options);
	            
	}
function initMap6() {
    
	var input = document.getElementById('locationTextField6');
	                
	var autocomplete = new google.maps.places.Autocomplete(input, options1);
	            
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
                        <h4 class="page-title float-left">Service Persons</h4>
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
						 <!-- <span class="bo">Service Persons</span> -->
						<form action="./View_Service_Persons" name="form" method="post" onsubmit="return validation()">
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
								<%
								for(int i =0;i<al.size();i++)
								{
									UserServices us=al.get(i);
								%>
								<option><%=us.getSERVICE_TYPE()%></option>	
								<%}
								%>
							</select>
							</div>
							
						    <div class="form-group col-md-4 col-sm-4">
							<label for="email">Work Location</label>
							<input type="text" class="form1" name="Work_Location" id="locationTextField1" placeholder="Enter Work Location">
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
        			      <th class="numeric">Service Person</th>
        				  <th class="numeric">Service Type</th>
        				  <th class="numeric">Experience</th>
        				  <th class="numeric">Working Location</th>
        				  <th class="numeric">Availability</th>
        				  <th class="numeric">With in Range</th>
        				  <th class="numeric">City</th>
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
        		          <c:forEach var="sp" items="${servicePersons}">
        			      <tr>
        				  <td data-title="Name" class="numeric">
        				  <form action="./GetServicePersonProfile" method="post">
        				  <input type="hidden" name="page" value="<%=currentpage%>">
        				  <input type="hidden" name="spid" value="${sp.SER_PER_SEQ_ID}">
        				  <button type="submit" class="btn btn-link"><c:out value="${sp.NAME}"/></button>
        				  </form>
        				  </td>
        				  <td data-title="Service Type" class="numeric"><c:out value="${sp.SERVICE_TYPE}"/></td>
        				  <td data-title="Experience" class="numeric"><c:out value="${sp.EXPERIENCE}"/></td>
        				  <td data-title="Pincode" class="numeric"><c:out value="${sp.PINCODE}"/></td>
        				  <td data-title="Available" class="numeric"><c:out value="${sp.AVAILABLE_STATUS}"/></td>
        				  <td data-title="Range" class="numeric"><c:out value="${sp.WITH_IN_RANGE}"/></td>
        				  <td data-title="City" class="numeric"><c:out value="${sp.CITY}"/></td>
           			      </tr>
						  </c:forEach>
        		          </tbody>
        	              </table>
        	              <table>
							<tr>
							<td>Pages</td>
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
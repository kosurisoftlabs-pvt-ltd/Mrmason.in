<%@ page language="java" import="com.mason.bean.*,java.util.*,com.mason.service.*" contentType="text/html; charset=ISO-8859-1"
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
   
      <!--======================= Start Google API copied from zorocabs by Mahesh Kosuri      ============ -->     
                     
         
      
     <!--  <script type="text/javascript" src="https://maps.googleapis.com/maps/api/js?key=AIzaSyBE49eJ-hTzLNA7IKZ2DOnW-4BBHDzDXlA&sensor=false&libraries=places&callback=initMap"></script>        -->  
        
        
        
        <!-- good api key starts-->
        
   <script type="text/javascript"  defer src="https://maps.googleapis.com/maps/api/js?key=AIzaSyBE49eJ-hTzLNA7IKZ2DOnW-4BBHDzDXlA&sensor=false&libraries=places&callback=initMap"></script> 
 
   <!--   good api key Ends   -->	           
                     
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
                        <h4 class="page-title float-left">My Services</h4>
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
						 <span class="bo">My Services</span>
						<form name="form" action="./UserServices" method="post" onsubmit="return validation()">
						   <div class="form-group col-md-12 col-sm-12"></div>
						   <div class="row">
							<div class="form-group col-md-4 col-sm-4">
							<label for="email">Service Type :</label>
							<select name="services" class="form1">
							<%
							String servicetype="",pincode="",sid="";
							try
							{
								sid = session.getAttribute("referenceid").toString();
								if(request.getParameter("servicetype")!=null)
								{
									if(request.getParameter("servicetype")!="")
									{
										servicetype = request.getParameter("servicetype");
									}
								}
								if(request.getParameter("pincode")!=null)
								{
									if(request.getParameter("pincode")!="")
									{
										pincode = request.getParameter("pincode");
									}
								}
							}catch(Exception e)
							{
								e.printStackTrace();
							}
							
							ArrayList<UserServices> us=new ServicesService().getServiceProviderServices(sid);
							for(int i=0;i<us.size();i++)
							{
								UserServices use=us.get(i);
								if(use.getSERVICE_TYPE().equals(servicetype))
								{
									%>
									<option selected="selected"><%=use.getSERVICE_TYPE() %></option>
									<%
								}
								else
								{
									%>
									<option><%=use.getSERVICE_TYPE() %></option>
									<%
								}
							}
							%>
							</select>
							</div>
							
						    <div class="form-group col-md-4 col-sm-4">
							<label for="email">Work Location :</label>
							<%-- <input type="text" class="form1" name="pincode" id="pincode" value="<%=pincode%>"> --%>
							<input type="text"  name="Work_Location" class="form-control" id="locationTextField1" placeholder="Enter Work location"/> 
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
        				 <!--  <th class="numeric">City</th> -->
        				  <th class="numeric">Work Location</th>
        				  <th class="numeric">Available</th>
        				  <th class="numeric">Available with in Range</th>
        			      </tr>
        		          </thead>
						  
        		          <tbody>
        		          <c:forEach var="use" items="${userServices}">
        			      <tr>
        				  <td data-title="Type" class="numeric">${use.SERVICE_TYPE}</td>
        				  <%-- <td data-title="Date" class="numeric">${use.CITY}</td> --%>
        				  <td data-title="Location" class="numeric">${use.PINCODE }</td>
        				  <td data-title="Name" class="numeric">${use.STATUS }</td>
        				  <td data-title="work" class="numeric">${use.AVAILABLE_WITHIN_RANGE }</td>
           			      </tr>
           			      </c:forEach>
        		          </tbody>
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
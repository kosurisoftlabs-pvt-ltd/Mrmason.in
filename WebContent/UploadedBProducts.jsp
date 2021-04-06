<%@ page language="java"  contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
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
		<link rel="stylesheet" type="text/css" href="dashboard/css/tcal.css" />
	    <script type="text/javascript" src="dashboard/js/tcal.js"></script> 
        <script src="dashboard/js/modernizr.min.js"></script>
        <script>
	     var counter = 1;
	     var limit = 6;
	     function addInput(divName){
          if (counter == limit)  {
               alert("You have reached the limit of adding " + counter + " inputs");
          }
          
          else {
        	  
        	  var newdiv = document.createElement('div');
        	  newdiv.innerHTML = '<div class="row"><div class="col-md-12" style="padding: 0 0; margin:3px -1.1%;"><div class="col-md-12"><input type="text" class="form1" name="city" id="city" placeholder="Enter Your Specification" required="required"></div></div>';
              
              document.getElementById(divName).appendChild(newdiv);
              counter++;
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
                        <h4 class="page-title float-left">Uploaded Products</h4>
                        <ol class="breadcrumb float-right">
                        <li class="breadcrumb-item"><a href="user_dashboard.jsp">Dashboard</a></li>
                        <li class="breadcrumb-item"><a href="index.jsp">Home</a></li>
                        </ol>
                        <div class="clearfix"></div>
                        </div>
                        </div>
                        </div>
                      <!--================= end top section ==================-->

                      <!--==================  body section =================--> 
                      
                       <div class="row">
                        <div class="col-xl-12 col-sm-12">
						<div class="home1">
						<div class="col-xl-12 col-sm-12">
					        <!--=========== form section =============-->
						 <div class="col-xl-12 col-sm-12">
					     Products Upload Details
						 </div>
				 <!--=========== end form section =============-->
					    		   
                 <!--=========== table section =============-->	
				    <div class="col-xl-12 col-sm-12"><br></div>
				    <div class="col-xl-12 col-sm-12">
				    <div id="no-more-tables">
                    <table class="col-md-12 table-bordered table-striped table-condensed cf">
        		    <thead class="cf" id="cf">
					   		    
        			<tr>
        				<th class="numeric">SKU ID</th>
        				<th class="numeric">Brand Name</th>
        				<th class="numeric">Special Name</th>
        				<th class="numeric">Interior/Exterior</th>
        				<th class="numeric">Weight</th>
        				<th class="numeric">Price</th>
        				<th class="numeric">Status</th>
        			</tr>
        		    </thead>
        		    <tbody>
        		    <c:forEach var="pd" items="${paintsDetails}">     
        			<tr>
        				<td data-title="SKU ID" class="numeric">${pd.SKUID}</td>
        				<td data-title="Brand Name" class="numeric">${pd.MANUFACTURER_NAME}</td>
        				<td data-title="Special Name" class="numeric">${pd.SPECIAL_NAME}</td>
        				<td data-title="Material Name" class="numeric">${pd.INTER_EXTER}</td>
        				<td data-title="Weight" class="numeric">${pd.WEIGHT}</td>
        				<td data-title="Price" class="numeric">${pd.PRICE}</td>
        				
        				<c:set var="stat" value="${pd.STATUS}" scope="request"/>
        				<%
        				if(request.getAttribute("stat").equals("Updated"))
        				{%>
        					<td data-title="Status" class="numeric">Updated</td>
        				<%}
        				else
        				{%>
    						<td data-title="Status" class="numeric">Saved</td>
    					<%}
        				%>
        			</tr>
        			</c:forEach>
					</tbody>
					</table>
					</div>
					</div> 
			    <!--=========== end table section =============-->	
					   
						</div>
						
						
						</div>
					    </div>
						<div class="col-xl-12 col-sm-12"><br><br></div>
                        </div>
                     <!--============== body section ==============--> 
               <!--================= footer section ================-->
                <footer class="footer text-right">
				Copyright � 2018 All Rights Reserved By Mr.Mason.
                </footer>
              <!--================= end footer section ================-->
            </div>
            </div>
            
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
<script>
	function getUsedVcleBrand(str)
	{
	if (str=="")  
	{  
		document.getElementById("txtHint2").innerHTML="";  
		return;  
		}  
	if (window.XMLHttpRequest)  
	{
		// code for IE7+, Firefox, Chrome, Opera, Safari  
		xmlhttp=new XMLHttpRequest();  
		}
	else  
	{
		// code for IE6, IE5  
		xmlhttp=new ActiveXObject("Microsoft.XMLHTTP");
		}
	xmlhttp.onreadystatechange=function()  
	{  
		if (xmlhttp.readyState==4 && xmlhttp.status==200)    
		{    
			document.getElementById("txtHint2").innerHTML=xmlhttp.responseText;    
			}  
		}
	xmlhttp.open("GET","./getUsedVecleBrand.jsp?vBrand="+str,true);   
	xmlhttp.send();    
	}
	</script>
    </body>
</html>
</html>
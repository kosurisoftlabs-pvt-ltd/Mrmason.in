<%@ page language="java"  contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
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
            <jsp:include page="./homeTop1.jsp"></jsp:include>
            <jsp:include page="./dashboardSidebar.jsp"></jsp:include>
                   <div class="content-page">
                       <div class="content">
                       <div class="container-fluid">
                       <!--=============== top section ================-->
                        <div class="row">
                        <div class="col-12">
                        <div class="page-title-box">
                        <h4 class="page-title float-left">Request New Category</h4>
                        <ol class="breadcrumb float-right">
                        <li class="breadcrumb-item"><a href="UserHomepage.jsp">Dashboard</a></li>
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
						<span class="bo">Request New Category</span>
					    <div class="form-group col-md-12 col-sm-12"></div>
		                 <!--=========== form section =============-->
						 <div class="col-xl-12 col-sm-12">
					     <form name="form" method="post" onsubmit="return validation()">
						 <div class="row">
						
						 <div class="form-group col-md-3 col-sm-3">
                         <label for="pincode">SKU ID :</label>
                         <input type="text" class="form1" name="skuid" id="skuid" placeholder="Enter Your SKU ID" required>
                         </div>
                         
                         <div class="form-group col-md-3 col-sm-3">
                         <label for="pincode">Product Name :</label>
                         <input type="text" class="form1" name="product" id="product" placeholder="Enter Your Product Name" required>
                         </div>
						 
						 <div class="form-group col-md-3 col-sm-3">
                         <label for="pincode">Brand :</label>
                         <input type="text" class="form1" name="brand" id="brand" placeholder="Enter Your Brand" required>
                         </div>
                         
						 <div class="col-xl-2 col-sm-2">
						 <label for="pincode"></label>
						 <button type="submit" class="btn btn-info btn-block" name="sub"  id="box"> Search </button>
						 </div>
						 </div>
						 </form> 
						 </div>
				 <!--=========== end form section =============-->
                 <!--=========== table section =============-->	
				    <div class="col-xl-12 col-sm-12"><br></div>
				    <div class="col-xl-12 col-sm-12">
				    <div id="no-more-tables">
                    <table class="col-md-12 table-bordered table-striped table-condensed cf">
        		    <thead class="cf" id="cf">
        			<tr>
        				<th class="numeric">Product Name</th>
        				<th class="numeric">SKU ID</th>
        				<th class="numeric">Material Name</th>
        				<th class="numeric">Qualification</th>
        				<th class="numeric">Current Price</th>
        				<th class="numeric">Present Price</th>
        				<th class="numeric">Specification</th>
        			</tr>
        		    </thead>
        		    <tbody>
        			<tr>
        				<td data-title="Product Name" class="numeric">Cement</td>
        				<td data-title="SKU ID" class="numeric">585685</td>
        				<td data-title="Material Name" class="numeric">Lightig</td>
        				<td data-title="Qualification" class="numeric">B.tech</td>
        				<td data-title="Current Price" class="numeric">10,000</td>
        				<td data-title="Present Price" class="numeric">15,000</td>
        				<td data-title="Specification" class="numeric">hgfhf</td>
        			</tr>
					</tbody>
					</table>
					</div>
					</div> 
			    <!--=========== end table section =============-->	
					    
				<!-- 		<form name="form" method="post" onsubmit="return validation()">
						 <div class="row">
						 <div class="form-group col-md-6 col-sm-6">
                         <label for="pincode">Product Name :</label>
                         <input type="text" class="form1" name="productname" id="productname" placeholder="Your Product Name" required="required">
                         </div>
						 
						 <div class="form-group col-md-6 col-sm-6">
                         <label for="pincode">SQ ID :</label>
                         <input type="text" class="form1" name="sqid" id="sqid" placeholder="Your SQ ID" required="required">
                         </div>
						 
						 <div class="form-group col-md-6 col-sm-6">
                         <label for="pincode">Material Name :</label>
                         <input type="text" class="form1" name="materialname" id="materialname" placeholder="Your Material Name" required="required">
                         </div>
                         
						 <div class="form-group col-md-6 col-sm-6">
                         <label for="pincode">Qualification :</label>
                         <input type="text" class="form1" name="qualification" id="qualification" placeholder="Your Qualification" required="required">
                         </div>
						 
						 <div class="form-group col-md-6 col-sm-6">
                         <label for="pincode">Price :</label>
                         <input type="text" class="form1" name="price" id="price" placeholder="Your Price" required="required">
                         </div>
                         
                          <div class="form-group col-md-6 col-sm-6"></div>
                         
                         <div class="col-md-12 row">
                         <div class="form-group col-md-6 col-sm-6" id="dynamicInput">
                         <label for="pincode">Specification :</label>
                         <input type="text" class="form1" name="city" id="city" placeholder="Enter Your Specification" required="required">
                         </div>
                         
                          <div class="form-group col-md-4 col-sm-4">
	                      <label style="color:#fff;">Des :</label>
	                      <button type="button" id="more_fields" onclick="addInput('dynamicInput');" class="btn btn-info btn-block" style="line-height:16px;">Add Another</button>
	                      </div>
                          </div>
                         
                         <div class="form-group col-md-12 col-sm-12">
                         <label for="pincode">Description :</label>
                         <textarea class="form-control" rows="1" name="message" placeholder="Enter Your Description" required="required"></textarea>
                         </div>
                         
                         
                    <div class="form-group col-md-12 col-sm-12"">
				    <div class="col-md-12">
				    <input type="text"  class="tcal form2" value="" name="date" id="date" readonly="readonly" placeholder="SELECT DATE"/> 
				    </div>
				    </div>
						 
						 <div class="form-group col-xl-12 col-sm-12 row">
						 <div class="form-groupcol-xl-4 col-sm-4"></div>
						 <div class="form-group col-xl-3 col-sm-3">
						 <label for="pincode"></label>
						 <button type="submit" class="btn btn-info btn-block" name="sub"  id="box"> Update </button>
						 </div>
						 <div class="form-group col-xl-4 col-sm-4"></div>
						 </div>
						 </div>
						 </form> -->
						</div>
						
						
						</div>
					    </div>
						<div class="col-xl-12 col-sm-12"><br><br></div>
                        </div>
                     <!--============== body section ==============--> 
               <!--================= footer section ================-->
                <footer class="footer text-right">
				Copyright © 2018 All Rights Reserved By Mr.Mason.
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
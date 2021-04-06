<%@ page language="java" import="com.mason.bean.*,java.util.*,com.mason.service.*" contentType="text/html; charset=ISO-8859-1"
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
     var limit = 5;
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
     <script type="text/javascript">
function getSubCategory(str)
{
if (str=="")
  {
  document.getElementById("txtHint3").innerHTML="";
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
    document.getElementById("txtHint3").innerHTML=xmlhttp.responseText;
    }
  }
xmlhttp.open("GET","./getSubCategory.jsp?catid="+str,true);
xmlhttp.send();
}
</script>
 <script>
      function isNumberKey(evt)
      {
         var charCode = (evt.which) ? evt.which : event.keyCode
         if (charCode > 31 && (charCode < 48 || charCode > 57))
         return false;
         return true;
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
                        <h4 class="page-title float-left">Add Product</h4>
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
						<div class="col-xl-8 col-sm-8">
					    <div class="form-group col-md-12 col-sm-12">
						 <%
						 try{if(request.getAttribute("message")!=null){out.println(request.getAttribute("message"));}}catch(Exception e){} %>
						</div>
						<form action="./AddPaintsMaterial" name="form" method="get" onsubmit="return validation()">
						<div class="row">
						 <div class="form-group col-md-6 col-sm-6">
                         <label for="pincode">SKU ID :</label>
                         <input type="text" class="form1" name="skuid" id="skuid" placeholder="Your SKU ID" required="required">
                         </div>
                         
                         <div class="form-group col-md-6 col-sm-6">
                         <label for="pincode">Display Online :</label><br>
                        	<input type="radio" name="displaytype" value="Y" checked="checked"> Yes &nbsp; &nbsp;
                        	<input type="radio" name="displaytype" value="N"> No
                         </div>
						 
						 <%
					 	  ArrayList<Category> al= new CategoryService().getAllCategory();
						   %> 
							<div class="form-group col-md-6 col-sm-6">
							<label for="email">Product Category :</label>
							<select class="form1" id="service" name="productcategory" onchange="getSubCategory(this.value)">
								<option>Product Category</option>
								 <%
								for(int i =0;i<al.size();i++)
								{
									Category cat=al.get(i);
								%>
								<option value="<%=cat.getCAT_ID()%>"><%=cat.getCATEGORY()%></option>	
								<%}
								%> 
							</select>
						 </div>
							
                         <div class="form-group col-md-6 col-sm-6">
                         <label for="pincode">Product Sub-Category :</label>
                         <div  id="txtHint3" >
                         <input type="text" class="form1" name="Subcategory" id="Subcategory" placeholder="Subcategory" required="required">
                         </div>
                         </div>
                         
						 
						 <div class="form-group col-md-6 col-sm-6">
                         <label for="pincode">Brand Name :</label>
                         <input type="text" class="form1" name="brandname" id="productname" placeholder="Brand Name" required="required">
                         </div>
						 
						 <div class="form-group col-md-6 col-sm-6">
                         <label for="pincode">Special Name :</label>
                         <input type="text" class="form1" name="specialname" id="specialname" placeholder="Special Name" required="required">
                         </div>
                         
						 <div class="form-group col-md-6 col-sm-6">
                         <label for="pincode">Iterior/Exterior :</label>
                         <input type="text" class="form1" name="interexter" id="interexter" placeholder="Interior/Exterior" required="required">
                         </div>
						 
						 <div class="form-group col-md-4 col-sm-4" style="padding-right: 0px;">
                         <label for="pincode">Weight :</label>
                         <input type="text" class="form1" id="weight" onkeypress="return isNumberKey(event)" type="text" name="weight" placeholder="Weight : 100 grms" required="required">
                         </div>
                         
                         <div class="form-group col-md-2 col-sm-2" style="padding-left: 0px;">
							<label for="email" style="color:#fff;">Pj</label>
							<select class="form1">
								<option>Select weight</option>
								<option>Grms</option>
								<option>Kgs</option>
								<option>Ltr</option>
								<option>Mlts</option>
							</select>
						 </div>
                         
                         <div class="form-group col-md-6 col-sm-6">
                         <label for="pincode">Available Colors :</label>
                         <input type="text" class="form1" name="availablecolors" id="availablecolors" placeholder="Colors Red,Blue" required="required">
                         </div>
						 
						 <div class="form-group col-md-6 col-sm-6">
                         <label for="pincode">Price :</label>
                         <input type="text" class="form1" name="price" id="price" onkeypress="return isNumberKey(event)" placeholder="Your Price" required="required">
                         </div>
                         
                          <div class="form-group col-md-6 col-sm-6"></div>
                         
                         <div class="col-md-12 row">
                         <div class="form-group col-md-8 col-sm-8" id="dynamicInput">
                         <label for="pincode">Specification :</label>
                         <input type="text" class="form1" name="specification" id="specification" placeholder="Enter Your Specification" required="required">
                         </div>
                         
                          <div class="form-group col-md-4 col-sm-4">
	                      <label style="color:#fff;">Des :</label>
	                      <button type="button" id="more_fields" onclick="addInput('dynamicInput');" class="btn btn-info btn-block" style="line-height:16px;">Add Another</button>
	                      </div>
                          </div>
                         
                         <div class="form-group col-md-12 col-sm-12">
                         <label for="pincode">Description :</label>
                         <textarea class="form-control" rows="1" name="description" placeholder="Enter Your Description" required="required"></textarea>
                         </div>
						 
						 <div class="form-group col-xl-12 col-sm-12 row">
						 <div class="form-groupcol-xl-4 col-sm-4"></div>
						 <div class="form-group col-xl-3 col-sm-3">
						 <label for="pincode"></label>
						 <button type="submit" class="btn btn-info btn-block" name="sub"  id="box"> ADD PAINT </button>
						 </div>
						 <div class="form-group col-xl-4 col-sm-4"></div>
						 </div>
						 </div>
						 </form>
						</div>
						
						<div class="col-xl-4 col-sm-4">
						
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

    </body>
</html>
</html>
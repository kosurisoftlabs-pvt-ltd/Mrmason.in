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
     var limit = 12;
     function addInput(divName){
          if (counter == limit)  {
               alert("You have reached the limit of adding " + counter + " inputs");
          }
          
          else {
        	  
        	  var newdiv = document.createElement('div');
        	  newdiv.innerHTML = '<div class="row"><div class="col-md-12" style="padding: 0 0; margin:3px -1.1%;"><div class="col-md-12"><input type="text" class="form1" name="specification" id="specification" placeholder="Enter Specification" required="required"></div></div>';
              
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


<style>

.dropdown select,
label {
  font-family: AvenirNextCondensed-DemiBold, Corbel, "Lucida Grande","Trebuchet Ms", sans-serif;
}

@media screen and (-ms-high-contrast: active), (-ms-high-contrast: none) {
  .dropdown select::-ms-expand {
    display: none;
  }

 /*  select:focus::-ms-value {
    background: transparent;
    color: #222;
  } */
}

/* body:last-child .dropdown::after, x:-moz-any-link {
  display: none;
}

body:last-child .dropdown select, x:-moz-any-link {
  padding-right: .8em;
}

_::-moz-progress-bar, body:last-child .dropdown {
  overflow: hidden;
}
_::-moz-progress-bar, body:last-child .dropdown:after {
  display: block;
}
_::-moz-progress-bar, body:last-child .dropdown select {
  padding-right: 1.9em;
  -moz-appearance: window;
  text-indent: 0.01px;
  text-overflow: "";
  width: 110%;
}
_::-moz-progress-bar, body:last-child .dropdown select:focus {
  outline: 2px solid rgba(180,222,250, .7);
}

x:-o-prefocus, .dropdown::after {
  display:none;
}

.dropdown:hover {
  border:1px solid #888;
}
 */
select:focus {
  outline:none;
/*    box-shadow: 0 0 1px 3px rgb(255, 255, 255) !important; */
  background-color:transparent;
  color: #222;
  /* border:1px solid #aaa; */
}

select:-moz-focusring {
  color: transparent;
 /*  text-shadow: 0 0 0 #000; */
}
option {
  font-weight:normal;
}

.output {
  padding: 1em; 
}
.colors {
  /* padding: 2em; */
  color: #fff;
  display: none;
}

a {
  color: #c04;
  text-decoration: none;
}
a:hover {
  color: #903;
  text-decoration: underline;
}
</style>
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
                        <h4 class="page-title float-left">Add Paints Details</h4>
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
						<div class="col-xl-8 col-sm-8">
					    <div class="form-group col-md-12 col-sm-12"><%
						 try{if(request.getAttribute("message")!=null){out.println(request.getAttribute("message"));}}catch(Exception e){} %>
						</div>
						<form action="./AddProductSpecs" name="form" method="post" onsubmit="return validation()" enctype="multipart/form-data" >
						 <div class="row">
						 <%
					 	  ArrayList<Category> al= new CategoryService().getAllCategory();
						   %> 
						   	<div class="form-group col-md-6 col-sm-6">
							<label for="email">Product Category :</label>
							<select class="form1" id="productcategory" name="productcategory" onchange="getSubCategory(this.value)">
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
						 
						 <!-- <div class="form-group col-md-6 col-sm-6"> 
						 <label for="email">Product Category :</label>
							 <select class="form1" id="colorselector">
							 <option>Product Category</option>
							 <option value="red">Red</option>
							 <option value="yellow">Yellow</option>
						     <option value="blue">Blue</option>
							 </select>
						 </div> -->
							
                         <div class="form-group col-md-6 col-sm-6">
                         <label for="pincode">Product Sub-Category :</label>
                         <div  id="txtHint3" >
                         <input type="text" class="form1" name="subcategory" id="subcategory" placeholder="Subcategory" required="required">
                         </div>
                         </div>
						 
						 <div class="form-group col-md-6 col-sm-6">
                         <label for="pincode">Brand Name :</label>
                         <input type="text" class="form1" name="brandname" id="brandname" placeholder="Brand Name" required="required">
                         </div>
						 
						 <div class="form-group col-md-6 col-sm-6">
                         <label for="pincode">Special Name :</label>
                         <input type="text" class="form1" name="specialname" id="specialname" placeholder="Special name" required="required">
                         </div>
						 
						<div class="form-group col-md-6 col-sm-6">
                         <label for="pincode">Paint Type :</label>
                         <select class="form1" name="painttype" id="painttype">
                         <option value="I">Interior</option>
                         <option value="E">Exterior</option>
                         </select>
                         </div>
                         <div class="form-group col-md-6 col-sm-6">
                         <label for="SKUID">SKUID :</label>
                         <input type="text" class="form1" name="skuid" id="skuid" placeholder="SKUID" required="required">
                         </div>
                         
                          <div class="form-group col-md-6 col-sm-6">
						    <label for="pincode">Available Colors:</label>
						    <input type="text" class="form1" name="availablecolors" id="availablecolors" placeholder="Red,Green,Peach etc" required="required">
						  </div>
						  
						  <div class="form-group col-md-6 col-sm-6">
						    <label for="pincode">Available Weights:</label>
						    <input type="text" class="form1" name="availableweights" id="availableweights" placeholder="1 Ltr,500 Ml,100 Ml etc" required="required">
						  </div>

                          <div class="form-group col-md-6 col-sm-6"></div>
                         
                         <div class="col-md-12 row">
                         <div class="form-group col-md-6 col-sm-6" id="dynamicInput">
                         <label for="pincode">Specification :</label>
                         <input type="text" class="form1" name="specification" id="specification" placeholder="Enter Specification" required="required">
                         </div>
                         
                          <div class="form-group col-md-4 col-sm-4">
	                      <label style="color:#fff;">Des :</label>
	                      <button type="button" id="more_fields" onclick="addInput('dynamicInput');" class="btn btn-info btn-block" style="line-height:16px;">Add Another</button>
	                      </div>
                          </div>
                         
                         <div class="form-group col-md-12 col-sm-12">
                         <label for="pincode">Uplaod Image :</label>
                         <input class="form1" type="file" name="image"/>
                         </div>
                         
                         
                   <!--  <div class="form-group col-md-12 col-sm-12"">
				    <div class="col-md-12">
				    <input type="text"  class="tcal form2" value="" name="date" id="date" readonly="readonly" placeholder="SELECT DATE"/> 
				    </div>
				    </div> -->
						 
						 <div class="form-group col-xl-12 col-sm-12 row">
						 <div class="form-groupcol-xl-4 col-sm-4"></div>
						 <div class="form-group col-xl-3 col-sm-3">
						 <label for="pincode"></label>
						 <button type="submit" class="btn btn-info btn-block" name="sub"  id="box"> Submit </button>
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
	
	<!--====== hide section =========-->
	<script>
	$(function() {
		  $('#colorselector').change(function(){
		    $('.colors').hide();
		    $('#' + $(this).val()).show();
		  });
		});
	</script>
	<!--====== end hide section =========-->
    </body>
</html>
</html>
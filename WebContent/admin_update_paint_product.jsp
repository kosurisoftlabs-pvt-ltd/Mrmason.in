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
#two{
    padding: 0 0;
    font-size: 17px;
    color: #18aedf;
    text-decoration: underline;
}
#one1{
    border: 2px solid #d2cfcfbd;
    border-radius: 3px;
    padding: 18px 31px;
    width: 100%;
    height: auto;
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
                        <h4 class="page-title float-left">Update Paints Product</h4>
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
						<div class="row">
						<div class="col-xl-8 col-sm-8">
					    <div class="form-group col-md-12 col-sm-12">
					    
					    <form action="./GetASPMaterials" method="post">
        				  <input type="hidden" name="productcategory" value="<%=request.getParameter("productcategory")%>">
        				  <input type="hidden" name="subcategory" value="<%=request.getParameter("subcategory")%>">
        				  <input type="hidden" name="brand" value="<%=request.getParameter("brand")%>">
        				  <input type="hidden" name="page" value="<%=request.getParameter("page")%>">
        				  <button type="submit" class="btn btn-link" id="two">BACK</button>
        				</form>
					    </div>
						<form action="./APaintMaterialUpdate" name="form" method="post" onsubmit="return validation()">
						<c:set var="cat" value="${paintDetails.CATEGORY}" scope="request"/>
						<c:set var="sbcat" value="${paintDetails.SUBCATEGORY}" scope="request"/>
						<c:set var="dtype" value="${paintDetails.DISPLAY}" scope="request"/>
						<input type="hidden" name="pseqid" value="${paintDetails.PAINTS_SEQ_ID}">
						<%
					 		String cate=request.getAttribute("cat").toString();
							String scate=request.getAttribute("sbcat").toString();
							ArrayList<Category> al= new CategoryService().getAllCategory();
							ArrayList<Subcategory> subal= new CategoryService().viewAllSubCategory(cate);
						 %> 
						 <div class="row">
						 <div class="form-group col-md-6 col-sm-6">
                         <label for="pincode">SKU ID :</label>
                         <input type="text" class="form1" name="skuid" id="skuid" value="${paintDetails.SKUID}" placeholder="Your SKU ID" required="required">
                         </div>
                         
                         <div class="form-group col-md-6 col-sm-6">
                         <label for="pincode">Display Online :</label><br>
                        	<%if(request.getAttribute("dtype").toString().equals("Y")) {%>
                        	<input type="radio" name="displaytype" value="Y" checked="checked"> Yes &nbsp; 
                        	<input type="radio" name="displaytype" value="N">No
                        	<%}else{%>
                        	<input type="radio" name="displaytype" value="Y">Yes
                        	<input type="radio" name="displaytype" value="N" checked="checked"> No
                        	<%}%>
                         </div>
                         
							<div class="form-group col-md-6 col-sm-6">
							<label for="email">Product Category :</label>
							<select class="form1" id="service" name="productcategory" onchange="getSubCategory(this.value)">
								<option>Product Category</option>
								 <%
								for(int i =0;i<al.size();i++)
								{
									Category cat=al.get(i);
									
									if(cat.getCAT_ID()==Integer.parseInt(cate))
									{%>
									<option selected="selected" value="<%=cat.getCAT_ID()%>"><%=cat.getCATEGORY()%></option>	
									<%}else
									{
								%>
								<option value="<%=cat.getCAT_ID()%>"><%=cat.getCATEGORY()%></option>	
								<%}}
								%> 
							</select>
						 </div>
						 
						 <div class="form-group col-md-6 col-sm-6">
                         <label for="pincode">Product Sub-Category :</label>
                         <div  id="txtHint3" >
                         <select class="form1" id="subcategory" name="subcategory">
								<option>Product Subcategory</option>
								 <%
								for(int i =0;i<subal.size();i++)
								{
									Subcategory scat=subal.get(i);
									
									if(scat.getMat_subcat_seq_id()==Integer.parseInt(scate))
									{%>
									<option selected="selected" value="<%=scat.getMat_subcat_seq_id()%>"><%=scat.getSUBCATEGORY()%></option>	
									<%}else
									{
								%>
								<option value="<%=scat.getMat_subcat_seq_id()%>"><%=scat.getSUBCATEGORY()%></option>	
								<%}}
								%> 
							</select>
                         </div>
                         </div>
                         
						 
						 <div class="form-group col-md-6 col-sm-6">
                         <label for="pincode">Brand Name :</label>
                         <input type="hidden" name="brand" value="<%=request.getParameter("brand")%>">
                         <input type="text" class="form1" name="brandname" id="productname" value="${paintDetails.MANUFACTURER_NAME}" placeholder="Brand Name" required="required">
                         </div>
						 
						 <div class="form-group col-md-6 col-sm-6">
                         <label for="pincode">Special Name :</label>
                         <input type="text" class="form1" name="specialname" id="specialname" value="${paintDetails.SPECIAL_NAME}" placeholder="Special Name" required="required">
                         </div>
                         
						 <div class="form-group col-md-6 col-sm-6">
                         <label for="pincode">Iterior/Exterior :</label>
                         <c:set var="painttype" value="${paintDetails.INTER_EXTER}" scope="request" />
                         <select name="interexter" class="form1">
                         <% if(request.getAttribute("painttype").equals("I")) {%>
                         	<option value="I" selected="selected">Interior</option>
                         	<option value="E">Exterior</option>
                         	<%}else{ %>
                         	<option value="I">Interior</option>
                         	<option value="E" selected="selected">Exterior</option>
                         	<%} %>
                         </select>
                         </div>
						 
                         <%-- 
                         <div class="form-group col-md-6 col-sm-6">
                         <label for="pincode">Available Colors :</label>
                         <input type="text" class="form1" name="availablecolors" id="availablecolors" value="${paintDetails.AVAILABLE_COLORS}" placeholder="Colors Red,Blue" required="required">
                         </div>
						 
						 <div class="form-group col-md-6 col-sm-6">
                         <label for="pincode">Price :</label>
                         <input type="text" class="form1" name="price" id="price"value="${paintDetails.PRICE}" placeholder="Your Price" required="required">
                         </div>
                         
                         <div class="form-group col-md-6 col-sm-6">
                         <label for="pincode">Description :</label>
                         <input type="text" class="form1" name="description" id="description"value="${paintDetails.DESCRIPTION}" placeholder="Description" required="required">
                         </div> --%>
                         
                         <div class="form-group col-md-6 col-sm-6">
                         <label for="pincode">Specification1 :</label>
                         <input type="text" class="form1" name="Specification1" id="Specification1"value="${paintDetails.SPECIFICATION1}" placeholder="Specification" required="required">
                         </div>
                         
                         
                         <div class="form-group col-md-6 col-sm-6">
                         <label for="pincode">Specification2 :</label>
                         <input type="text" class="form1" name="Specification2" id="Specification2"value="${paintDetails.SPECIFICATION2}" placeholder="Specification" required="required">
                         </div>
                         
                         <div class="form-group col-md-6 col-sm-6">
                         <label for="pincode">Specification3 :</label>
                         <input type="text" class="form1" name="Specification3" id="Specification3"value="${paintDetails.SPECIFICATION3}" placeholder="Specification" required="required">
                         </div>
                         
                         <div class="form-group col-md-6 col-sm-6">
                         <label for="pincode">Specification4 :</label>
                         <input type="text" class="form1" name="Specification4" id="Specification4"value="${paintDetails.SPECIFICATION4}" placeholder="Specification" required="required">
                         </div>
                         
                         <div class="form-group col-md-6 col-sm-6">
                         <label for="pincode">Specification5 :</label>
                         <input type="text" class="form1" name="Specification5" id="Specification5"value="${paintDetails.SPECIFICATION5}" placeholder="Specification" required="required">
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
						 </form>
						</div>
						
						 <div class="col-xl-4 col-sm-4">
						 <div class="form-group col-md-12 col-sm-12">
                         <label for="pincode">Image : </label><br>
                         <img src="data:image/*;base64,${paintDetails.PAINTSIMAGE }" alt="No image" class="img-responsive img-rounded " id="one1"/>
                         
                         <input id="two1"  type="file" value="update" class="form1" name="photo" accept="image/*"required"/>
                         <input type="hidden" class="form-control form1" id="two1" name="image" value="${paintsDetails.PAINTSIMAGE}">
                         <%-- <c:set var="photo" value="${paintsDetails.PAINTSIMAGE}" scope="request"/>
                         <%
                         String photo1 = request.getAttribute("photo").toString();
                         if(photo1.length()<=8)
                         {%>
                         <img src="./images/NoImage.png" alt="No image"  width="150px" height="120px" class="form-group">
						 <input id="two1"  type="file" value="update" name="photo" accept="image/*"required">
					 	<%
						 }
                         else
                         {
                         %>
                         <img src="data:image/jpg;base64,${paintsDetails.PAINTSIMAGE}" alt="No image" width="150px" height="120px" class="img-rounded"/>
						 <input id="two1"  type="file" value="update" name="photo" accept="image/*"required"/>
						 <input type="hidden" class="form-control" id="two1" name="image" value="${paintsDetails.PAINTSIMAGE}">
						 <%}%> --%>
						
                         </div>
						</div>
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
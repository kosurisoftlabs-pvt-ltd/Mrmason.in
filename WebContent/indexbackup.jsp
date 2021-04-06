<%@ page language="java" import="com.mason.bean.*,java.util.*,com.mason.service.*" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
<%response.setHeader("Cache-Control", "private,no-store,no-cache"); %>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
        <title>Mister Mason | Supplier of Masonry Workers - Electricians - Plumbers - Painters - Carpenters - Building Materials and property developers </title> <!-- Building Materials - -->
        <link href="images/Home.png" type="img/Home-512.png" rel="icon">
          
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
        
        <link href="https://ajax.googleapis.com/ajax/libs/jqueryui/1.8/themes/base/jquery-ui.css" rel="stylesheet" type="text/css"/>
   		<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.5/jquery.min.js"></script>
   		<script src="https://ajax.googleapis.com/ajax/libs/jqueryui/1.8/jquery-ui.min.js"></script>
        
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
        <!-- <script type="text/javascript" language="javascript" src="assets/js/FlameViewportScale.js"></script> -->
        <link href="assets/css/base.css" rel="stylesheet" type="text/css"/>
        <link href="assets/css/style1.css" rel="stylesheet" type="text/css"/>
        <script async src="https://www.googletagmanager.com/gtag/js?id=UA-120521027-1"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/animejs/2.0.2/anime.min.js"></script>
        <script type="text/javascript">

       
        
        
		function validate()
		{
			if(document.getElementById("productcategory").value == "Product Category")
				{
					alert("Please Select any Category");
					return false;
				}
		}
		 function CheckNumeric(e) {
			    
		     if (window.event) // IE 
		     {
		         if ((e.keyCode < 48 || e.keyCode > 57) & e.keyCode != 8) {
		             event.returnValue = false;
		           return false;

		         }
		     }
		     else { // Fire Fox
		         if ((e.which < 48 || e.which > 57) & e.which != 8) {
		             e.preventDefault();
		             return false;

		         }
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
		xmlhttp.open("GET","./getiSubCategoryAll.jsp?catid="+str,true);
		xmlhttp.send();
		}
		function getBrands(str)
		{
			
		if (str=="")
		  {
		  document.getElementById("txtHint4").innerHTML="";
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
		    document.getElementById("txtHint4").innerHTML=xmlhttp.responseText;
		    }
		  }
		xmlhttp.open("GET","./getBrands.jsp?subcatid="+str,true);
		xmlhttp.send();
		}
		</script>
       <style>
       .form-control:focus {
     border-color:#3c653e;
    outline: 0;
    -webkit-box-shadow: inset 0 1px 1px rgba(0,0,0,.075), 0 0 8px rgb(255, 255, 255);
    /* box-shadow: inset 0 1px 1px rgba(0,0,0,.075), 0 0 8px rgba(102,175,233,.6); */
     }
 
	 :focus {
	 outline: -webkit-focus-ring-color auto 0px; !important;
	 }  
	 .sticky + .content {
    padding-top: 70px;
    }
 .content {
    padding:0px !important;
  }
    .use{
     color: #7d7d7d;
    line-height: 23px;
    letter-spacing: 0.25px;
    font-size: 16px;
    margin: 7px 0;
    }
    #te3{
        font-size: 17px;
    color: #000000;
    font-family: sans-serif;
    font-weight: 500;
    margin-top: 0px;

    }
    .tr{
        text-transform: uppercase;
        }
   </style> 
   
   
   <meta name="google-site-verification" content="gG3OAGF9VX_pK7SbcB2KhRDYWhhAaj6EQspeOjVcyrE" />

  
	    </head>
	 
	    <body onscroll="myFunction()">
	      <!-- page loader -->
	      <!-- <div class="se-pre-con"></div> -->
	      <div id="page-content" style="background: #fff">  
	      <jsp:include page="./homeTop.jsp"></jsp:include>
	      <div class="slider-wrapper ">
	      <div class="col-md-12 ">  
          <div id="myCarousel" class="carousel slide text-center" data-ride="carousel">
          <!-- <div class="carousel-inner " role="listbox">
          <div class="item active">
          <h4 class="box3 gfont">Free Posting Cars And Bikes</h4>
          <h5 class="box4 gfont">Vaahan Mitra</h5>
          </div>
          <div class="item">
          <h4 class="box3 gfont">Search</h4>
          <h5 class="box4 gfont">Sell Your Used Cars And Bikes</h5>
          </div>
          <div class="item">
          <h4 class="box3 gfont">Search</h4>
          <h5 class="box4 gfont">Used Cars And  Bikes</h5>
          </div>
 
          <div class="item">
          <h4 class="box3 gfont">Free posting your service Center and Spareparts Shop  </h4>
          </div>
          </div> -->
               <!--=======================Start Search Panel by Mahesh Kosuri      ============ -->    
           
          </div>

           </div>
           <div class="responisve-container">
           <div class="slider">
           </div>
           </div>
           </div>
           
            
                <div class="containe boking-inner" style="padding: 0 15px;">
                <div class="row">
                <div class=""><!-- courses_banner32 -->
                <iframe class="col-md-12 col-sm-12 col-xs-12 media" marginheight="50" frameBorder="0"  src="mrmasonslider.html" width="100%" height="375px" scrolling="no" style="padding: 0 0;">
                </iframe>
                <div class="col-sm-12 mason">
                   <!-- <div class="col-md-1"></div> style="padding-left: 0px;" -->
                    <div class="col-md-4 col-xs-12">
                    <div class="containe">
                    <div class="row">
                    <div class="board">
                    <div class="board-inner">
                    <ul class="nav nav-tabs1" id="myTab">
                    <div class="liner"> </div>
                    <!-- <li class="active">
                    <a href="#home" data-toggle="tab" title="Building Materials">
                    <span class="round-tabs1 one1">
                    <i class="fa fa-home"></i>
                    </span> 
                    </a> </li> -->

                     <li><a href="#profile" data-toggle="tab" title="Service Request">
                     <span class="round-tabs1 two1">
                     <i class="fa fa-server"></i>
                     </span> 
                     </a>
                     </li>
                     
                     <li>
                     <a href="#SearchWorks" data-toggle="tab" title="Search Works">
                     <span class="round-tabs1 two1">
                     <i class="fa fa-server"></i>
                     </span> 
                     </a>
                     </li>
                     <!---<li><a href="#messages" data-toggle="tab" title="Homes/Rental">
                     <span class="round-tabs1 three1">
                     <i class="fa fa-home"></i>
                     </span> </a>
                     </li>

                     <li><a href="#doner" data-toggle="tab" title="Rentals">
                     <span class="round-tabs1 five1">
                     <i class="fa fa-retweet" ></i>
                     </span> </a>
                     </li> -->
                     </ul></div>

                     <div class="tab-content">
                     
                     
                     
                      <!--======================= End Search Panel by Mahesh Kosuri      ============ -->     
                     
                     
                    
                     <!--======================= Start Google API copied from zorocabs by Mahesh Kosuri      ============ -->     
                     
         
      
     <!--  <script type="text/javascript" src="https://maps.googleapis.com/maps/api/js?key=AIzaSyBE49eJ-hTzLNA7IKZ2DOnW-4BBHDzDXlA&sensor=false&libraries=places&callback=initMap"></script>        -->  
        	           
                     
   <script>
	   
	   var options = {
  			   types: ['(cities)'],
		        componentRestrictions: { country: "IN" }
		    };
	   
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

	
    System.out.println('locationTextField1') 
    var autocomplete = new google.maps.places.Autocomplete(input, options);
	            
	}          

function initMap2() {
    
	var input = document.getElementById('locationTextField2');
	                
	var autocomplete = new google.maps.places.Autocomplete(input, options1);
	            
	}

function initMap3() {
    
	var input = document.getElementById('locationTextField3');
	                
	var autocomplete = new google.maps.places.Autocomplete(input, options);
	            
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

                     
                     
                       
                     
                     
                      <!--======================= End of Google API copied from zorocabs by Mahesh Kosuri      ============ -->     
                     
                     
                     
                     <!--======================= new car section ==================== -->
                                   <%-- <div class="tab-pane fade in active" id="home">
                                   <form action="./GetBuildingMaterials" method="post" onsubmit="return validate()">
                                   <div class="col-md-12 col-sm-12 col-xs-12">
                                   <div class="row panel-margin">
	                                          
                         <%
					 	  ArrayList<Category> al= new CategoryService().getAllCategory();
						   %> 
						   	<div class="col-xs-12 col-sm-6 col-md-6 hidden-sm panel-padding form-group">
							<label for="email"></label>
							<select class="form-control" id="productcategory" name="productcategory" onchange="getSubCategory(this.value)">
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
                                                 
                         <div class="col-xs-12 col-sm-6 col-md-6 hidden-sm panel-padding form-group">
                         <label for="pincode"></label>
                         <div  id="txtHint3" >
                         <input type="text" class="form-control form1" name="subcategory" id="subcategory" placeholder="Subcategory" required="required">
                         </div>
                         </div>
                                                
                         <div class="col-xs-12 col-sm-6 col-md-6 hidden-sm panel-padding form-group">
                         <label for="pincode"></label>
                         <div  id="txtHint4" >
                         <input type="text" class="form-control form1" name="brand" id="brand" placeholder="Enter Your Brand">
                         </div>
                         </div>
                                                
                        <div class="col-xs-12 col-sm-6 col-md-6 hidden-sm panel-padding form-group">
                        <label class="lable1"></label>
                        <input type="text" class="form-control form1" id="Material Type" placeholder="Material Type" name="Material Type">
                        </div>
                        
                         <div class="col-xs-12 col-sm-6 col-md-6 hidden-sm panel-padding form-group">
                         <label class="lable1"> </label>
                         <input type="text" class="form-control form1" id="pincode" placeholder="Pincode/City" name="city">
                         </div>
                         
                         <div class="col-xs-12 col-sm-12 col-md-12 hidden-sm panel-padding form-group">
						<div class="col-xs-12 col-sm-6 col-md-4 hidden-sm panel-padding form-group"></div>
						<div class="col-xs-12 col-sm-6 col-md-4 hidden-sm panel-padding form-group">
                       <button type="submit" class="btn btn-danger btn-block">Search</button>
                       </div>
                       <div class="col-xs-12 col-sm-6 col-md-4 hidden-sm panel-padding form-group"></div>
						</div>
                                         
                         </div>
                     </div>
                     </form>
                     </div> --%>
                        <!--==================== end new car section =====================-->
                        
                        <!--=================== Start Submit  service request section ========================-->
                          <div class="tab-pane fade in active" id="profile"><!-- tab-pane fade -->
                          <form action="./ServiceRequest" method="post">
                                            <div class="col-xs-12 col-sm-12 col-md-12">
                                             <div class="row panel-margin">
                                             
                                               <div class="col-xs-12 col-sm-6 col-md-6 hidden-sm panel-padding form-group">
                                               <label class="lable1"></label>
                                               <select name="service" id="service" class="form-control" required="required"/>
										       	   <option>Service Type</option>
											       <option>Carpenter</option>
											       <option>Electrician</option>
											       <option>Masonry Worker</option>
											       <option>Painter</option>
											       <option>Plumber</option>
											       
										       </select>
                                               </div>
                                               
                                               <div class="col-xs-12 col-sm-6 col-md-6 hidden-sm panel-padding form-group">
                                               <label class="lable1"></label>
                                            <!----   <input type="text" class="form-control" id="pincode1" name="pincode1" placeholder="Enter Work location" required="required"/>   mahesh code change below line-->
                                                <input type="text"  name="pincode1" class="form-control" id="pincode1" placeholder="Enter Work location" required="required"/>
                                               
                                               	
                                               </div>
                                            
                                              <!-- 
                                               <div class="col-xs-12 col-sm-6 col-md-6 hidden-sm panel-padding form-group">
                                               <p></p>
                                               <label class="lable1" id="te3">Service Date :</label>
                                               </div> -->
                                               
                                                <div class="col-xs-12 col-sm-6 col-md-6 hidden-sm panel-padding form-group">
                                                <label class="lable1" id="te3">Service Date :</label>
                                                <input type="date" class="form-control tr" id="reqDate" name="reqDate" placeholder="DD-MM-YYYY">
                                                </div>
                                               
                                               <div class="col-xs-12 col-sm-12 col-md-12 hidden-sm panel-padding form-group">
                                               <label class="lable1"></label>
                                               <textarea class="form-control" rows="2" name="description" placeholder="Service Description ...." required="required"></textarea>
                                               </div>
                                               
                                               <!-- <div class="col-xs-12 col-sm-12 col-md-12 hidden-sm panel-padding form-group">
                                               <p class="use"><a href="#">New User Register?</a> </p>
                                               </div> -->
                                          
												<div class="col-xs-12 col-sm-12 col-md-12 hidden-sm panel-padding form-group" id="">
												<div class="col-xs-12 col-sm-6 col-md-4 hidden-sm panel-padding form-group"></div>
												<div class="col-xs-12 col-sm-6 col-md-4 hidden-sm panel-padding form-group">
                                                <button type="submit" class="btn btn-danger btn-block">Submit</button>
                                                </div>
                                                <div class="col-xs-12 col-sm-6 col-md-4 hidden-sm panel-padding form-group"></div>
												</div>
												
                                                </div>
                                            </div>
                                            </form>
                          
                                            </div>
                      
                     
                      
                      <!-- Open Search Works Section -->
                      
                      <div class="tab-pane fade in" id="SearchWorks"><!-- tab-pane fade -->
                          <form action="#" method="post">
                                            <div class="col-xs-12 col-sm-12 col-md-12">
                                             <div class="row panel-margin">
                                             
                                               <div class="col-xs-12 col-sm-6 col-md-6 hidden-sm panel-padding form-group">
                                               <label class="lable1"></label>
                                               <select name="service" id="service" class="form-control" required="required"/>
										       	   <option>Service Type</option>
											       <option>Carpenter</option>
											       <option>Electrician</option>
											       <option>Masonry Worker</option>
											       <option>Painter</option>
											       <option>Plumber</option>
											       
										       </select>
                                               </div>
                                               
                                               <div class="col-xs-12 col-sm-6 col-md-6 hidden-sm panel-padding form-group">
                                               <label class="lable1"></label>
                                            <!----   <input type="text" class="form-control" id="pincode1" name="pincode1" placeholder="Enter Work location" required="required"/>   mahesh code change below line-->
                                                <input type="text" class="form-control" id="locationTextField1" placeholder="Enter Work location" required="required"/>
                                               
                                               	
                                               </div>
                                            
                                              <!-- 
                                               <div class="col-xs-12 col-sm-6 col-md-6 hidden-sm panel-padding form-group">
                                               <p></p>
                                               <label class="lable1" id="te3">Service Date :</label>
                                               </div> -->
                                               
                                                <div class="col-xs-12 col-sm-6 col-md-6 hidden-sm panel-padding form-group">
                                                <label class="lable1" id="te3">Service Date :</label>
                                                 <input type="date" class="form-control tr" id="reqDate" name="reqDate" placeholder="DD-MM-YYYY">
                                                </div>
                                                
                                               
                                               <div class="col-xs-12 col-sm-12 col-md-12 hidden-sm panel-padding form-group">
                                               <label class="lable1"></label>
                                               <textarea class="form-control" rows="2" name="description" placeholder="Service Description ...." required="required"></textarea>
                                               </div>
                                               
                                               <!-- <div class="col-xs-12 col-sm-12 col-md-12 hidden-sm panel-padding form-group">
                                               <p class="use"><a href="#">New User Register?</a> </p>
                                               </div> -->
                                          
												<div class="col-xs-12 col-sm-12 col-md-12 hidden-sm panel-padding form-group" id="">
												<div class="col-xs-12 col-sm-6 col-md-4 hidden-sm panel-padding form-group"></div>
												<div class="col-xs-12 col-sm-6 col-md-4 hidden-sm panel-padding form-group">
                                                <button type="submit" class="btn btn-danger btn-block">Submit</button>
                                                </div>
                                                <div class="col-xs-12 col-sm-6 col-md-4 hidden-sm panel-padding form-group"></div>
												</div>
												
                                                </div>
                                            </div>
                                            </form>
                          
                                            </div>
                      
                      <!-- End Search Works Section -->
                      
                       <!--=================== Start Submit  service request section ========================-->
                      
                      <!--==================== new Material Search section =======================-->
                                   <div class="tab-pane fade" id="messages">
                                    <form action="./SearchHMechanic" method="post">
                                            <div class="col-xs-12 col-sm-12 col-md-12">
                                             <div class="row panel-margin">
                                             
                                            
                                                <div class="col-xs-12 col-sm-6 col-md-6 hidden-sm panel-padding form-group">
                                                 <label class="lable1">Product Category</label>
                                                 <input type="text" class="form-control" id="Category" placeholder="Product Category" name="Category">
                                                 </div>
                                                 
                                                 <div class="col-xs-12 col-sm-6 col-md-6 hidden-sm panel-padding form-group" >
                                                 <label class="lable1">Sub Category</label>
                                                 <input type="text" class="form-control" id="Category" placeholder="Sub Category" name="Category">
                                                 </div>
                                                
                                               <div class="col-xs-12 col-sm-6 col-md-6 hidden-sm panel-padding form-group">
                                               <label class="lable1">Material Type</label>
                                               <input type="text" class="form-control" id="Material Type" placeholder="Material Type" name="Material Type">
                                               </div>
                                               
                                                <div class="col-xs-12 col-sm-6 col-md-6 hidden-sm panel-padding form-group">
                                                <label class="lable1">Brand</label>
                                                <input type="text" class="form-control" id="Brand" placeholder="Brand" name="brand">
                                                </div>
                                                
                                                <div class="col-xs-12 col-sm-6 col-md-6 hidden-sm panel-padding form-group">
                                                <label class="lable1">Pincode/City </label>
                                                <input type="text" class="form-control" id="pincode" placeholder="Pincode/City" name="city">
                                                </div>
                                                
                                                <div class="col-xs-12 col-sm-12 col-md-12 hidden-sm panel-padding form-group">
												<div class="col-xs-12 col-sm-6 col-md-4 hidden-sm panel-padding form-group"></div>
												<div class="col-xs-12 col-sm-6 col-md-4 hidden-sm panel-padding form-group">
                                                <button type="submit" class="btn btn-danger btn-block">Search</button>
                                                </div>
                                                <div class="col-xs-12 col-sm-6 col-md-4 hidden-sm panel-padding form-group"></div>
												</div>
                                                </div>
                                               </div>
                                          
                                            </form>
                                          </div>
                      <!-- ======================= end Matreial center section =======================-->
                      
                      <!--===================new Material  section =====================-->
                                  <div class="tab-pane fade" id="doner">
                                          <form action="./SearchHSpareParts" method="post">
                                          <div class="col-xs-12 col-sm-9 col-md-12">
                                          <div class="row panel-margin">
                                                
                                                <div class="col-xs-12 col-sm-6 col-md-6 hidden-sm panel-padding form-group">
                                                 <label class="lable1">Product Category</label>
                                                 <input type="text" class="form-control" id="Category" placeholder="Product Category" name="Category">
                                                 </div>
                                                 
                                                 <div class="col-xs-12 col-sm-6 col-md-6 hidden-sm panel-padding form-group" >
                                                 <label class="lable1">Sub Category</label>
                                                 <input type="text" class="form-control" id="Category" placeholder="Sub Category" name="Category">
                                                 </div>
                                                
                                               <div class="col-xs-12 col-sm-6 col-md-6 hidden-sm panel-padding form-group">
                                               <label class="lable1">Material Type</label>
                                               <input type="text" class="form-control" id="Material Type" placeholder="Material Type" name="Material Type">
                                               </div>
                                                
                                                <div class="col-xs-12 col-sm-6 col-md-6 hidden-sm panel-padding form-group">
                                                <label class="lable1">Brand</label>
                                                <input type="text" class="form-control" id="Brand" placeholder="Brand" name="brand">
                                                </div>
                                                
                                                <div class="col-xs-12 col-sm-6 col-md-6 hidden-sm panel-padding form-group">
                                                <label class="lable1">Pincode/City </label>
                                                <input type="text" class="form-control" id="pincode" placeholder="Pincode/City" name="city">
                                                </div>
                                                
                                                <div class="col-xs-12 col-sm-12 col-md-12 hidden-sm panel-padding form-group">
												<div class="col-xs-12 col-sm-6 col-md-4 hidden-sm panel-padding form-group"></div>
												<div class="col-xs-12 col-sm-6 col-md-4 hidden-sm panel-padding form-group">
                                                <button type="submit" class="btn btn-danger btn-block">Search</button>
                                                </div>
                                                <div class="col-xs-12 col-sm-6 col-md-4 hidden-sm panel-padding form-group"></div>
												</div>
                                                </div>
                                            </div>
                                           
                                            </form>
                                          </div>
                  
								<div class="clearfix"></div>
								</div>
								
								</div>
								</div>
								</div>
				                </div> 
			<!--================ end Material center section ================--> 
			
		    <!--==================== slider section =======================--> 		                
				                <div class="col-md-8 col-xs-12" id="me8"> 
				                       <div class="mr1"> 
				                       <marquee behavior="alternate" style="6" scrolldelay="20" direction="left" onmouseover="this.stop()" onmouseout="this.start()"></marquee> 
				                        <h3>Available On Call </h3>  
				                      
				                       </div> 
				                     
                   <h1 class="ml6">
                   <span class="text-wrapper">  
                   <span class="letters">MASONRY WORKERS - PAINTERS - PLUMBERS</span>
                   </span>
                   </h1>
                   
                   <h1 class="ml6">
                   <span class="text-wrapper">
                   <span class="letters">ELICTRICIANS - CARPENTERS</span>
                   </span>
                   </h1>
                   
                    <h1 class="ml6">
                   <span class="text-wrapper">
                   <span class="letters">ALL BUILDING SERVICES UNDER ONE UMBRELLA</span>
                   </span>
                   </h1>
                   
                   <h1 class="ml6">
                   <span class="text-wrapper">
                   <span class="letters">GET QUOTES FROM  OUR TRUSTED BUSINESS PARTNERS</span>
                   </span>
                   </h1>
                   
                   <h1 class="ml6">
                   <span class="text-wrapper">
                   <span class="letters">GET SERVICE FROM OUR PROFESSIONALS</span>
                   </span>
                   </h1>
                 
                 
				                </div> 
				           <!-- <div class="col-md-1 col-xs-12"></div>  -->     
        <!--=================== end slider section ======================--> 	      
				                </div>
				                </div>
				                
				                </div>
				                </div>
    
               <!--========================== new section ========================== -->
                                    <br>
                                   <div class="container boking-inner">
                                   <div class="row">
                                    <div class="col-sm-12">
                                    <div class="panel">
                                    <div class="panel-heading">
                                    <ul class="nav nav-tabs">
                                   <!--  
                                     <li align="center"  class="active col-md-2 col-sm-6 col-xs-12" id="p-well"><a id="show" href="#tab1default1" data-toggle="tab"><i class="fa fa-building-o"></i> . Building Materials </a></li>
                                 	 <li align="center" class= "col-md-2 col-sm-6 col-xs-12" id="p-well"><a id="hide" href="#tab2default2" data-toggle="tab"><i class="fa fa-deviantart"></i> Property Developers</a></li>
                                     <li align="center" class= "col-md-2 col-sm-6 col-xs-12" id="p-well" ><a href="#tab3default3" data-toggle="tab"><i class="fa fa-home"></i> Electricity</a></li>
                                     <li align="center" class= "col-md-2 col-sm-6 col-xs-12" id="p-well"><a href="#tab5default5" data-toggle="tab"><i class="fa fa-retweet"></i> Plumbing</a></li> -->
                                     </ul>
                                     </div>
                                   
                                   <div class="panel-body" >
                                   <div class="tab-content">
                                
                                    <div class="tab-pane fade in active" id="tab1default1" style="padding-top: 4px;">
                                    <iframe class="embed-responsive-item col-md-12 col-sm-12 col-xs-12 media" marginheight="50" frameBorder="0"  src="car.html" width="100%" height="265px" scrolling="no" style="padding: 0 0;">
                                    </iframe>
                                    </div>
                                    
                                   <!--  <div class="tab-pane fade" id="tab2default2" style="padding-top: 4px;">
                                    <iframe frameBorder="0" class="col-md-12 col-sm-12 col-xs-12" src="bike.html" width="100%" height="280px" scrolling="no" style="padding: 0 0;">
                                    </iframe>                                          
                                    </div> -->
                                   <!--  
                                    <div class="tab-pane fade" id="tab4default4" style="padding-top: 4px;">
                                    <iframe class="col-md-12 col-sm-12 col-xs-12 media" marginheight="50" frameBorder="0"  src="car.html" width="100%" height="310px" scrolling="no" style="padding: 0 0;">
                                    </iframe>
                                    </div>
                                    
                                    <div class="tab-pane fade" id="tab3default3" style="padding-top: 4px;">      
                                    <iframe frameBorder="0" class="col-md-12 col-sm-12 col-xs-12" src="service1.html" width="100%" height="270px" scrolling="no" style="padding: 0 0;">    
                                    </iframe>
                                    </div>
                               
                                    <div class="tab-pane fade" id="tab5default5" style="padding-top:8px;">
                                    <iframe frameBorder="0" class="col-md-12 col-sm-12 col-xs-12" src="service.html" width="100%" height="250px" scrolling="no" style="padding: 0 0;">    
                                    </iframe>
                                    </div> -->
                                    
                                    </div>
                                    </div>
                                    </div>

                                    <div class="container">
                                    <div class="col-md-12">
                                    <p></p>
                                    </div>

                                    </div>
                                    <div  class="container">
                                    </div>
                        
                                    </div>
                                    </div>
                                    </div>
            <!--============================ end new section =========================== -->
           
                <section class="service-inner">
                <div class="container ">
                <div class="row bg-success" style="height: 37px;margin: 0px 28px 0px 10px; border: 1px solid #fff; border-radius: 5px;">
                <div class="col-md-6 col-md-offset-3">
                <div class="title">
                <h2 style="margin: 0 0;"> Services</h2>      
                </div>
                </div>
                </div>
                
                <div class="row">
                <div class="col-sm-12 col-md-12" style="margin-top: -1em;">
                <div class="col-sm-3 inner-box">
                <article>
                <div class="col-md-12" style="font-size: 50px;"><i class="fa fa-building-o" aria-hidden="true"></i></div>
                <!--   <img style="width:46px;" src="assets/images/car.png" alt="Smiley face" width="42" height="42"> -->
                <div class="content-text">
                <h5> Building Materials</h5>
                <p>
               Building material is any material which is used for construction purposes. Many naturally occurring substances, such as clay, rocks, sand, and wood, even twigs and leaves, have been used to construct buildings.. 
                <br>
                <a type="submit" class="btn btn-primary btn-block" href="./register.jsp">Register</a>
                </p>
                </div>
                </article>
                </div>
                           
                <div class="col-sm-3 inner-box">
                <article>
                <div class="col-md-12" style="font-size: 50px;"><i class="fa fa-deviantart" aria-hidden="true"></i></div>
                <!--  <img style="width:70px;" src="assets/images/motorbycle.png" alt="Smiley face" width="42" height="42"> -->
                <div class="content-text">
                <h5>Property Developers</h5>
                <p>
               Property developers are perhaps best seen as 'conductors'. A Property Developer is likely to engage in a wide range of property related activities - finding the best locations, sourcing funds, obtaining planning.. 
                <br><!-- <div class="col-md-12 btn-primary "><a  class="whits" href="./register.jsp">Register</a></div> -->
                <a type="submit" class="btn btn-primary btn-block" href="./register.jsp">Register</a>
                </p>
                </div>
                </article>
                </div>
                
                <div class="col-sm-3 inner-box">
                <article>
                <div class="col-md-12" style="font-size: 50px;"><i class="fa fa-home" aria-hidden="true"></i></div>
                <!-- <img style="width:46px;" src="assets/images/service.png" alt="Smiley face" width="42" height="42"> -->
                <div class="content-text">
                <h5>Plumbing</h5>
                <p>
                Plumbers spend most of their time with customers or on site, so it's a job of both communication and skill. While strictly a 40-hour-per-week job, many plumbers work overtime,although self-employed plumbers.. 
                <br><!-- <div class="col-md-12 btn-primary "><a class="whits" href="./register.jsp">Register</a></div> -->
                <a type="submit" class="btn btn-primary btn-block" href="./register.jsp">Register</a>
                </p>
                </div>
                </article>
                </div>
                            
               <div class="col-sm-3 inner-box">
               <article>
               <div class="col-md-12" style="font-size: 50px;"><i class="fa fa-retweet" ></i></div>
               <!-- <img style="width:82px;" src="assets/images/used-cars.png" alt="Smiley face" width="42" height="42"> -->
               <div class="content-text">          
               <h5>Electrical</h5>
               <p>
		       An electric light is a device that produces visible light from electric current. It is the most lighting providing interior lighting for buildings and exterior light for evening and nighttime activities .. 
		       <br><!-- <div class="col-md-12 btn-primary"><a class="whits"  href="./register.jsp">Register</a></div> -->
			   <a type="submit" class="btn btn-primary btn-block" href="./register.jsp">Register</a>
               </p>
               </div>
               </article>
               </div>
                            
               </div>
               </div>
               </div>
              </section>
            
            <!-- blog section -->
                <section class="blog-inner">
                <div class="container">
                <div class="row bg-success" style="height: 37px;margin: 0px 28px 0px 10px; border: 1px solid #fff; border-radius: 5px;">
                <div class="col-md-6 col-md-offset-3">
                <div class="title">
                <h2 style="margin: 0 0;">Homes Under Construction</h2>
                </div>
                </div>
                </div>
                <iframe frameBorder="0" class="col-md-12 col-sm-12 col-xs-12" src="used-cars.html" width="100%" height="275px" scrolling="no" style="padding: 0 0;">
                </iframe>
                </div>
                </section>
                
                   <!-- <section class="container">
                   <div class="row bg-success" style="height: 37px;margin: 0px 28px 0px 10px; border: 1px solid #fff; border-radius: 5px;">
                   <div class="col-md-12 col-sm-12 col-xs-12">
                   <div class="title">
                   <h2 style="margin: 0 0;">Service center</h2>
                   </div>
                   </div> 
                   </div> 
                   <br>      
                  <iframe frameBorder="0" class="col-md-12 col-sm-12 col-xs-12" src="service.html" width="100%" height="270px" scrolling="no" style="padding: 0 0;"></iframe>
                  </section>
                    -->
            
        </div>
        <!-- Footer Section -->
        <footer>
            <jsp:include page="footer.jsp"></jsp:include>
        </footer>
        <!-- jQuery -->
        <script src="assets/js/jquery.min.js" type="text/javascript"></script>
        <!-- jquery ui js -->
        <script src="assets/js/jquery-ui.min.js" type="text/javascript"></script>
        <!-- bootstrap js -->
        <script src="assets/js/bootstrap.min.js" type="text/javascript"></script>
        <!-- fraction slider js -->
        <script src="assets/js/jquery.fractionslider.js" type="text/javascript"></script>
        <!-- owl carousel js --> 
        <script src="assets/owl-carousel/owl.carousel.min.js" type="text/javascript"></script>
        <!-- counter -->
        <script src="assets/js/jquery.counterup.min.js" type="text/javascript"></script>
        <script src="assets/js/waypoints.js" type="text/javascript"></script>
        <!-- filter portfolio -->
        <script src="assets/js/jquery.shuffle.min.js" type="text/javascript"></script>
        <script src="assets/js/portfolio.js" type="text/javascript"></script>
        <!-- magnific popup -->
        <script src="assets/js/jquery.magnific-popup.min.js" type="text/javascript"></script>
        <!-- range slider -->
        <script src="assets/js/ion.rangeSlider.min.js" type="text/javascript"></script>
        <script src="assets/js/jquery.easing.min.js" type="text/javascript"></script>
        <!-- custom -->
        <script src="assets/js/custom.js" type="text/javascript"></script>
        
       <!-- -----------Autocomplete code -->
       	<script src="js/jquery.countdown.js"></script>
		<script src="js/script.js"></script>
    	<script src="js/cbpFWTabs.js"></script>
    	<script type="text/javascript" src="js/jquery-1.4.2.min.js"></script>
		<script src="js/jquery.autocomplete.js"></script>
		<script>
			(function() {

				[].slice.call( document.querySelectorAll( '.tabs' ) ).forEach( function( el ) {
					new CBPFWTabs( el );
				});

			})();
		</script>
       <!-- -------------- -->
       
        
<!--         
                		 <script>
function showState(str)
{
	if (str=="")  
	{  
		document.getElementById("txtHint5").innerHTML="";  
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
			document.getElementById("txtHint5").innerHTML=xmlhttp.responseText;    
			}  
		}
	xmlhttp.open("GET","./district1.jsp?state="+str,true);   
	xmlhttp.send();    
	}
	</script> -->
	<script>
	function getVehicleModels(str) {
		var vType = document.getElementById("vType").value;
		if (str == "") {
			document.getElementById("txtHintD").innerHTML = "";
			return;
		}
		if (window.XMLHttpRequest) {
			// code for IE7+, Firefox, Chrome, Opera, Safari  
			xmlhttp = new XMLHttpRequest();
		} else {
			// code for IE6, IE5  
			xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
		}
		xmlhttp.onreadystatechange = function() {
			if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
				document.getElementById("txtHintD").innerHTML = xmlhttp.responseText;
			}
		}
		xmlhttp.open("GET", "./getADNewHVecleModel.jsp?vBrand="+str+ "&vType="+ vType, true);
		xmlhttp.send();
	}
</script>
	
	<script>
function getNewVcleBrand(str)
{
	if (str=="")  
	{  
		document.getElementById("txtHint20").innerHTML="";  
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
			document.getElementById("txtHint20").innerHTML=xmlhttp.responseText;    
			}  
		}
	xmlhttp.open("GET","./getADNewVecleBrand.jsp?vType="+str,true);   
	xmlhttp.send();    
	}
	</script>
	<script>
	function getUsedVcleModel(str) {
		var vType = document.getElementById("vBrand").value;
		if (str == "") {
			document.getElementById("txtHintH").innerHTML = "";
			return;
		}
		if (window.XMLHttpRequest) {
			// code for IE7+, Firefox, Chrome, Opera, Safari  
			xmlhttp = new XMLHttpRequest();
		} else {
			// code for IE6, IE5  
			xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
		}
		xmlhttp.onreadystatechange = function() {
			if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
				document.getElementById("txtHintH").innerHTML = xmlhttp.responseText;
			}
		}
		xmlhttp.open("GET", "./getUsedVcleModel.jsp?vModel="+str+ "&vType="+ vType, true);
		xmlhttp.send();
	}
</script>

	        	 <script>
function showDealerName(str)
{
	if (str=="")  
	{  
		document.getElementById("txtHint4").innerHTML="";  
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
			document.getElementById("txtHint4").innerHTML=xmlhttp.responseText;    
			}  
		}
	xmlhttp.open("GET","./getDealerName.jsp?city="+str,true);   
	xmlhttp.send();    
	}
	</script>
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
<!-- 	<script type="text/javascript">
function validateForm()
{
if( document.getElementById("state").value == "SELECT" )
   {
     alert( "Please select State!" );
     document.getElementById("state").focus();
     return false;
   }
return true;
}
</script> -->
       	 <script>
function showBrand(str)
{
	if (str=="")  
	{  
		document.getElementById("txtHint1").innerHTML="";  
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
			document.getElementById("txtHint1").innerHTML=xmlhttp.responseText;    
			}  
		}
	xmlhttp.open("GET","./getCarModels.jsp?brand="+str,true);   
	xmlhttp.send();    
	}
	</script>

		        	 <script>
function showVehicleBrand(str)
{
	if (str=="")  
	{  
		document.getElementById("txtHint3").innerHTML="";  
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
			document.getElementById("txtHint3").innerHTML=xmlhttp.responseText;    
			}  
		}
	xmlhttp.open("GET","./vehicleBrand.jsp?vBrand="+str,true);   
	xmlhttp.send();    
	}
	</script>
	
	      <script>
function showServiceStreet(str)
{
 	// var city=document.getElementById("mcity").value;
	if (str=="")  
	{  
		document.getElementById("txtHint6").innerHTML="";  
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
			document.getElementById("txtHint6").innerHTML=xmlhttp.responseText;    
			}  
		}
	xmlhttp.open("GET","./getServiceStreet.jsp?street="+str,true);   
	xmlhttp.send();    
	}
	</script>
        
        <script>
function getVehicleBrand(str)
{
 if (str=="")  
 {  
  document.getElementById("txtHint10").innerHTML="";  
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
   document.getElementById("txtHint10").innerHTML=xmlhttp.responseText;    
   }  
  }
 xmlhttp.open("GET","./vehicleSpBrand.jsp?spBrand="+str,true);   
 xmlhttp.send();    
 }
 </script>  
  <script>
function getVehicleModel(str)
{
 if (str=="")  
 {  
  document.getElementById("txtHint11").innerHTML="";  
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
   document.getElementById("txtHint11").innerHTML=xmlhttp.responseText;    
   }  
  }
 xmlhttp.open("GET","./getVehicleModels.jsp?brand="+str,true);   
 xmlhttp.send();    
 }
 </script>
 <script type="text/javascript">

  document.getElementById('index').className = 'active';
 /~~~~~~~~~~~~ tooltip~~~~~~~~~~ /
 $(document).ready(function(){
 $('[data-toggle="tab"]').tooltip();
 
 
 });
 </script>
 <script type="text/javascript">

 document.getElementById('index').className = 'active';

 </script>
      <script>
	var start = 2017;
var end = new Date().getFullYear();
var options = "";
for(var year = start ; year <=end; year++){
  options += "<option>"+ year +"</option>";
}
document.getElementById("makeYear").innerHTML = options;
</script> 
        
       <!--  <script type="text/javascript">
        $(".uc").css("position", "relative","top","-15","left","20%");
        		   	
        </script> -->
          <script>
  // Wrap every letter in a span
     $('.ml6 .letters').each(function(){
       $(this).html($(this).text().replace(/([^\x00-\x80]|\w)/g, "<span class='letter'>$&</span>"));
     });

     anime.timeline({loop: true})
       .add({
         targets: '.ml6 .letter',
         translateY: ["1.1em", 0],
         translateZ: 0,
         duration: 750,
         delay: function(el, i) {
           return 50 * i;
         }
       }).add({
         targets: '.ml6',
         opacity: 0,
         duration: 1000,
         easing: "easeOutExpo",
         delay: 1000
       });


     
        </script>   
     <!-- google api key -->
      <script async defer src="https://maps.googleapis.com/maps/api/js?key=AIzaSyBE49eJ-hTzLNA7IKZ2DOnW-4BBHDzDXlA&libraries=places&callback=initMap"
  type="text/javascript"></script>
   <script type="text/javascript" src="https://maps.googleapis.com/maps/api/js?key=AIzaSyBE49eJ-hTzLNA7IKZ2DOnW-4BBHDzDXlA&sensor=false&libraries=places&callback=initMap"></script> 
      
      
    </body>
</html>
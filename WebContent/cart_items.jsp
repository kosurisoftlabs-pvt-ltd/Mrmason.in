<%@ page language="java" import="com.mason.bean.*,java.util.*,com.mason.service.*" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
        <title>Mr.mason | Home</title>
        <link href="images/Home.png" type="img/Home-512.png" rel="icon">
        <link href="assets/css/base.css" rel="stylesheet" type="text/css"/>
        <link href="assets/css/style1.css" rel="stylesheet" type="text/css"/>
        <style>
       .bo {
	    font-size:16px;
	    color: #18aedf;
	    font-family: sans-serif;
	    font-weight: 500;
	    }
	    .bo1 {
	        font-size: 15px;
		    color: #3f4040;
		    font-family: sans-serif;
		    font-weight: 500;
		    margin: 0px 4px;
		    line-height: 3rem;

	     }
	     .cart{
	      padding: 6px 7px;
          border-bottom: 2px solid #618262;
          border-top: 2px solid #618262;
	     }
        .form-control {
		    display: block;
		    width: 100%;
		    height:28px;
		    padding:0px 6px;
		    font-size: 13px;
		    line-height: 1.42857143;
		    color: #555;
		    background-color: #fff;
		    background-image: none;
		    border: 1px solid #18aedf;
		    border-radius: 4px;
		    -webkit-box-shadow: inset 0 1px 1px rgba(0, 0, 0, .075);
		    box-shadow: inset 0 1px 1px rgba(0, 0, 0, .075);
		    -webkit-transition: border-color ease-in-out .15s, -webkit-box-shadow ease-in-out .15s;
		    -o-transition: border-color ease-in-out .15s, box-shadow ease-in-out .15s;
		    transition: border-color ease-in-out .15s, box-shadow ease-in-out .15s;
           }
		    .bo3 i{
            font-size:24px;
		    color: #18aedf;
		    margin: 6px 7px;
		    }
		     .bo3 span{
            font-size:17px;
		    color: #18aedf;
		    margin: 6px 7px;
		    }
		     .bo3 a{
		    float: right;
		    margin: 6px 7px;
		    }
		    .cart0{
		    float: right;
		    font-size: 19px;
		    color: #18aedf;
		    margin: 7px 0;
		    }
		    .cart10{
		        font-size: 17px;
			    position: absolute;
			    margin: 0 4px;
			    color: #18aedf;
			    }
		    .box9{
            height: 24px;
		    padding: 0px 4px;
		    font-size: 13px;
		    line-height: 1.42857143;
		    color: #555;
		    background-color: #fff;
		    background-image: none;
		    border: 1px solid #18aedf;
		    border-radius: 4px;
		    box-shadow: inset 0 1px 1px rgba(0, 0, 0, .075);
		    -o-transition: border-color ease-in-out .15s, box-shadow ease-in-out .15s;
		    transition: border-color ease-in-out .15s, box-shadow ease-in-out .15s;
		    }
		    .bob small {
		    font-size: 15px;
		    float: right;
		    margin: 10px 0px;
		    color: #18aedf;
		    }
		    .box1 p {
		    font-size: 22px;
		    padding: 0 0;
		    color: #3c653e;
		    margin-top: 10px;
		    font-family: sans-serif;
		    font-weight: 500;
		    }
		    .content {
              padding:3px;
              }
            
			.productbox img {
			    -webkit-transform: scale(0.9);
			    transform: scale(0.9);
			    -webkit-transition: .3s ease-in-out;
			    width: 100%;
			}
			.productbox:hover img {
			    -webkit-transform: scale(1);
			    transform: scale(1);
			}
			.sidber-box {
			    margin-bottom: 20px;
			    position: relative;
			    border: 1px solid #d4cfcf;
			    border-radius: 4px !important;
			    background: #fff;
			    }
			   .content {
              padding: 3px !important;
            } 
            :focus {
                outline: -webkit-focus-ring-color auto 0px !important;
             }
             .cart2{
             padding-right: 0px;
             }
              .cart1{
             padding-left:3px;
             
             }
             .bo8{
                position: absolute;
			    margin: -6px 10px;
			    background: #26bd2c;
			    width: 22px;
			    height: 22px;
			    border: 1px solid #03A9F4;
			    border-radius: 41px;
			    color: #fff;
			    padding: 0px 0px 0px 6px;
			    font-size: 15px;
			    }
			   .boa h5{
			    font-size: 21px;
			    text-decoration: none;
			    color: #18aedf;
			    font-family: inherit;
			    } 
			   .boa{
			    padding:0 0px;
			    } 
			     @media (max-width:768px){
			    .bo3 a {
			    float: initial;
			    margin: 2px 0px;
			    }
			    .cart1{
			     padding-left: 15px;
                 margin: 5px 0;
               }
               .cart2{
			     padding-right: 15px;
                 
               }
			    }
         </style>
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
	    <body onscroll="myFunction()">
	     <!-- <div class="se-pre-con"></div> -->
	     <div id="page-content" style="background: #fff">  
	     <jsp:include page="./homeTop.jsp"></jsp:include>
	     <div class="slider-wrapper ">
         </div>
     <!--============================ new section ============================ -->  
           <div class="containe">
          <!--  <div class="col-lg-12">
           <div class="col-md-8 boa">
           <h5>Cart Items</h5>
           </div>
           <div class="col-md-2 bob">
           <small>No Of Records : 2</small>
           </div>
           <div class="col-md-2 bo3">
           <a href="#"><div class="bo8">3</div> <i class="fa fa-shopping-cart"></i><span>Cart</span>
           </a>  
           </div>
           </div> -->
           <div class="col-lg-12">
        <!--===============  slider section ======================= -->
                    <!-- <div class="col-md-2" style="padding:0 0px;">
                    <form action="./SearchHSpareParts" method="post">
					<div class="sidber-box cats-facility">
					<div class="cats-title">Filter</div>
					<div class="facility" style="padding: 5px 10px;">
		
					<div class="select-filters" style="margin-bottom: 5px;">
					<select name="vehicleType" class="form-control" id="spBrand">
					<option style="display: none;" value="SELECT">Vehicle Type</option>
					<option value="4,2,">All</option>
					<option value="2,">TWO WHEELER</option>
					<option value="4,">FOUR WHEELER</option>
					</select>
					</div>
									
				   <div class="select-filters" style="margin-bottom: 5px;" id="txtHint10">
				   <select name="vehicleBrand" class="form-control">
				   <option style="display: none;" value="SELECT">Vehicle Brand</option>
				   </select>
				   </div>
				   <div class="select-filters" style="margin-bottom: 5px;" id="txtHint11">
				   <select name="vehicleModel" class="form-control">
				   <option style="display: none;" value="SELECT">Vehicle Model</option>
				   </select>
				   </div>
									
					<div class="select-filters" style="margin-bottom: 5px;">
						
					<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
					<title>VaahanMitra</title>

					<select name="category" id="category" onchange="getSpSubCategory(this.value)" required="">
					<option style="display: none;" value="SELECT">Category</option>
					<option value="All">All</option>
	                <option value="HORN">HORN</option>
	                <option value="Lubricants">Lubricants</option>
	                <option value="spare  parts">spare  parts</option>
	                <option value="Spare Parts">Spare Parts</option>
                    </select>

					</div>
					<div class="select-filters" style="margin-bottom: 5px;" id="txtHint12">
					<select name="subCategory" class="form-control">
					<option style="display: none;" value="SELECT">Sub Category</option>
					</select>
				    </div>
									
					<div class="select-filters" style="margin-bottom: 5px;">
					<select name="city" class="form-control">
					<option value="SELECT" style="display: none;">City</option>
					<option value="All">All</option>					
				    <option value="Kandukuru">Kandukuru</option>				
					<option value="Ongole">Ongole</option>				
					</select>
					
					</div>
					<button type="submit" style="float: right; padding-top: 10px; padding-bottom: 10px; margin-bottom: 10px; padding-left: 10px; padding-right: 10px;" class="thm-btn">Go &nbsp; <i class="fa fa-arrow-right"></i></button>
					<br><br><br> <font><b>Advance Search</b></font>
					<div class="select-filters" style="margin-bottom: 5px;">
					<select name="spName" id="sort-price" onchange="this.form.submit()">
					<option selected="" disabled="" style="display: none;">Spare Part Name</option>
					<option value="AIR FILTER">AIR FILTER</option>					
					<option value="GASKET MAKER">GASKET MAKER</option>				
					<option value="HI HORN AC 6 VOLT">HI HORN AC 6 VOLT</option>					
					<option value="LUBRICANT">LUBRICANT</option>				
					</select>
					</div>
									
					<div class="select-filters" style="margin-bottom: 5px;">
					<select name="partNo" id="sort-price" onchange="this.form.submit()">
					<option selected="" disabled="" style="display: none;">Part No</option>						
					<option value="012345678">012345678</option>					
					<option value="10101010">10101010</option>					
					<option value="12345678">12345678</option>						
				    </select>
					</div>				
					<div class="select-filters" style="margin-bottom: 5px;">
					<select name="companyName" id="sort-price" onchange="this.form.submit()">
				    <option selected="" disabled="" style="display: none;">Manufacture Company Name</option>					
					<option value="Elofic">Elofic</option>			
					<option value="KOSURI AUTO MARKET PVT LTD">KOSURI AUTO MARKET PVT LTD</option>						
					</select>
					</div>
				    <div class="select-filters" style="margin-bottom: 5px;">
					<select name="modelYear" id="sort-price" onchange="this.form.submit()">
					<option selected="" disabled="" style="display: none;">Model Year</option>	
					<option value="2017">2017</option>					
					<option value="2018">2018</option>					
					</select>
				    </div>
					</div>
				    </div>
				    </form>
				   
				   
				    <div class="sidber-box help-widget">
					<i class="flaticon-photographer-with-cap-and-glasses"></i>
					<h4>Need <span>Help?</span>
					</h4>
					<a href="#" class="phone">040 - 40191909</a> <small>Monday to Saturday 9.00am - 7.30pm</small>
		            </div>
           </div> -->
           
           <!-- =============== end slider section ======================= -->
            <%
					    	HashMap<String,String> chm = new HashMap<String,String>();
							HashMap<String,String> schm = new HashMap<String,String>();
					    	chm = new CategoryService().getAllCategories();
					    	schm = new CategoryService().getAllSubcategories();
					    %>
		    <div class="container">
            <div class="col-md-12">
             <div class="">
             
           <div class="col-lg-12">
           <div class="col-md-12 boa">
           <h5>Cart Items</h5>
           </div>
           </div>
           <!-- ======= start====== -->
              <div class="col-md-12 cart">
              <div class="col-lg-12">
                <div class="col-md-10 box1">
                <p>Paints</p> 
                </div>
                <div class="col-md-2">
                <input type="checkbox" name="vehicle1" value="Bike" style="width: 22px; height: 22px;"> <span class="cart10"><a href="#">Remove</a></span>  
                </div>
                </div>
                
                <div class="col-lg-12" style="padding: 0 0;">
                <div class="col-md-4">
                <div class="col-md-12 box2">
	            <span class="bo">Brand :</span><span class="bo1">Asian</span>
	            </div>
	            
	            <div class="col-md-12 box2">
	            <span class="bo">SKUID :</span><span class="bo1">SWP1 </span>
	            </div>
	            
	            <div class="col-md-12 box2">
                <c:set var="painttype" value="${pd.INTER_EXTER}" scope="request"/>
                <span class="bo">Type :</span><span class="bo1">Interior</span>
                </div>
               
                </div>
                
               <div class="col-md-4">
              
               <div class="col-md-12 box2">
               <span class="bo">Quality :</span><span class="bo1">Apex</span>
               </div>
               
               <div class="col-md-12 box2">
               <span class="bo">Sub-Category :</span><span class="bo1">Water Paints </span>
               </div>
           
               </div>
               
               <div class="col-md-4">
               <div class="form-group">
               <label class="bo">Selected Color :</label>
               <select name="department" class="box9">
		       <option value="1">Red</option>
		       <option value="2">Blue</option>
		       <option value="3">Green</option>
		       <option value="4">White</option>
		       </select>
               </div>  
                
               <div class="form-group">
               <label class="bo">Quantity :</label>
               <input type="text" name="quantity" class="box9" id="quantity" value=""  placeholder="Your Quantity" maxlength="8" onkeypress="return isNumberKey(event)">
               <select name="department" class="box9">
		       <option value="1">Kgs</option>
		       <option value="2">Grms</option>
		       <option value="3">Ltrs</option>
		       <option value="4">Ml</option>
		       </select>
               </div> 
		      
               </div>
               </div>
               </div>      
                  
               <div class="col-md-12">
               <p class="cart0">Total No of items ordered</p>
               </div>
           <!-- ======= end====== -->
           </div>
           </div>
           </div>
           </div>
           </div>
           <div class="clearfix"> </div>
    <!--============================ end new section ============================ -->    
      <div class="col-md-12"><br><br></div> 
         </div>
       
         <div class="clearfix"> </div>
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
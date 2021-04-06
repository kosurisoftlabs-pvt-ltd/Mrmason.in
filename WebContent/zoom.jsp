<%@ page language="java" import="com.mason.bean.*,java.util.*,com.mason.service.*" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
        <title>Propmitra | Home</title>
        <link href="images/Home.png" type="img/Home-512.png" rel="icon">
        <link href="assets/css/base.css" rel="stylesheet" type="text/css"/>
        <link href="assets/css/style1.css" rel="stylesheet" type="text/css"/>
        <style>
        .box{
	        background: white;
	        border: 1px solid #dad0d0;
	        border-radius: 3px;
	        padding: 5px 4px 7px 4px;
	        }
	     .box:hover{
	        background: white;
		    border: 1px solid #18aedf;
		    border-radius: 3px;
		    padding: 5px 4px 7px 4px;
		    box-shadow: 0px 1px 10px #0f0f0fb8;
            }   
        .box1 p{
	        font-size: 22px;
	        padding: 0 0;
	        color: #3c653e;
	        margin-top: 10px;
	        font-family: sans-serif;
            font-weight: 500;
	        }
	     .bo{
	            font-size: 16px;
			    color: #18aedf;
			    font-family: inherit;
			    font-weight: 500;
            } 
         .bo1{
	        font-size: 16px;
            color: #66696b;;
            font-family: inherit;
            font-weight: 500;
            }    
	      .box3{
	        text-align: center;
            margin: 7px 0;
            font-size: 17px;
           font-family: sans-serif;
	      } 
	     .box4{
	       padding :0 8px;
	      }   
	     .box2{
	     line-height:27px;
	     } 
	     .bo2{
	       width: 20px;
           height: 20px;
           border: 1px solid #18aedf;
        }
        .form-control {
		    display: block;
		    width: 100%;
		    height: 34px;
		    padding: 6px 6px;
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
			.content {
              padding: 2px !important;
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
			   .box8 p{
			        font-size: 19px;
				    padding: 0 0;
				    color: #18aedf;
				    margin-top: 3px;
				    font-family: inherit;
				    font-weight: 500;
				    }
			
               #bo0{
                position: absolute;
			    left: 39%;
			    z-index: -1111; 
			    }
              #boa{
		    height: 25px;
		    font-size: 14px;
		    width: 25px;
		    border-radius: 70px !important;
		    border: 1px solid #18aedf;
		    padding: 0 2px 0px 0px;
		    margin: 0 6px 1px 0px;
		        margin-top: -92%;
		  }	
		  
		   #bob{
		    height:25px;
		    font-size: 12px;
		    width: 25px;
		    border-radius: 70px !important;
		    border: 1px solid #3c653e;
		    padding: 0 3px 0px 4px;
		    background: #3c653e;
		    margin: 0 0px 1px 6px;
		        margin-top: -92%;
		  }	
		   .btn:active:focus, .btn:focus {
		    outline: 0px auto -webkit-focus-ring-color !important;
		    outline-offset: -2px;
		       }
		@media (max-width:925px){
		#bo0{
                position: relative;
			    left: 0%;
			    z-index: -1111;
			    }
             }
         	
		        @media (max-width:768px){
			    .bo3 a {
			    float: initial;
			    margin: 2px 0px;
			    }
			    }
			     .box1 i{
			        font-weight: 400;
				    margin: 0px 12px;
				    font-size: 30px;
				    color: #18aedf;
				    }
				     .boc{
		        font-size: 23px;
			    font-weight: normal;
			    font-family: serif;
			    color: #18aedf;
			    padding: 0 16%;
			    height: 27px;
			    }
			    .tooltip1 {
		    position: relative;
		    display: inline-block;
		    z-index: 111;
		   }
		
		.tooltip1 .tooltiptext1 {
		   visibility: hidden;
		    width: 240px;
		    background-color: #00000087;
		    color: #fff;
		    text-align: center;
		    border-radius: 6px;
		    padding: 0px 0;
		    position: absolute;
		    z-index: 1;
		    bottom: 80%;
		    left: 0;
		    margin-left: -95px;
		    font-size: 20px;
             font-weight: normal;
				}
		
		.tooltip1 .tooltiptext1::after {
		    content: "";
		    position: absolute;
		    top: 100%;
		    left: 50%;
		    margin-left: -5px;
		    border-width: 5px;
		    border-style: solid;
		    border-color: black transparent transparent transparent;
		}
		
		.tooltip1:hover .tooltiptext1 {
		    visibility: visible;
		}   	   
         </style>
	    </head>
	    <body onscroll="myFunction()">
	     
	    <!--  <div class="se-pre-con"></div> -->
	     <div id="page-content" style="background: #f4f4f4">  
	     <jsp:include page="./homeTop.jsp"></jsp:include>
	     <div class="slider-wrapper ">
         </div>
     <!--============================ new section ============================ -->  
           <div class="container">
           <div class="col-lg-12">
           
           <div class="col-md-5">
         
		     <div class="col-md-6 box3">
		     <button type="button" class="btn btn-primary btn-block" style="text-align:center; font-size:16px;
		     line-height: 23px; "> <i class="fa fa-shopping-cart"></i> GO TO CART  </button>
		     </div>
		      
		     <div class="col-md-6 box3" style="padding-right: 0px;"> 
		     <button type="button" class="btn btn-primary btn-block" style="text-align:center; font-size:16px;
		     line-height: 23px; background: #18aedf;  border: 1px solid #18aedf; "> <i class="fa fa-inr"></i> BUY NOW  </button>
		     </div>
     
           </div>
           
           <div class="col-md-4"></div>
           <div class="col-md-3 bo3">
           <a href="#"><div class="bo8">3</div> <i class="fa fa-shopping-cart"></i><span>Cart</span>
           </a>  
           </div>
           </div>
           
           <div class="col-lg-12">
           <%-- <div class="col-md-12 col-xs-12" style="padding: 0 0;">
           
           <a href="zoom.jsp"> <img src="data:image/*;base64,${PaintDetails.PAINTSIMAGE }" alt="NoImage.png" class="img-responsive img-rounded " id="mr1"/></a>
           <!-- <iframe class="col-md-12 col-sm-12 col-xs-12 media" src="zoom1.jsp" marginheight="50" frameBorder="0" width="100%" height="570px" scrolling="no" style="padding: 0 0;">
           
           </iframe> -->
           </div> --%>
           <%
					    	HashMap<String,String> chm = new HashMap<String,String>();
							HashMap<String,String> schm = new HashMap<String,String>();
					    	chm = new CategoryService().getAllCategories();
					    	schm = new CategoryService().getAllSubcategories();
					    %>
           <!-- ======= start====== -->
           
            <div class="col-md-5 col-xs-12">
            <div class="col-md-12 col-xs-12" style="padding-right: 0px;">
            <a href="zoom.jsp"> <img src="data:image/*;base64,${PaintDetails.PAINTSIMAGE }" alt="NoImage.png" class="img-responsive img-rounded " style="width:100%;" id="mr1"/></a>
            </div>
            
            <div class="col-md-3 col-xs-3" style="padding-right: 0px; margin: 7px 0;">
            <a href="zoom.jsp"> <img src="data:image/*;base64,${PaintDetails.PAINTSIMAGE }" alt="NoImage.png" class="img-responsive img-rounded " style="width:100%;" id="mr2"/></a>
            </div>
            <div class="col-md-3 col-xs-3" style="padding-right: 0px; margin: 7px 0;">
            <a href="zoom.jsp"> <img src="data:image/*;base64,${PaintDetails.PAINTSIMAGE }" alt="NoImage.png" class="img-responsive img-rounded " style="width:100%;" id="mr2"/></a>
            </div>
            <div class="col-md-3 col-xs-3" style="padding-right: 0px; margin: 7px 0;">
            <a href="zoom.jsp"> <img src="data:image/*;base64,${PaintDetails.PAINTSIMAGE }" alt="NoImage.png" class="img-responsive img-rounded " style="width:100%;" id="mr2"/></a>
            </div>
            <div class="col-md-3 col-xs-3" style="padding-right: 0px; margin: 7px 0;">
            <a href="zoom.jsp"> <img src="data:image/*;base64,${PaintDetails.PAINTSIMAGE }" alt="NoImage.png" class="img-responsive img-rounded " style="width:100%;" id="mr2"/></a>
            </div>
            </div>
   <!--==================== right side section ========================-->
           <div class="col-md-7 col-xs-12 box">
           <div class="col-md-12 productbox" style="padding: 0 0;">
           <div class="col-md-8 box1">
           <c:set value="${PaintDetails.CATEGORY}" var="Category" ></c:set>
           <p><%=chm.get(pageContext.getAttribute("Category")) %></p> 
           </div>
           
           <div class="col-md-3 box8" style="padding: 0 0;">
                                 <div class="col-lg-12">
                                    <div class="input-group">
                                    <span class="input-group-btn">
                                    <button type="button" id="boa" class="quantity-left-minus btn btn-danger btn-number"  data-type="minus" data-field="">
                                    <span class="glyphicon glyphicon-minus"></span>
                                    </button>
                                    </span>
                                    <input type="text" id="quantity" name="quantity" class="form-control input-number boc" value="1" min="1" max="23" >
                                    <p style="font-size:15px;line-height: 14px;">Quantity</p>
                                    <span class="input-group-btn">
                                    <button type="button" id="bob" class="quantity-right-plus btn btn-success btn-number" data-type="plus" data-field="">
                                    <span class="glyphicon glyphicon-plus"></span>
                                    </button>
                                    </span>
                                </div>
                                </div>
           </div>
           
           <div class="col-md-1 box1">
           <div class="tooltip1"><a href="#"><i class="fa fa-times"></i></a>
           <span class="tooltiptext1">Delete From Cart </span>
           </div>
          <!--  <a href="#"><i class="fa fa-times"></i></a> -->
           <!-- <input type="checkbox" name="vehicle" value="img" class="bo2"> -->
           </div>
           
           <div class="col-md-12 box2">
           <span class="bo">Category :</span><span class="bo1"><%=chm.get(pageContext.getAttribute("Category")) %></span>
           </div>
           <c:set value="${PaintDetails.SUBCATEGORY}" var="Subcategory" ></c:set>
           <div class="col-md-12 box2">
           <span class="bo">Sub-Category :</span><span class="bo1"><%=schm.get(pageContext.getAttribute("Subcategory")) %></span>
           </div>
           <div class="col-md-12 box2">
           <span class="bo">SKU :</span><span class="bo1"> ${PaintDetails.SKUID} </span>
           </div>
           <div class="col-md-12 box2">
           <span class="bo">Manufacturer Name :</span><span class="bo1"> ${PaintDetails.MANUFACTURER_NAME} </span>
           </div>
           <div class="col-md-12 box2">
           <span class="bo">Color :</span><span class="bo1"> ${PaintDetails.AVAILABLE_COLORS}</span>
           </div>
           <div class="col-md-12 box2">
           <span class="bo">Quality :</span><span class="bo1"> ${PaintDetails.SPECIAL_NAME}</span>
           </div>
           <div class="col-md-12 box2">
           <c:set var="painttype" value="${PaintDetails.INTER_EXTER}" scope="request"/>
           <span class="bo">Paint Type :</span><span class="bo1">
           <%
           if(request.getAttribute("painttype").equals("I")){
        	   out.println("Interior");
           }
       	   else
       	   {
       		   out.println("Exterior");
       	   }
        	   %>
           </div>
           <div class="col-md-12 box2">
           <span class="bo">Specifications :</span>
           <c:if test="${not empty PaintDetails.SPECIFICATION1}"><span class="bo1"> ${PaintDetails.SPECIFICATION1}</span><br></c:if>
           </div>
            <div class="col-md-12 box2">
           <span class="bo" style="color:#fff;">Specifications :</span>
           <c:if test="${not empty PaintDetails.SPECIFICATION1}"><span class="bo1"> ${PaintDetails.SPECIFICATION1}</span><br></c:if>
           </div>
           <div class="col-md-12 box2">
           <span class="bo" style="color:#fff;">Specifications :</span>
           <c:if test="${not empty PaintDetails.SPECIFICATION1}"><span class="bo1"> ${PaintDetails.SPECIFICATION1}</span><br></c:if>
           </div>
           <div class="col-md-12 box2">
           <span class="bo" style="color:#fff;">Specifications :</span>
           <c:if test="${not empty PaintDetails.SPECIFICATION1}"><span class="bo1"> ${PaintDetails.SPECIFICATION1}</span><br></c:if>
           </div>
           <div class="col-md-12 box2">
           <span class="bo" style="color:#fff;">Specifications :</span>
           <c:if test="${not empty PaintDetails.SPECIFICATION1}"><span class="bo1"> ${PaintDetails.SPECIFICATION1}</span><br></c:if>
           </div>
        <!--    <div class="col-md-12 box2">
           <span class="bo">Price :</span><span class="bo1"><i class="fa fa-inr"></i> 5000</span>
           </div>
           <div class="col-md-12 box2">
           <span class="bo">Category :</span><span class="bo1"> Spare Parts </span>
           </div> -->
           
           <div class="col-md-12 box3">
           <div class="col-md-4"></div>
           <div class="col-md-4 box3">
           <button type="button" class="btn btn-primary btn-block" style="text-align:center; font-size: 18px;
           line-height: 20px; "> <a href="check.jsp" style="color: #fff; font-size: 16px;">Add To Cart</a>  </button>
           </div>
           <div class="col-md-4"></div>
           </div>
           </div> 
           </div>
           <!--==================== right side section ========================-->
           
           <!-- ======= end====== -->
         
           </div>
             <div class="col-md-12 col-xs-12"><br><br><br></div>   
           </div>
    <!--============================ end new section ============================ -->  
   
         </div>
           
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
	  <script>
         $(document).ready(function(){

        	 var quantitiy=0;
        	    $('.quantity-right-plus').click(function(e){
        	         
        	         // Stop acting like a button
        	         e.preventDefault();
        	         // Get the field name
        	         var quantity = parseInt($('#quantity').val());
        	         
        	         // If is not undefined
        	             
        	             $('#quantity').val(quantity + 1);

        	           
        	             // Increment
        	         
        	     });

        	      $('.quantity-left-minus').click(function(e){
        	         // Stop acting like a button
        	         e.preventDefault();
        	         // Get the field name
        	         var quantity = parseInt($('#quantity').val());
        	         
        	         // If is not undefined
        	       
        	             // Increment
        	             if(quantity>0){
        	             $('#quantity').val(quantity - 1);
        	             }
        	     });
        	     
        	 });
         </script>
 
    </body>
    </html>
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
        
        
        <script type="text/javascript">
		function addtocart(str)
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
		xmlhttp.open("GET","./addToCart.jsp?prodid="+str,true);
		
		var cartItemsList=document.getElementById("cartItemsList").value;
		
		if(cartItemsList=="")
			{
				<%session.removeAttribute("cartItems");%>
			}
		xmlhttp.send();
		}
		
		
		function getMoreRows()
		{
			var noofrecords = document.getElementById("noofrecords").value;
			var pc = document.getElementById("productcategory").value;
			var sc = document.getElementById("subcategory").value;
			var br = document.getElementById("brand").value;
			var mrp = document.getElementById("maxrowsperpage").value;
		
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
		    document.getElementById("ViewMore").innerHTML=xmlhttp.responseText;
		    }
		  }
		xmlhttp.open("GET","./loadMore.jsp?pc="+pc+"&sc="+sc+"&br="+br+"&nor="+noofrecords+"&mrp="+mrp,true);/* ?pc="+pc+"&sc="+sc+"&br="+br+"&nor="+noofrecords */
		xmlhttp.send();
		}
		
		</script>
        
        
        <style>
        #mr1{
          width: 100%;
          height:auto;
          padding: 0 10px; 
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
         .box{
	        background: white;
	        border: 1px solid #f1e7e7;
	        border-radius: 3px;
	        padding: 5px 4px 7px 4px;
	        }
	     .box:hover{
	        background: white;
		    -webkit-box-shadow: 0px -1px 15px 0px rgba(80, 80, 80, 0.23);
            box-shadow: 0px -1px 15px 0px rgba(80, 80, 80, 0.23);
            }   
        .box1 p{ 
	        font-size: 22px;
	        padding: 0 0;
	        color: #3c653e;
	        margin-top: 10px;
	        font-family: sans-serif;
            font-weight: 500;
            padding: 0 3px;
	        }
	        .box1{ 
            padding: 0 3px;
	        }
	     .bo{
	        font-size: 14px;
            color: #18aedf;
            font-family: sans-serif;;
            font-weight: 500;
            } 
         .bo1{
	        font-size: 13px;
            color: #66696b;;
            font-family: sans-serif;
            font-weight: 500;
            }    
	      .box3{
	        text-align: center;
            margin: 7px 0;
            font-size: 17px;
           font-family: sans-serif;
	      } 
	      
	     .box4{
	       padding: 0 2px;
           margin-bottom: 7px;
	      }   
	     .box2{
	     line-height:22px;
	     padding: 0 3px;
	     } 
	     .bo2{
	       width: 20px;
           height: 20px;
           border: 1px solid #18aedf;
        }
        .bob small{
            font-size: 15px;
		    float: right;
		    margin: 10px 0px;
		    color: #18aedf;
		    }
        .form-control {
		    display: block;
		    width: 100%;
		    height:26px;
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
			    border: 1px solid #e4dcdc;
			    border-radius: 4px !important;
			    background: #fff;
			    }
		  .content {
              padding: 3px !important;
            } 
            :focus {
                outline: -webkit-focus-ring-color auto 0px !important;
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
			    text-decoration: underline;
			    color: #18aedf;
			    font-family: inherit;
			    } 
			   .boa{
			    padding:0 0px;
			    } 
			    .cart2{
             padding-right: 0px;
             }
             .form-group {
               margin-bottom: 0px !important;
              }
              .cart1{
             padding-left:3px;
             
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
                #mr1{
	          width: 100%;
	          height:170px;
	         /*  padding: 0 10px;  */
	         }
			    }
			    
			    @media (min-width: 992px){
			   .col-md-3 {
			    width: 20% !important;
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
           <div class="col-lg-12">
           <div class="col-md-8 boa">
           <h5>Search Results</h5>
           </div>
           <div class="col-md-2 bob">
           <!-- <small>No Of Records : 15</small> -->
           </div>
           <div class="col-md-2 bo3">
           <a href="#">
           <div id="txtHint3" class="bo8">
           <!--  ./cart_items.jsp -->
			0
			</div> 
           <i class="fa fa-shopping-cart"></i><span>Cart</span>
           </a>  
           </div>
           </div>
           <div class="col-lg-12">
        <!--===============  slider section ======================= -->
                    <div class="col-md-2" style="padding:0 0px;">
                    <form action="#" method="post">
					<div class="sidber-box cats-facility">
					<div class="cats-title">Filter</div>
					<div class="facility" style="padding: 5px 10px;">
		
					<div class="select-filters" style="margin-bottom: 5px;">
					<select name="vehicleType" class="form-control" id="spBrand">
					<option value="SELECT">Brand</option>
					<option value="4,2,">All</option>
					<option value="2,">Raasi</option>
					<option value="4,">UltraTech</option>
					<option value="4,">Penna</option>
					<option value="4,">Bharati</option>
					</select>
					</div>
									
				   <div class="select-filters" style="margin-bottom: 5px;" id="txtHint10">
				   <select name="vehicleBrand" class="form-control">
				   <option style="display: none;" value="SELECT">SKUID</option>
				   </select>
				   </div>
				   <div class="select-filters" style="margin-bottom: 5px;" id="txtHint11">
				   <select name="vehicleModel" class="form-control">
				   <option style="display: none;" value="SELECT">Type</option>
				   <option value="All">All</option>
	                <option value="HORN">OPC ( Concrete Work)</option>
	                <option value="Lubricants">PPC ( )</option>
	                <option value="spare  parts">Ultimate</option>
				   </select>
				   </div>
									
					<div class="select-filters" style="margin-bottom: 5px;">
					<select name="category" id="category" onchange="getSpSubCategory(this.value)" required="">
					<option style="display: none;" value="SELECT">Quality</option>
					<option value="All">All</option>
	                <option value="HORN">Super</option>
	                <option value="Lubricants">Gold</option>
	                <option value="spare  parts">Ultimate</option>
                    </select>

					</div>
					<div class="select-filters" style="margin-bottom: 5px;" id="txtHint12">
					<select name="subCategory" class="form-control">
					<option style="display: none;" value="SELECT">Sub-Category</option>
					</select>
				    </div>
					
					<button type="submit" style="float: right; padding-top: 10px; padding-bottom: 10px; margin-bottom: 10px; padding-left: 10px; padding-right: 10px;" class="thm-btn">Go &nbsp; <i class="fa fa-arrow-right"></i></button>
					<br><br><br> <font><b>Advance Search</b></font>
					<div class="select-filters" style="margin-bottom: 5px;">
					<select name="spName" id="sort-price" onchange="this.form.submit()">
					<option>Color Group</option>
					<option value="AIR FILTER">Red</option>					
					<option value="GASKET MAKER">Blue</option>				
					<option value="HI HORN AC 6 VOLT">White</option>					
					<option value="LUBRICANT">Green</option>				
					</select>
					</div>
									
					<!-- <div class="select-filters" style="margin-bottom: 5px;">
					<select name="partNo" id="sort-price" onchange="this.form.submit()">
					<option>Sub Color</option>						
					<option value="012345678">White</option>					
					<option value="10101010">Red</option>					
					<option value="12345678">Green</option>						
				    </select>
					</div>	 -->
					
					</div>
				    </div>
				    </form>
				   
				    <div class="sidber-box help-widget">
					<i class="flaticon-photographer-with-cap-and-glasses"></i>
					<h4>Need <span>Help?</span>
					</h4>
					<a href="#" class="phone">040 - 48510133</a> <small>Monday to Saturday 9.00am - 7.30pm</small>
		            </div>
               </div>
           <!--=============== end slider section ======================= -->
            <%
					    	HashMap<String,String> chm = new HashMap<String,String>();
							HashMap<String,String> schm = new HashMap<String,String>();
					    	chm = new CategoryService().getAllCategories();
					    	schm = new CategoryService().getAllSubcategories();
					    	int numofpages = Integer.parseInt(request.getAttribute("numofpages").toString());
							int noofrecords = Integer.parseInt(request.getAttribute("noofrecords").toString());
							int currentpage = Integer.parseInt(request.getAttribute("currentPage").toString());
							int maxrowsperpage = Integer.parseInt(request.getAttribute("maxrowsperpage").toString());
							%>
           <div class="col-md-10" style="padding: 0 3px;">
           <c:forEach var="cd" items="${cementDetails}" >
           <!-- ======= start====== -->
           <div class="col-md-3 box4">
           <div class="col-md-12 box">
           <div class="productbox" style="height:155px;">
           <a href="zoom.jsp"> <img src="data:image/*;base64,${cd.IMAGE }" alt="NoImage.png" class="img-responsive img-rounded " id="mr1"/></a>
           </div>
             <div class="clearfix"> </div>
           <div claa="row"> 
           <div class="col-md-10 col-xs-9 box1">
           <p><%-- <%=chm.get(request.getParameter("productcategory")) %> --%></p> 
           </div>
           <div class="col-md-2 col-xs-3 box1">
           <input type="checkbox" title="Add to Cart" name="vehicle" onchange="addtocart(this.value)" value="${cd.SEQID}" class="bo2">
           <input type ="hidden" name="cartItemsList" id="cartItemsList" value="">
           </div>
           </div>
          <div class="clearfix"> </div>
              
           <div class="col-md-12 box2">
           <span class="bo">Brand :</span><span class="bo1">${cd.MANUFACTURER_NAME} ${cd.SPECIAL_NAME}</span>
           </div>
           <div class="col-md-12 box2">
           <span class="bo">SKUID :</span><span class="bo1">${cd.SKUID} </span>
           </div>
           <div class="col-md-12 box2">
            <c:set var="cementtype" value="${cd.CEMENT_TYPE}" scope="request"/>
           <span class="bo">Type :</span><span class="bo1">
           <%
           if(request.getAttribute("cementtype").equals("OPC")){
        	   out.println("OPC (Concrete Work)");
           }
       	   else if(request.getAttribute("cementtype").equals("PPC")){
       			out.println("PPC (Brick & Plasting Work)");
           }
       	   else
       	   {
       		   out.println("WHITE (Tiles & Marble Work)");
       	   }
        	   %>
           
           
           </span>
           </div>
           <div class="col-md-12 box2">
          <span class="bo">Weight :</span><span class="bo1">${cd.WEIGHT}</span>
           </div>
           
           <div class="col-md-12 box2">
           <span class="bo">Mass :</span><span class="bo1">${cd.MASS }</span>
           </div>
           <%-- 
           <div class="col-md-12 box2">
           <span class="bo">Sub-Category :</span><span class="bo1">
           <c:set var="subcat" value="${cd.SUBCATEGORY }" scope="request"/>
           <%out.println(schm.get(request.getAttribute("subcat"))); %>
           </span>
           </div> --%>
           
           
           
           <!-- <div class="col-md-12 box2">
           <span class="bo">Sub Color :</span><span class="bo1">7812ju</span>
           </div> -->
         
           <div class="col-md-12 box3">
           <button type="submit" class="btn btn-primary" style="text-align:center; line-height: 19px;"> 
        				  More Details</button>
           <%-- <form action="./GetPaintCompleteDetails" method="post">
        				  <input type="hidden" name="pseqid" value="${pd.PAINTS_SEQ_ID}">
        				  <button type="submit" class="btn btn-primary" style="text-align:center; line-height: 19px;"> 
        				  More Details</button><!--style="color: #fff;font-size: 16px;"  class="btn btn-link" -->
        				  </form> --%>
           <!-- <a href="zoom.jsp" style="color: #fff;font-size: 16px;">More Details</a></button> -->
           </div>
           
           </div>
           	
           </div>
           <!-- ======= end====== -->
           </c:forEach>
           <div class="clearfix"></div>
           <div class="row">
           <table>
							<tr>
							<td>&nbsp;&nbsp;&nbsp;&nbsp;Pages</td>
							<c:forEach begin="1" end="${numofpages}" var="i">
							<%
							String productcategory="",subcategory="",brand="",MaterialType="",city="";
							productcategory=request.getParameter("productcategory");
							subcategory=request.getParameter("subcategory");
							brand=request.getParameter("brand");
							MaterialType=request.getParameter("MaterialType");
							city=request.getParameter("city");
								 %>
									<td>
									<form action="./GetBuildingMaterials" method="post">
										<input type="hidden" id="productcategory" name="productcategory" value="<%=productcategory%>">
										<input type="hidden" id="subcategory" name="subcategory" value="<%=subcategory%>">
										<input type="hidden" id="brand" name="brand" value="<%=brand%>">
										<input type="hidden" id="MaterialType" name="MaterialType" value="<%=MaterialType%>">
										<input type="hidden" id="city" name="city" value="<%=city%>">
										<input type="hidden" name="page"value="${i}">
										<input type="hidden" id="noofrecords" name="noofrecords" value="<%=noofrecords%>">
										<input type="hidden" id="maxrowsperpage" name="maxrowsperpage" value="<%=maxrowsperpage%>">
										<button type="submit" class="btn btn-link"><c:out value="${i}"/></button>

									</form>
									
										</c:forEach>							
							</tr>
						  </table>
						  </div>
            <!-- <div id="ViewMore">
            	<button type="submit" class="btn btn-link" onclick="getMoreRows()">View More</button>
            </div> -->
	  			
           <!-- ======= end====== -->
           
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
<%@ page language="java"  contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<!DOCTYPE html>
<html lang="en">
<head>
<%response.setHeader("Cache-Control", "private,no-store,no-cache"); %>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
        <title>Mr.mason | Home</title>
        <link href="images/Home.png" type="img/Home-512.png" rel="icon">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
        
        <script type="text/javascript" src="http://cdn.jsdelivr.net/hammerjs/2.0.3/hammer.min.js"></script>
       
        <script type="text/javascript" language="javascript" src="assets/js/FlameViewportScale.js"></script>
     
        <link href="assets/css/base.css" rel="stylesheet" type="text/css"/>
        <link href="assets/css/style1.css" rel="stylesheet" type="text/css"/>
        <script type="text/javascript">
		
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
 
   </style> 
	   <script>
	   $(document).ready(function(e){
		    $('.search-panel .dropdown-menu').find('a').click(function(e) {
				e.preventDefault();
				var param = $(this).attr("href").replace("#","");
				var concept = $(this).text();
				$('.search-panel span#search_concept').text(concept);
				$('.input-group #search_param').val(param);
			});
		});
	   </script>
	    </head>
	    <body onscroll="myFunction()">
	        <!-- page loader -->
	        <div class="se-pre-con"></div>
	        
	        <!--==================================== top header ==================================-->
	           <div class="container">
	         <!--   <div class="container-fluid"> -->
	           <div class="col-lg-12">
	            <div class="col-md-2" style="padding: 0 0;"><h3><span style="color: #18aedf; font-size: 36px;">Mr.</span><span style="color: #3c653e; font-size: 36px;">Mason</span></h3></div>
	            <div class="col-md-5" style="margin-top:20px;">
	            <div class="row">    
                <div class="col-xs-12 col-xs-offset-2">
		        <div class="input-group">
                <div class="input-group-btn search-panel">
                <button type="button" class="btn btn-default dropdown-toggle" data-toggle="dropdown" style="    color: #797c7d;
    background-color: #fff;
    border-color: #18aedf;
    border-bottom-left-radius: 3px;
    border-bottom-right-radius: 0px;
    border-top-left-radius: 3px;
    border-top-right-radius: 0px;">
                <span id="search_concept">Filter by</span> <span class="caret"></span>
                </button>
                <ul class="dropdown-menu" role="menu" style="position: absolute;
    top: 100%;
    left: 0;
    z-index: 1000;

    float: left;
    min-width: 143px;
    padding: 0px 0;
    margin: 0px 0 0;
    font-size: 11px;
    text-align: left;
    list-style: none;
    background-color: #fff;
    -webkit-background-clip: padding-box;
    background-clip: padding-box;
    border: 1px solid #ccc;
    border: 1px solid rgba(0, 0, 0, .15);
    border-radius: 1px;
    -webkit-box-shadow: 0 6px 12px rgba(0, 0, 0, .175);
    box-shadow: 0 6px 12px rgba(0, 0, 0, .175);
    line-height: -5px !important;">
                <li><a href="#contains">Contains</a></li>
                <li><a href="#">It's equal</a></li>
                <li><a href="#greather_than">Greather than </a></li>
                <li><a href="#less_than">Less than </a></li>
                <li class="divider"></li>
                <li><a href="#all">Anything</a></li>
                </ul>
                </div>
                <input type="hidden" name="search_param" value="all" id="search_param">         
                <input type="text" class="form-control" name="x" placeholder="Search term..."  style="    color: #797c7d;
    background-color: #fff;
    border-color: #18aedf;
    border-bottom-left-radius: 0px;
    border-bottom-right-radius: 0px;
    border-top-left-radius: 0px;
    border-top-right-radius: 0px;
    background-color: white;">
                <span class="input-group-btn">
                <button class="btn btn-default" type="button" style="color: #18aedf;
    background-color: #fff;
    border-color: #18aedf;
    border-bottom-left-radius: 0px;
    border-bottom-right-radius: 4px;
    border-top-left-radius: 0px;
    border-top-right-radius: 4px;
    background-color: white;
    background-color: white;
    font-size: 14px;"><span class="glyphicon glyphicon-search"></span></button>
                </span>
                </div>
                </div>
	            </div>
	            </div>
	            
	            <div class="col-md-1"></div>
	            <div class="col-md-1"></div>
	           </div>
	           </div>
	        
	        
	        
	         <!--==================================== top header ==================================-->
	        
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
     </div>

                </div>
                <div class="responisve-container">
                <div class="slider">
                </div>
                </div>
            </div>
            <!-------------------------------------------- booking ----------------------------------------------->
            
                <div class="container boking-inner">
                <div class="row">
                <div class="col-sm-12">
                   <div class="col-md-5 col-xs-12">
                     
                    <div class="containe">
                    <div class="row">
                    <div class="board">
                    <div class="board-inner">
                    <ul class="nav nav-tabs1" id="myTab">
                    <div class="liner"></div>
                     <li class="active">
                     <a href="#home" data-toggle="tab" title="Building Materials">
                     <span class="round-tabs1 one1">
                     <i class="fa fa-building-o"></i>
                     </span> 
                     </a></li>

                    <!--  <li><a href="#profile" data-toggle="tab" title="Property Developers">
                     <span class="round-tabs1 two1">
                     <i class="fa fa-deviantart"></i>
                     </span> 
                     </a>
                     </li>
                     
                     <li><a href="#messages" data-toggle="tab" title="Homes/Rental">
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
                     <!-- ------------- new car section------------ -->
                                   <div class="tab-pane fade in active" id="home">
                                   <form action="./SearchNewVehicle" method="post">
                                   <div class="col-md-12 col-sm-12 col-xs-12">
                                   <div class="row panel-margin">
	                                          
                                                <div class="col-xs-12 col-sm-6 col-md-6 hidden-sm panel-padding form-group">
                                                 <label class="lable1"></label>
                                                 <input type="text" class="form-control" id="Category" placeholder="Product Category" name="Category">
                                                 </div>
                                                 
                                                 <div class="col-xs-12 col-sm-6 col-md-6 hidden-sm panel-padding form-group" >
                                                 <label class="lable1"></label>
                                                 <input type="text" class="form-control" id="Category" placeholder="Sub Category" name="Category">
                                                 </div>
                                                
                                               <div class="col-xs-12 col-sm-6 col-md-6 hidden-sm panel-padding form-group">
                                               <label class="lable1"></label>
                                               <input type="text" class="form-control" id="Material Type" placeholder="Material Type" name="Material Type">
                                               </div>
                                               <%--  <%
                                               	GetUsedVehicleDetails city2 = new GetUsedVehicleDetails();
                                                Set<String> vCity = city2.getVehicleCity();
                                               	Iterator itr1 = vCity.iterator();
                                                %> --%>
                                                
                                                <div class="col-xs-12 col-sm-6 col-md-6 hidden-sm panel-padding form-group">
                                                <label class="lable1"></label>
                                                <input type="text" class="form-control" id="Brand" placeholder="Brand" name="brand">
                                                </div>
                                                
                                                <div class="col-xs-12 col-sm-6 col-md-6 hidden-sm panel-padding form-group">
                                                <label class="lable1"> </label>
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
                        <!--------------- end new car section-------------->
                        
                        <!--------------- new bike section----------------->
                         <div class="tab-pane fade" id="profile">
                          <form action="./SearchHUsedVehicle" method="post">
                                            <div class="col-xs-12 col-sm-12 col-md-12">
                                             <div class="row panel-margin">
                                             
                                               <div class="col-xs-12 col-sm-8 col-md-8 hidden-sm panel-padding form-group">
                                               <label class="lable1">City/Pincode</label>
                                               <input type="text" class="form-control" id="pincode" placeholder="Pincode/City" name="city">
                                               </div>
	                                         
	                                           <div class="col-md-4 col-sm-4 col-xsm-12 hidden-sm panel-padding form-group"></div>
	                                           
												<div class="col-xs-12 col-sm-12 col-md-12 hidden-sm panel-padding form-group" id="">
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
                      
                      <!--------------- end new bike section----------------->
                      
                      <!--------------- new service center section----------------->
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
                      <!--------------- end new service center section----------------->
                      
                      <!--------------- new SpareParts section----------------->
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
			<!--=================================== end SpareParts center section =======================--> 
			
		<!--=================================== slider section =======================--> 		                
				                <div class="col-md-7 col-xs-12"> 
				                <iframe class="col-md-12 col-sm-12 col-xs-12 media" marginheight="50" frameBorder="0"  src="sliders.html" width="100%" height="320px" scrolling="no" style="padding: 0 0;">
                                    </iframe>
				               <!-- <div id="myCarousel" class="carousel slide" data-ride="carousel">
    <div class="carousel-inner">
      <div class="item active">
        <img src="assets/images/3.png" alt="Los Angeles" style="width:100%;">
      </div>

      <div class="item">
        <img src="assets/images/3.png" alt="Chicago" style="width:100%;">
      </div>
    
      <div class="item">
        <img src="assets/images/3.png" alt="New york" style="width:100%;">
      </div>
    </div>

    Left and right controls
    <a class="left carousel-control" href="#myCarousel" data-slide="prev">
      <span class="glyphicon glyphicon-chevron-left"></span>
      <span class="sr-only">Previous</span>
    </a>
    <a class="right carousel-control" href="#myCarousel" data-slide="next">
      <span class="glyphicon glyphicon-chevron-right"></span>
      <span class="sr-only">Next</span>
    </a>
  </div> -->
				               <!--  <img src="assets/images/3.png"> -->
				                </div> 
        <!--=================================== end slider section =======================--> 	      
				                </div>
				                </div>
				                </div>
    
               <!-- --------------------------- new section --------------------------- -->
                                    <br>
                                   <div class="container boking-inner">
                                   <div class="row">
                                    <div class="col-sm-12">
                                    <div class="panel">
                                    <div class="panel-heading">
                                    <ul class="nav nav-tabs">
                                     <li align="center"  class="active col-md-2 col-sm-6 col-xs-12" id="p-well"><a id="show" href="#tab1default1" data-toggle="tab"><i class="fa fa-building-o"></i> . Building Materials </a></li>
                                 <!--<li align="center" class= "col-md-2 col-sm-6 col-xs-12" id="p-well"><a id="hide" href="#tab2default2" data-toggle="tab"><i class="fa fa-deviantart"></i> Property Developers</a></li>
                                     <li align="center" class= "col-md-2 col-sm-6 col-xs-12" id="p-well" ><a href="#tab3default3" data-toggle="tab"><i class="fa fa-home"></i> Electricity</a></li>
                                     <li align="center" class= "col-md-2 col-sm-6 col-xs-12" id="p-well"><a href="#tab5default5" data-toggle="tab"><i class="fa fa-retweet"></i> Plumbing</a></li> -->
                                     </ul>
                                     </div>
                                   
                                   <div class="panel-body" >
                                   <div class="tab-content">
                                
                                    <div class="tab-pane fade in active" id="tab1default1" style="padding-top: 4px;">
                                    <iframe class="embed-responsive-item col-md-12 col-sm-12 col-xs-12 media" marginheight="50" frameBorder="0"  src="car.html" width="100%" height="280px" scrolling="no" style="padding: 0 0;">
                                    </iframe>
                                    </div>
                                    
                                    <div class="tab-pane fade" id="tab2default2" style="padding-top: 4px;">
                                    <iframe frameBorder="0" class="col-md-12 col-sm-12 col-xs-12" src="bike.html" width="100%" height="280px" scrolling="no" style="padding: 0 0;">
                                    </iframe>                                          
                                    </div>
                                    
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
                                    </div>
                                    
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
            <!-- --------------------------- end new section -------------------- -->
           
            <section class="service-inner">
                <div class="container ">
                    <div class="row bg-success" style="height: 37px;margin: 0px 28px 0px 10px; border: 1px solid #fff; border-radius: 5px;">
                        <div class="col-md-6 col-md-offset-3">
                            <div class="title">
                                <h2 style="margin: 0 0;">Our Services</h2>
                                
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-sm-12 col-md-12">
                            <div class="col-sm-3 inner-box">



                                <article>
                                <div class="col-md-12" style="font-size: 50px;"><i class="fa fa-building-o" aria-hidden="true"></i></div>
                                  <!--   <img style="width:46px;" src="assets/images/car.png" alt="Smiley face" width="42" height="42"> -->
                                    <div class="content-text">
                                        <h5> Building Materials</h5>
                                        <p>
                                     Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. 
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
                                    Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. 
                                         <br><!-- <div class="col-md-12 btn-primary "><a  class="whits" href="./register.jsp">Register</a></div> -->
                                         <a type="submit" class="btn btn-primary btn-block" href="./register.jsp">Register</a>
                                        </p>
                                    </div>
                                </article>
                            </div>
                            <div class="col-sm-3 inner-box">
                                <article>
                                <div class="col-md-12" style="font-size: 50px;"><i class="fa fa-home" aria-hidden="true"></i></div>
                                  <!--   <img style="width:46px;" src="assets/images/service.png" alt="Smiley face" width="42" height="42"> -->
                                    <div class="content-text">
                                        <h5>Plumbing</h5>
                                        <p>
                 Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. 
                       
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
                                    
                                        <h5>Electricity</h5>
                                        <p>
					Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. 
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
                                <h2 style="margin: 0 0;">Home Under Construction</h2>
                            </div>
                        </div>
                    </div>
                     <iframe frameBorder="0" class="col-md-12 col-sm-12 col-xs-12" src="used-cars.html" width="100%" height="260px" scrolling="no" style="padding: 0 0;">
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
        
    </body>
</html>
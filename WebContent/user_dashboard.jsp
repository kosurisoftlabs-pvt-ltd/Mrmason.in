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
        <script src="dashboard/js/modernizr.min.js"></script>
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
                        <h4 class="page-title float-left">Dashboard</h4>
                        <ol class="breadcrumb float-right">
                        <li class="breadcrumb-item"><a href="user_dashboard.jsp">Dashboard</a></li>
                        <li class="breadcrumb-item"><a href="index.jsp">Home</a></li>
                        </ol>
                        <div class="clearfix"></div>
                        </div>
                        </div>
                        </div>
                      <!--=============== end top section ================-->

                   <!--============== body section ==============--> 
                        <div class="row">
                        <div class="col-xl-12 col-sm-12">
						<div class="home1">
						 <!--======= first row =======-->
						 <div class="row">
						 <div class="col-xl-4 col-sm-4">
						 <div class="s1">
						 <div class="box1">
						 <p><a href="user_view.jsp"><i class="fa fa-user"></i></a></p>
						 <p><a href="user_view.jsp" style="color:#fff;">Profile </a></p>
						 </div>
						 </div>
						 </div>
						 
						<!--  <div class="col-xl-4 col-sm-4">
						 <div class="s2">
						 <div class="box1">
						 <p><a href="user_manufacturer.jsp"><i class="fa fa-building"></i></a></p>
						 <p><a href="user_manufacturer.jsp" style="color:#fff;">Add New Business </a></p>
						 </div>
						 </div>
						 </div> -->
						 
						 <div class="col-xl-4 col-sm-4">
						 <div class="s7">
						 <div class="box1">
						 <p><a href="user_addmyservice.jsp"><i class="fa fa-plus-square"></i></a></p>
						 <p><a href="user_addmyservice.jsp" style="color:#fff;">Add New Service </a></p>
						 <p><a href="UserServices" style="color:#fff;">View Services </a></p>
						 </div>
						 </div>
						 </div>
						 
						 </div>
						 <!--======= end first row =======-->
						 
						  <!--======= second row =======-->
						 <!-- <div class="row">
						 
						 <div class="col-xl-4 col-sm-4">
						 <div class="s3">
						 <div class="box1">
						 <p><a href="user_addproduct.jsp"><i class="fa fa-bar-chart"></i></a></p>
						 <p><a href="user_addproduct.jsp" style="color:#fff;">Material Management </a></p>
						 </div>
						 </div>
						 </div>
			 -->			 
						 <div class="col-xl-4 col-sm-4">
						 <div class="s4">
						 <div class="box1">
						 <p><a href="user_service_management.jsp"><i class="fa fa-cogs"></i></a></p>
						 <p><a href="user_service_management.jsp" style="color:#fff;">Service Management </a></p>
						 </div>
						 </div>
						 </div>
						 
						 <!-- <div class="col-xl-4 col-sm-4">
						 <div class="s5">
						 <div class="box1">
						 <p><a href="user_newquotations.jsp"><i class="fa fa-quote-right"></i></a></p>
						 <p><a href="user_newquotations.jsp" style="color:#fff;">Quotation Management  </a></p>
						 </div>
						 </div>
						 </div>
						  -->
						 </div>
						 <!--======= end second row =======-->
						 
						   <!--======= second row =======-->
						 <div class="row">
						 
						<!--  <div class="col-xl-4 col-sm-4">
						 <div class="s6">
						 <div class="box1">
						 <p><a href="user_updateprice.jsp"><i class="fa fa-repeat"></i></a></p>
						 <p><a href="user_updateprice.jsp" style="color:#fff;">Request for Management  </a></p>
						 </div>
						 </div>
						 </div>
						  -->
						 </div>
						 <!--======= end second row =======-->
						
						</div>
					    </div>
                        </div>
						<div class="col-xl-12 col-sm-12"><br><br></div>
                     <!--============== body section ==============--> 
                </div> 
                </div>
               <!--================= footer section ================-->
                <footer class="footer text-right">
				Copyright © 2018 All Rights Reserved By Mr.Mason.
                </footer>
              <!--================= end footer section ================-->
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
<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
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
           <!--============== top header section ===============-->
                    <div class="topbar">
                    <!-- LOGO --><%-- <jsp:include page="./homeTop.jsp"/> --%>
					<div class="topbar-left">
					<a href="index.html" class="logo">
					
					<span><img src="dashboard/images/logo.png" alt="" height="25"></span>
					<i><img src="dashboard/images/logo_sm.png" alt="" height="28"></i>
					</a>
					</div>
                    <nav class="navbar-custom">
                    <ul class="list-inline float-right mb-0"> 
                    <li class="list-inline-item dropdown notification-list">
                    <a class="nav-link dropdown-toggle waves-effect waves-light nav-user" data-toggle="dropdown" href="#" role="button"
                    aria-haspopup="false" aria-expanded="false">
                    <img src="dashboard/images/users/user.png" alt="user" class="rounded-circle">
                    </a>
                    <div class="dropdown-menu dropdown-menu-right profile-dropdown " aria-labelledby="Preview">
                    <a href="javascript:void(0);" class="dropdown-item notify-item">
                    <i class="mdi mdi-account-circle"></i> <span>Profile</span>
                    </a>
                    <a href="javascript:void(0);" class="dropdown-item notify-item">
                    <i class="mdi mdi-power"></i> <span>Logout</span>
                    </a>
                    </div>
                    </li>
                    </ul>
                    <ul class="list-inline menu-left mb-0">
                    <li class="float-left">
                    <button class="button-menu-mobile open-left waves-light waves-effect">
                    <i class="dripicons-menu"></i>
                    </button>
                    </li>
                    </ul>
                    </nav>
                    </div>
            <!--============== end top header section ===============-->

            <!-- ========== Left Sidebar Start ========== -->
				<div class="left side-menu">
				<div class="slimscroll-menu" id="remove-scroll">
				<!--- Sidemenu -->
				<div id="sidebar-menu">
				<!-- Left Menu Start -->
				<ul class="metismenu" id="side-menu">
				<li class="menu-title">Material Dashboard</li>
				<!--<li>
				<a href="javascript: void(0);">
				<i class="fi-air-play"></i><span class="badge badge-success pull-right">2</span> <span> Dashboard </span>
				</a>
				<ul class="nav-second-level" aria-expanded=false>
				<li><a href="index.html">Dashboard 1</a></li>
				</ul>
				</li>--->
				<li>
				<a href="home.html"><i class="fi-air-play"></i><span>Dashboard</span></a>
				</li>      
				<li>
				<a href="javascript: void(0);"><i class="fa fa-user"></i><span>Profile </span> <span class="menu-arrow"></span></a>
				<ul class="nav-second-level" aria-expanded="false">
				<li><a href="#">View</a></li>
				<li><a href="#">Update</a></li>
				<li><a href="#">Change Password</a></li>
				</ul>
				</li>
				<li>
				<a href="javascript: void(0);"><i class="fa fa-building"></i><span>Add New Business </span> <span class="menu-arrow"></span></a>
				<ul class="nav-second-level" aria-expanded="false">
				<li><a href="manufacturer.html">Manufacturer</a></li>
				<li><a href="#">Distributor</a></li>
				<li><a href="#">Dealer</a></li>
				<li><a href="#">Retailer</a></li>
				</ul>
				</li>
				<li>
				<a href="javascript: void(0);"><i class="fa fa-plus-square"></i><span>Add New Service </span> <span class="menu-arrow"></span></a>
				<ul class="nav-second-level" aria-expanded="false">
				<li><a href="addmyservice.html">Add My Service</a></li>
				</ul>
				</li>
				<li>
				<a href="javascript: void(0);"><i class="fa fa-bar-chart"></i><span>Material Management </span> <span class="menu-arrow"></span></a>
				<ul class="nav-second-level" aria-expanded="false">
				<li><a href="#">Add Product</a></li>
				<li><a href="#">Update Product</a></li>
				<li><a href="#">Deactivate/Delete Product</a></li>
				<li><a href="#">Request for New Category</a></li>
				<li><a href="#">Upload form Excel Sheet</a></li>
				<li><a href="#">Update Price&Submit </a></li>
				</ul>
				</li>
				<li>
				<a href="javascript: void(0);"><i class="fa fa-cogs"></i><span>Service Management</span> <span class="menu-arrow"></span></a>
				<ul class="nav-second-level" aria-expanded="false">
				<li><a href="#">Service Management</a></li>
				<li><a href="my_services.html">My Services</a></li>
				</ul>
				</li>
				<li>
				<a href="javascript: void(0);"><i class="fa fa-quote-right"></i><span>Quotation Management </span> <span class="menu-arrow"></span></a>
				<ul class="nav-second-level" aria-expanded="false">
				<li><a href="#">New Quotations</a></li>
				<li><a href="#">Update Quotations</a></li>
				</ul>
				</li>
				<li>
				<a href="javascript: void(0);"><i class="fa fa-registered"></i><span>Request for Management </span> <span class="menu-arrow"></span></a>
				<ul class="nav-second-level" aria-expanded="false">
				<li><a href="#">Update Price&Submit </a></li>
				</ul>
				</li>
				
				<!--<li>
				<a href="#"><i class="fi-paper"></i> <span>Task Board </span></a>
				</li>-->
				</ul>
				</div>
				<div class="clearfix"></div>
				</div>
				</div>
            <!--================ Left Sidebar End =====================-->
                   <div class="content-page">
                 <!-- Start content -->
                   <div class="content">
                       <div class="container-fluid">
                       <!--=============== top section ================-->
                        <div class="row">
                        <div class="col-12">
                        <div class="page-title-box">
                        <h4 class="page-title float-left">Dashboard</h4>
                        <ol class="breadcrumb float-right">
                        <li class="breadcrumb-item"><a href="home.html">Dashboard</a></li>
                        <li class="breadcrumb-item"><a href="./index.jsp">Home</a></li>
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
						 <p><a href="#"><i class="fa fa-user"></i></a></p>
						 <p><a href="#" style="color:#fff;">Profile </a></p>
						 </div>
						 </div>
						 </div>
						 
						 <div class="col-xl-4 col-sm-4">
						 <div class="s2">
						 <div class="box1">
						 <p><a href="manufacturer.html"><i class="fa fa-plus-square-o"></i></a></p>
						 <p><a href="manufacturer.html" style="color:#fff;">Add New Business </a></p>
						 </div>
						 </div>
						 </div>
						 
						 <div class="col-xl-4 col-sm-4">
						 <div class="s3">
						 <div class="box1">
						 <p><a href="#"><i class="fa fa-users"></i></a></p>
						 <p><a href="#" style="color:#fff;">Material Management </a></p>
						 </div>
						 </div>
						 </div>
						 
						 </div>
						 <!--======= end first row =======-->
						 
						  <!--======= second row =======-->
						 <div class="row">
						 
						 <div class="col-xl-4 col-sm-4">
						 <div class="s4">
						 <div class="box1">
						 <p><a href="my_services.html"><i class="fa fa-users"></i></a></p>
						 <p><a href="my_services.html" style="color:#fff;">Service Management </a></p>
						 </div>
						 </div>
						 </div>
						 
						 <div class="col-xl-4 col-sm-4">
						 <div class="s5">
						 <div class="box1">
						 <p><a href="#"><i class="fa fa-quote-right"></i></a></p>
						 <p><a href="#" style="color:#fff;">Quotation Management  </a></p>
						 </div>
						 </div>
						 </div>
						 
						 <div class="col-xl-4 col-sm-4">
						 <div class="s6">
						 <div class="box1">
						 <p><a href="#"><i class="fa fa-repeat"></i></a></p>
						 <p><a href="#" style="color:#fff;">Request for Management  </a></p>
						 </div>
						 </div>
						 </div>
						 
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
				Copyright ?? 2018 All Rights Reserved By Mr.Mason.
                </footer>
              <!--================= end footer section ================-->
            </div>
        </div>
        <!-- END wrapper -->

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
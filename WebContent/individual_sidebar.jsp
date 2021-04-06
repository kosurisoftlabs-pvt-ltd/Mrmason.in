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
          
           <!-- ========== Left Sidebar Start ========== -->
				<div class="left side-menu">
				<div class="slimscroll-menu" id="remove-scroll">
				<!--- Sidemenu -->
				<div id="sidebar-menu">
				<!-- Left Menu Start -->
				<ul class="metismenu" id="side-menu">
				<li class="menu-title">Individual Dashboard</li>
				
				<li>
				<a href="./individual_dashboard.jsp"><i class="fi-air-play"></i><span>Dashboard</span></a>
				</li> 
				<li>
				<a href="javascript: void(0);"><i class="fa fa-user"></i><span>Profile </span> <span class="menu-arrow"></span></a>
				<ul class="nav-second-level" aria-expanded="false">
				<li><a href="./ShowIProfile">View</a></li>
				<li><a href="./ShowIProfile">Update</a></li>
				<li><a href="#">Change Password</a></li>
				</ul>
				</li>
				<li>
				<a href="./ImyServiceRequests"><i class="fi-paper"></i> <span> My Requests</span></a>
				</li>
				    
				 <li>
				<a href="javascript: void(0);"><i class="fa fa-user"></i><span>Quotation Management </span> <span class="menu-arrow"></span></a>
				<ul class="nav-second-level" aria-expanded="false">
				<li><a href="#">Add Quotation</a></li>
				<li><a href="#">Update Quotation</a></li>
				<li><a href="#">My Quotations</a></li>
				</ul>
				</li> 
				<!-- <li>
				<a href="javascript: void(0);"><i class="fa fa-user"></i><span>Profile </span> <span class="menu-arrow"></span></a>
				<ul class="nav-second-level" aria-expanded="false">
				<li><a href="user_view.jsp">View</a></li>
				<li><a href="user_update.jsp">Update</a></li>
				<li><a href="user_chanegpassword.jsp">Change Password</a></li>
				</ul>
				</li> -->
				
				<!--<li>
				<a href="#"><i class="fi-paper"></i> <span>Task Board </span></a>
				</li>-->
				</ul>
				</div>
				<div class="clearfix"></div>
				</div>
				</div>
            <!--================ Left Sidebar End =====================-->
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
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
				<li class="menu-title">Admin Dashboard</li>
				<!--<li>
				<a href="javascript: void(0);">
				<i class="fi-air-play"></i><span class="badge badge-success pull-right">2</span> <span> Dashboard </span>
				</a>
				<ul class="nav-second-level" aria-expanded=false>
				<li><a href="index.html">Dashboard 1</a></li>
				</ul>
				</li>--->
				<li>
				<a href="UserHomepage.jsp"><i class="fi-air-play"></i><span>Dashboard</span></a>
				</li> 
                <li>
				<a href="javascript: void(0);"><i class="fa fa-life-ring"></i><span>Supply Management </span> 
				<span class="menu-arrow"></span></a>
				<ul class="nav-second-level" aria-expanded="false">
				<li><a href="Registersupply.jsp">Register Suppliers</a></li>
				</ul>
				</li>
                <li>
				<a href="javascript: void(0);"><i class="fa fa-server"></i><span>Service Management </span> 
				<span class="menu-arrow"></span></a>
				<ul class="nav-second-level" aria-expanded="false">
				<li><a href="Registerpersonnel.jsp">Register Personnel</a></li>
				<li><a href="./GetAllRequests">Request Management</a></li>
				</ul>
				</li>				
				<li>
				<a href="javascript: void(0);"><i class="fa fa-user"></i><span>Profile </span> 
				<span class="menu-arrow"></span></a>
				<ul class="nav-second-level" aria-expanded="false">
				<li><a href="./ShowProfile">View</a></li>
				<li><a href="./ShowProfile">Update</a></li>
				<li><a href="changepassword.jsp">Change Password</a></li>
				</ul>
				</li>
				<li>
				<a href="javascript: void(0);"><i class="fa fa-building"></i><span>Add New Business </span> 
				<span class="menu-arrow"></span></a>
				<ul class="nav-second-level" aria-expanded="false">
				<li><a href="manufacturer.jsp">Manufacturer</a></li>
				<li><a href="distributor.jsp">Distributor</a></li>
				<li><a href="dealer.jsp">Dealer</a></li>
				<li><a href="retailer.jsp">Retailer</a></li>
				</ul>
				</li>
				
				
				<li>
				<a href="javascript: void(0);"><i class="fa fa-building"></i><span>Business User Mgmt  </span> <span class="menu-arrow"></span></a>
				<ul class="nav-second-level" aria-expanded="false">
				<li><a href="./ViewBusinessUsers.jsp">Registered Business Users</a></li>
				</ul>
				</li>
				
			
				
				<li>
				<a href="javascript: void(0);"><i class="fa fa-bar-chart"></i><span>Material Management </span> <span class="menu-arrow"></span></a>
				<ul class="nav-second-level" aria-expanded="false">
				<li><a href="Productspage.jsp">Add Product</a></li><!-- Addproduct.jsp -->
				<li><a href="upload_excelsheet.jsp">Upload form Excel Sheet</a></li>
				<li><a href="viewASPMaterial.jsp">Update Product</a></li><!-- //update_product.jsp -->
				<li><a href="deactivate_delete_product.jsp">Deactivate/Delete Product</a></li>
				<li><a href="request_new_category.jsp">Request for New Category</a></li>
				<li><a href="update_price_submit.jsp">Update Price&Submit </a></li>
				</ul>
				</li>
				<li>
				<a href="javascript: void(0);"><i class="fa fa-quote-right"></i><span>Quotation Management </span> <span class="menu-arrow"></span></a>
				<ul class="nav-second-level" aria-expanded="false">
				<li><a href="newquotaions.jsp">New Quotations</a></li>
				<li><a href="uodatequotations.jsp">Update Quotations</a></li>
				<li><a href="approved_quotations.jsp">Approved Quotations</a></li>
				</ul>
				</li>
				<li>
				<a href="javascript: void(0);"><i class="fa fa-registered"></i><span>Request for Management </span> <span class="menu-arrow"></span></a>
				<ul class="nav-second-level" aria-expanded="false">
				<li><a href="updateprice.jsp">Update Price&Submit </a></li>
				</ul>
				</li>
				<li>
				<a href="javascript: void(0);"><i class="fa fa-id-card-o"></i><span>Category </span> <span class="menu-arrow"></span></a>
				<ul class="nav-second-level" aria-expanded="false">
				<li><a href="add_category.jsp">Add Category</a></li>
				<li><a href="./ShowCategories">View Category</a></li>
				<li><a href="add_sub_category.jsp">Add Sub-Category</a></li>
				<li><a href="./ShowSubCategories">View Sub-Category</a></li>
				<li><a href="add_brand.jsp">Add Brand</a></li>
				<li><a href="ViewABrands">View Brands</a></li>
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
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
            <jsp:include page="./homeTop1.jsp"></jsp:include>
            <jsp:include page="./dashboardSidebar.jsp"></jsp:include>
                   <div class="content-page">
                   
                       <div class="content">
                       <div class="container-fluid">
                       <!--=============== top section ================-->
                        <div class="row">
                        <div class="col-12">
                        <div class="page-title-box">
                        <h4 class="page-title float-left">Update profile</h4>
                        <ol class="breadcrumb float-right">
                        <li class="breadcrumb-item"><a href="UserHomepage.jsp">Dashboard</a></li>
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
			  <!--=========== form section =============-->
						<div class="col-xl-9 col-sm-9">
						 <span class="bo">Update profile</span>
						 <div class="form-group col-md-12 col-sm-12"><br></div>
						 <form name="form" method="post" onsubmit="return validation()">
						 <div class="row">
						 <div class="form-group col-md-6 col-sm-6">
                         <label for="pincode">Name :</label>
                         <input type="text" class="form1" name="name" id="name" placeholder="Enter Your Name" required="required">
                         </div>
						 
						 <div class="form-group col-md-6 col-sm-6">
                         <label for="pincode">Gender :</label>
                         <p style=" margin-top: 15px; line-height: 0px;">
                     	 <input type="radio" name="gender" value="MALE" checked="checked"> MALE &nbsp;
				         <input type="radio" name="gender" value="FEMALE"> FEMALE
						 </p>
                         </div>
						 
						 <div class="form-group col-md-6 col-sm-6">
                         <label for="pincode">Qualification :</label>
                         <input type="text" class="form1" name="qualification" id="qualification" placeholder="Your Qualification" required="required">
                         </div>
						 
						 <div class="form-group col-md-6 col-sm-6">
                         <label for="pincode">Notification Status :</label>
                         <p style=" margin-top: 15px; line-height: 0px;">
					     <input type="radio" name="notifications" value="1" checked="checked"> ON &nbsp;
                       	 <input type="radio" name="notifications" value="0"> OFF
					     </p>
                         </div>
                         
                         <div class="form-group col-md-6 col-sm-6">
                         <label for="pincode">Address :</label>
                         <input type="text" class="form1" name="address" id="address" placeholder="Your Address" required="required">
                         </div>
                         
                         <div class="form-group col-md-6 col-sm-6">
                         <label for="pincode">City :</label>
                         <input type="text" class="form1" name="city" id="city" placeholder="Enter Your City" required="required">
                         </div>
                         
                         <div class="form-group col-md-6 col-sm-6">
                         <label for="pincode">State :</label>
                         <input type="text" class="form1" name="state" id="state" placeholder="Enter Your State" required="required">
                         </div>
                         
                         <div class="form-group col-md-6 col-sm-6">
                         <label for="pincode">Pincode :</label>
                         <input type="text" class="form1" name="pincode" id="pincode" placeholder="Enter Your Pincode" required="required">
                         </div>
                         
                         <div class="form-group col-md-6 col-sm-6">
                         <label for="pincode">Email :</label>
                         <input type="text" class="form1" name="email" id="email" placeholder="Enter Your Email" required="required">
                         </div>
                         
                         <div class="form-group col-md-6 col-sm-6">
                         <label for="pincode">Mobile :</label>
                         <input type="text" class="form1" name="mobile" id="mobile" placeholder="Enter Your Mobile No" required="required">
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
						 <div class="col-xl-3 col-sm-3"></div>
				 <!--=========== end form section =============-->
				  <div class="col-xl-12 col-sm-12"><br><br></div>
                         </div>
						 </div>
						</div>
					    </div>
                        </div>
						<div class="col-xl-12 col-sm-12"><br><br></div>
                     <!--============== body section ==============--> 
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
</html>
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
                        <h4 class="page-title float-left">Dealer</h4>
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
						<div class="col-xl-8 col-sm-8">
						<form name="form" action="./AddNewBusiness"  method="post" onsubmit="return validation()">
						   <span class="bo">Business Details :
						   <br><br>
						   <%if(request.getAttribute("message")!=null){out.println(request.getAttribute("message"));} %>
						   </span>
						   <div class="form-group col-md-12 col-sm-12"></div>
						   <div class="row">
						   <div class="form-group col-md-6 col-sm-6">
                           <label for="pincode">Business Type :</label>
							<input type="text" class="form1" name="businessType" id="businessType" value="Dealer" readonly="readonly">
                           </div>
                           </div>
						   <div class="row">
							<div class="form-group col-md-6 col-sm-6">
							<label for="email">Business Name <span style="color:red;font-size:21px;">*</span></label>
							<input type="text" class="form1" name="businessname" id="businessname" placeholder="Enter Your Business Name" required>
							
							</div>
							
						   <div class="form-group col-md-6 col-sm-6">
                           <label for="pincode">Gst No :<span style="color:red;font-size:21px;">*</span></label>
                           <input type="text" class="form1" name="gstno" id="gstno" placeholder="Enter Your Gst No" required>
                           </div>
						   
						  </div>
						  <div class="form-group col-md-12 col-sm-12"></div>
						  <span class="bo">Complete Address :</span>
						  <div class="form-group col-md-12 col-sm-12"><br></div>
						  <div class="row">
						  
						  <div class="form-group col-md-6 col-sm-6">
                          <label for="pincode">Pincode :<span style="color:red;font-size:21px;">*</span></label>
                          <input type="text" class="form1" name="pincode" id="pincode" placeholder="Enter Your Pincode" required>
                          </div>
						  
						  <div class="form-group col-md-6 col-sm-6">
                          <label for="pincode">D.No :</label> 
                          <input type="text" class="form1" name="dno" id="d.no" placeholder="Enter Your D.No" required>
                          </div>
						  
						  <div class="form-group col-md-6 col-sm-6">
                          <label for="pincode">Street :</label>
                          <input type="text" class="form1" name="street" id="street" placeholder="Enter Your Street" required>
                          </div>
						  
						  <div class="form-group col-md-6 col-sm-6">
                          <label for="pincode">Landmark :<span style="color:red;font-size:21px;">*</span></label>
                          <input type="text" class="form1" name="Landmark" id="Landmark" placeholder="Enter Your Landmark" required>
                          </div>
						  
						  <div class="form-group col-md-6 col-sm-6">
                          <label for="pincode">City :<span style="color:red;font-size:21px;">*</span></label>
                          <input type="text" class="form1" name="city" id="city" placeholder="Enter Your City" required>
                          </div>
						  
						  <div class="form-group col-md-6 col-sm-6">
                          <label for="pincode">State :<span style="color:red;font-size:21px;">*</span></label>
                          <input type="text" class="form1" name="state" id="state" placeholder="Enter Your State" required>
                          </div>
						  
						  </div>
						  <div class="col-xl-12 col-sm-12"><br></div>
						  <div class="row">
						  <div class="form-group col-lg-4"> </div>
					      <div class="form-group col-lg-3">
                          <button type="submit" class="btn btn-info btn-block" name="sub"  id="box"> Submit </button>
						  </div>
				          <div class="form-group col-lg-4"> </div>
						  </div>
						 
						</form>
						</div>
						
						<div class="col-xl-4 col-sm-4">
						
						</div>
						</div>
					    </div>
						<div class="col-xl-12 col-sm-12"><br><br></div>
                        </div>
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
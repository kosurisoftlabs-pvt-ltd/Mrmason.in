<%@ page language="java"  contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
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
        <style>
        #one{
            font-size: 18px;
		    color: #3c653e;
		    text-decoration: underline;
		    font-weight: 500;
		    }
          </style>
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
                        <h4 class="page-title float-left">View Category</h4>
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
						<div class="col-xl-12 col-sm-12">
						 <span class="bo">View Category</span>
						 <div class="form-group col-md-12 col-sm-12"><br></div>
					   <!-- <form name="form" method="post" onsubmit="return validation()">
						 <div class="row">
						
						 <div class="form-group col-md-4 col-sm-4">
                         <label for="pincode">Category :</label>
                         <input type="text" class="form1" name="categoty" id="category" placeholder="Your Category" required>
                         </div>
                         
                         <div class="form-group col-md-4 col-sm-4">
                         <label for="pincode">Sub Category :</label>
                         <input type="text" class="form1" name="sub" id="sub" placeholder="Your Sub Category" required>
                         </div>
						 
						 <div class="form-group col-md-1 col-sm-1">
                         </div>
                         
						 <div class="col-xl-2 col-sm-2">
						 <label for="pincode"></label>
						 <button type="submit" class="btn btn-info btn-block" name="sub"  id="box"> Search </button>
						 </div>
						 </div>
						 </form>  -->
						 </div>
				 <!--=========== end form section =============-->
				   <div class="col-xl-12 col-sm-12"><br></div>
                <!--  =========== table section =============	 -->
				    
				    <div class="col-xl-12 col-sm-12">
				    <div id="no-more-tables">
                    <table class="col-md-12 table-bordered table-striped table-condensed cf">
        		    <thead class="cf" id="cf">
        			<tr>
        				<th class="numeric">Category ID</th>
        				<th class="numeric">Category Name</th>
        			</tr>
        		    </thead>
        		    <tbody>
        		    <c:forEach var="category" items="${categories}">
        			<tr>
        				<td data-title="Product Name" class="numeric">${category.CAT_ID}</td>
        				<td data-title="Material Name" class="numeric">${category.CATEGORY}</td>
        			</tr>
        			</c:forEach>
					</tbody>
					</table>
					</div>
					</div> 
			   <!--  =========== end table section =============			 -->
						
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
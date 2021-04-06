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
                    <!-- LOGO -->
                    <div class="topbar-left">
					<a href="index.jsp" class="logo">
					<span><img src="images/mainlogo1.png" style="width: 200px; height: 41px;" alt="" height="25"></span>
					<i><img src="images/mainlogo2.png" style="width:60px; height: 37px;" alt="" height="28"></i>
					</a>
					</div>
					<!-- <div class="topbar-left">
					<a href="index.jsp" class="logo">
					<span><img src="images/logo.png" alt="" height="25"></span>
					<i><img src="images/logo_sm.png" alt="" height="28"></i>
					</a>
					</div> -->
					<%
       						String referenceid="",usertypes="",username="";
                            if(session.getAttribute("referenceid")!=null)
                           	{
                           		referenceid=(String)session.getAttribute("referenceid");
                           		usertypes=(String)session.getAttribute("usertypes");
                           		username=(String)session.getAttribute("username");
                           	}
                        
       						%>
                    <nav class="navbar-custom">
                    <ul class="list-inline float-right mb-0"> 
                    <%if(referenceid!=""){ %>  
                    <li class="list-inline-item dropdown notification-list">
                    <%=username%>
                    <a class="nav-link dropdown-toggle waves-effect waves-light nav-user" data-toggle="dropdown" href="#" role="button"
                    aria-haspopup="false" aria-expanded="false">
                    
                    <img src="dashboard/images/users/user.png" alt="user" class="rounded-circle">
                    </a>
                    <div class="dropdown-menu dropdown-menu-right profile-dropdown " aria-labelledby="Preview">
                    
                    <a href="javascript:void(0);" class="dropdown-item notify-item">
                    <i class="mdi mdi-account-circle"></i> <span>Profile</span>
                    </a>
                    <a href="Logout" class="dropdown-item notify-item">
                    <i class="mdi mdi-power"></i> <span>Logout</span>
                    </a>
                    </div>
                    </li>
                    <%} else{%>
                     <li class="left1" id="login"><a href="./login3.jsp">Login</a></li>
      				 <li class="left1" id="register1"><a href="./register.jsp">Register</a></li>
                     	<%} %>
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
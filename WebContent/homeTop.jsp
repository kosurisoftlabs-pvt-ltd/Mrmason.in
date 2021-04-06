<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html >
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<style type="text/css">
 .navbar-fixed-bottom, .navbar-fixed-top {
    position:relative !important;
    }
    
#navbar a {
  display: block;
}

.content {
  padding: 16px;
}

.sticky {
  position: fixed;
  z-index:2222;
  top: 0;
  width: 100%
}

.sticky + .content {
       padding-top: 115px;
}
 
 #navbar {
  
     background:none !important;
}
.dropdown-submenu {
    position: relative;
}

.dropdown-submenu .dropdown-menu {
    top: 0;
    left: 100%;
    margin-top: -1px;
}
 .navbar-nav > li > .dr::before {bottom: 100%;left: 72% !important ;border: solid transparent;content: " ";height: 0;width: 0;position: absolute;pointer-events: none;border-bottom-color: #fec107;border-width: 7px;margin-left: -7px;}
 #one1{
margin: 0  55px;
}
 
  @media  (max-width:1024px){
#one1{
margin: 0  15px;
}
} 

 @media  (max-width:1280px){
#one1{
margin: 0  40px;
}
} 

 @media  (max-width:768px){
.one2{
float:none !important;
}

.one2 li{
padding: 0;
margin: 0 !important;
}
.navbar-nav {
    margin: 0.1px 0px;
}
.to2{
       display: none;
    }
} 
.to2{
    position: absolute;
    margin: 1.3% -18%;
    font-size: 19px;
    color: #549ed8;
    }
</style>

</head>
<body  onscroll="myFunction()">
		 <div id="navbar">
		 <nav id="mainNav" class="navbar navbar-fixed-top affix-top" style="background: #ffffff; border-bottom: 2px solid #2e6130;">
         <div class="col-md-12 col-xs-12">
         
                <div class="container-fluid " style="position:relative;bottom:0px;">
                
                    <div class="navbar-header ">
                        <button type="button" class="navbar-toggle col-xs-1 collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1" aria-expanded="false">
                            <span class="sr-only">Toggle navigation</span><i class="fa fa-bars"></i>
                        </button>
                        <div>
                          <h2  style="color:#fff;margin-top:3px;font-weight:600;">
                          <a href="index.jsp"> <img src="images/mainlogo.png" class="img-responsive" style=" margin-top: 6px;"></a>
                       <!-- <a class="navbar-brand  f1" href="./index.jsp" style="color:#18aedf;margin-top:3px;font-weight:600;font-size: 24px">
                          Mr.<span style="margin-left:2px; color:#3c653e;">Mason</span>
                        </a> --> </h2></div>
                    </div>
                    <!--Collect the nav links, forms, and other content for toggling--> 
                    
                    
                    <div class="navbar-collapse collapse  " id="bs-example-navbar-collapse-1" aria-expanded="false" style="height: 1px;overflow-x:hidden">
                    
                        <ul class="nav navbar-nav left1">
                            <li class="active" id="index"><a href="./index.jsp">Home</a></li>
                            <li class="left1" id="AboutUs"><a href="./AboutUs.jsp">About Us</a></li>
                            <li class="left1" id="ContactUs"><a href="./ContactUs.jsp">Contact Us</a></li>
                            <li class="left1" id="ContactUs"><a href="./ContactUs.jsp">Get Quote</a></li>
                            <li class="dropdown left1" id="service">
                            <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true">Services<span class="caret"></span></a>
                                <ul class="dropdown-menu">
                                <li><a href="#">Building Materials</a></li>
                                <li><a href="#">Property Developers</a></li>
                                <li class="dropdown dropdown-submenu">
						        <a href="#" class="dropdown-toggle" data-toggle="dropdown">Other Service</a>
						        <ul class="dropdown-menu">
						        <li class="kopie"><a href="#">Civil Work</a></li>
						        <li><a href="#">Plumbing</a></li>
						        <li><a href="#">Painting </a></li>
						        <li><a href="#">Electrical</a></li>
						        </ul>
						        </li>
                                </ul>
                           </li>
                    <!--===================== megu menu section =================================-->  
                         <!--   <li class="dropdown left1" id="service">
                            <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true">ALL Category<span class="caret"></span></a>
                                <ul class="dropdown-menu">
                                <li><a href="#">Electronics</a></li>
                                <li><a href="#">Home & Kitchen</a></li>
                                <li><a href="#">Electronics</a></li>
                                <li><a href="#">Electronics</a></li>
                                <li class="dropdown dropdown-submenu">
						        <a href="#" class="dropdown-toggle" data-toggle="dropdown">Electronics</a>
						        
	             <ul class="dropdown-menu mega-dropdown-menu" id="megu_menu1">
					     <li class="col-sm-4">
    					<ul>
							<li class="dropdown-header" id="megu">COMPUTERS</li>
							<hr>
							<li><a href="#">Auto Carousel</a></li>
							<li><a href="#">Auto Carousel</a></li>
							<li><a href="#">Auto Carousel</a></li>
							<li><a href="#">Auto Carousel</a></li>
                            <li><a href="#">Carousel Control</a></li>
                            <li><a href="#">Left & Right Navigation</a></li>
							<li><a href="#">Four Columns Grid</a></li>
							<br><br><br>
						</ul>
					    </li> 
					
					     <li class="col-sm-4">
						<ul>
							<li class="dropdown-header" id="megu">MOBILES</li>
							<hr>
							<li><a href="#">Navbar Inverse</a></li>
							<li><a href="#">Pull Right Elements</a></li>
							<li><a href="#">Coloured Headers</a></li>                            
							<li><a href="#">Primary Buttons & Default</a></li>
							<li><a href="#">Auto Carousel</a></li>
							<li><a href="#">Auto Carousel</a></li>
							<li><a href="#">Auto Carousel</a></li>							
						</ul>
					    </li> 
					
					    <li class="col-sm-4">
						<ul>
							<li class="dropdown-header" id="megu">ALL ELECTRONICS</li>
							<hr>
                            <li><a href="#">Easy to Customize</a></li>
							<li><a href="#">Calls to action</a></li>
							<li><a href="#">Custom Fonts</a></li>
							<li><a href="#">Auto Carousel</a></li>
							<li><a href="#">Auto Carousel</a></li>
							<li><a href="#">Slide down on Hover</a></li>                         
						</ul>
					    </li> 
				   </ul>	
						     </li>
						        
						        <li class="dropdown dropdown-submenu">
						        <a href="#" class="dropdown-toggle" data-toggle="dropdown">Home & Kitchen</a>
						        <ul class="dropdown-menu mega-dropdown-menu" id="megu_menu1">
					     <li class="col-sm-4">
    					<ul>
							<li class="dropdown-header" id="megu">COMPUTERS</li>
							<hr>
							<li><a href="#">Auto Carousel</a></li>
							<li><a href="#">Auto Carousel</a></li>
							<li><a href="#">Auto Carousel</a></li>
							<li><a href="#">Auto Carousel</a></li>
                            <li><a href="#">Carousel Control</a></li>
                            <li><a href="#">Left & Right Navigation</a></li>
							<li><a href="#">Four Columns Grid</a></li>
							<br><br><br>
						</ul>
					    </li> 
					 
					    <li class="col-sm-4">
						<ul>
							<li class="dropdown-header" id="megu">MOBILES</li>
							<hr>
							<li><a href="#">Navbar Inverse</a></li>
							<li><a href="#">Pull Right Elements</a></li>
							<li><a href="#">Coloured Headers</a></li>                            
							<li><a href="#">Primary Buttons & Default</a></li>
							<li><a href="#">Auto Carousel</a></li>
							<li><a href="#">Auto Carousel</a></li>
							<li><a href="#">Auto Carousel</a></li>							
						</ul>
					    </li>
					
					    <li class="col-sm-4">
						<ul>
							<li class="dropdown-header" id="megu">ALL ELECTRONICS</li>
							<hr>
                            <li><a href="#">Easy to Customize</a></li>
							<li><a href="#">Calls to action</a></li>
							<li><a href="#">Custom Fonts</a></li>
							<li><a href="#">Auto Carousel</a></li>
							<li><a href="#">Auto Carousel</a></li>
							<li><a href="#">Slide down on Hover</a></li>                         
						</ul>
					    </li> 
				  </ul>	
						        
						        </li>
						        
						        <li class="dropdown dropdown-submenu">
						        <a href="#" class="dropdown-toggle" data-toggle="dropdown">Electronics</a>
						        <ul class="dropdown-menu">
						        <li class="kopie"><a href="#">Plumbing</a></li>
						        <li><a href="#">Flowering</a></li>
						        <li><a href="#">Paints </a></li>
						        <li><a href="#">Electricity</a></li>
						        </ul>
						        </li>
                                </ul>
                           </li> -->
                            <li class="left1" id="aboutUs"><a href="./houseFinance.jsp">House Finance</a></li>
                          
                              
                           
                  <!--===================== end megu menu section =================================-->        
                           <!-- <li class="left1" id="myitem"><a href="./Myitem.jsp">My Item List</a></li> -->
                              
                              <!--  <li class="dropdown left1" id="service">
                                <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true">Compare<span class="caret"></span></a>
                                <ul class="dropdown-menu">
                                    <li><a href="./searchHServiceUsedCar.jsp">New Car</a></li>
                                    <li><a href="./searchHServiceUsedBike.jsp">New Bike</a></li>
                                </ul>
                               </li> -->
                               
                            
                         <!--    <li class="left1 hidden-lg hidden-md" id="auto"><a href="vehicleFinance.jsp">Vehicle Finance</a></li>
                            
                            <li class="left1 hidden-lg hidden-md" id="road"><a href="roadAssistance.jsp">Road Assistance</a></li>
                            
                            <li class="left1 hidden-lg hidden-md" id="vechicle"><a href="vehicleInsurence.jsp">Vehicle Insurance</a></li> -->
                           
                            <%
       						String referenceid="",usertypes="",username="";
                            try
                            {
                            	/* System.out.println("Before Checking Session Attribute in homeTop.jsp"); */
                            if(session.getAttribute("referenceid")!=null)
                           	{
                            	/* System.out.println("Session Attribute is not equal to null, inside if condition"); */
                           		referenceid=(String)session.getAttribute("referenceid");
                           		/* System.out.println("Session Attribute reading referenceid : "+referenceid); */
                           		usertypes=(String)session.getAttribute("usertypes");
                           		username=(String)session.getAttribute("username");
                           	}
                            else
                            {
                            	/* System.out.println("Session Attribute false. inside else part"); */
                            }
                            }catch(Exception e)
                            {
                            	e.printStackTrace();
                            }
       						%>
                         
                        </ul>
                     
                     <!-- <span class="to2">All building services under one roof</span> -->
           <div id="navbar" class="pull-right one2">
              <nav  style="background: background: #ffffff;" >
                <div class="container-fluid " style="position:relative;bottom:0px;">
                  
             
                        <ul class="nav navbar-nav left1">
                           <%if(referenceid!=""){ %>  
							<li class="dropdown" id="one1">
                         	<a href="./GotoDashboard">My Account</a><%=username%>
					       <ul class="dropdown-menu">
					        <li>
					        <a href="#" class="btn  dropdown-toggle" type="button" data-toggle="dropdown" role="button" aria-haspopup="true" style="text-transform: lowercase">
					        
					        <span class="caret"></span>
					        </a>
					        
					        </li>
					        <li><a href="./Logout">LogOut</a></li>
					       </ul></li>
                        	<%} else{%>
      <li class="left1" id="login"><a href="./login3.jsp">Login</a></li>
      <li class="left1" id="register1"><a href="./register.jsp">Register</a></li>
                     	<%} %>
       
                          <!-- 
                                <li class="dropdown left1 hidden-xs" id="service">
                              
                                <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true"><span class="glyphicon">&#xe011;</span></a>
                                <ul class="dr dropdown-menu" style="margin-left: -115px;">
                               
                                    <li><a href="./searchHServiceUsedCar.jsp">Vehicle Finance</a></li>
                                    <li><a href="./searchHServiceUsedBike.jsp">Road Assistance</a></li>
                                    <li><a href="./searchHServiceUsedBike.jsp">Vehicle Insurance</a></li>
                                </ul>
                              </li> -->
                             
                        </ul>
                </div> 
            </nav>
            </div> 
            </div>
                 
                </div> 
                </div>
                
                
            </nav>
           
          </div>
          
          
           <div class="content"></div>
    
<script>
var navbar = document.getElementById("navbar");
var sticky = navbar.offsetTop;

function myFunction() {
  if (window.pageYOffset >= sticky) {
    navbar.classList.add("sticky")
  } else {
    navbar.classList.remove("sticky");
  }
}
</script>
<script type="text/javascript">

/* 
	 window.onscroll = function () {
         alert("scrolling");
     }
 */
</script>
<script>
$(document).ready(function(){
  $('.dropdown-submenu a.test').on("click", function(e){
    $(this).next('ul').toggle();
    e.stopPropagation();
    e.preventDefault();
  });
});
</script>


 
</body>
</html>
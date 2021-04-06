<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
<title>Mr.Mason | Login</title>
<link href="images/Home.png" type="img/Home-512.png" rel="icon">
 <link href="assets/css/style1.css" rel="stylesheet" type="text/css"/>
<style rel="stylesheet" type="text/css" >
.h1_bg_sel {
	background: url('https://imgct2.aeplcdn.com/images4/sel_car_h1_bg.png')
		no-repeat;
	height: 59px;
	line-height: 47px !important;
	line-height: 47px;
	color: #fff;
	font-size: 15px !important;
	text-align: center;
	font-weight: bold;
    background-size: 100% 100%;
}

.headeradwrap {
	padding: 20px 20px 8px !important;
}

#rightPriceDetails {
	clear: both;
	color: red;
	font-weight: bold;
	font-size: 17px;
	text-align: center;;
}

.protr {
	background: #ffffff;
	padding: 3px;
	-webkit-box-shadow: 1px 2px 4px 0px rgba(0, 0, 0, 0.65) -moz-box-shadow:
		 1px 2px 4px 0px rgba(0, 0, 0, 0.65);
	box-shadow: 1px 2px 4px 0px rgba(0, 0, 0, 0.65);
	border: 1px #e1e1e1 solid;
	overflow: hidden;
	margin-bottom: 10px;
	margin-right: 4px;
}

.aucformFieldsBox input[type="text"], .aucformFieldsBox select {
	/* width: 235px; */
}

.aucformFieldsBox select {
	/* width: 235px; */
}

#rightPriceDetails span {
	font-size: 12px;
	color: #737373;
	font-weight: normal;
}

.crlgo {
	float: left;
	width: 135px;
	font-size: 13px;
	background: url() no-repeat center 0px;
	padding-top: 22px;
	background-size: 100px;
}

.aucformFieldsBox input[type="text"], .aucformFieldsBox select {
    background: #FFFFFF;
    color: #888888;
    /* float: right; */
    height: 36px !important;
    margin: 0 0 0px !important;
    padding: 8px;
    border-radius: 0px 4px 4px 0px !important;
}
.input-group-addon {
    padding: 6px 12px;
    font-size: 20px !important;
    font-weight: 400;
    line-height: 1;
    color: #fff !important;
    text-align: center;
    background-color: #18aedf !important;
    border: 1px solid #18aedf !important;
    border-radius: 4px 0 0 4px !important;
}
</style>
<!-- Base Css -->
<link href="assets/css/base.css" rel="stylesheet" type="text/css" />
<link href="assets/css/register-page.css" rel="stylesheet"
	type="text/css" />
	
</head>
<body>
	<!-- page loader -->
	<div class="se-pre-con"></div>
	<div id="page-content">
			<jsp:include page="./homeTop.jsp"></jsp:include>
		    <section class="service-inner " id="top2" >
			<div class="container">
				<div class="row">
					<section class="sellUcarpg">

						<div class="col-lg-6 col-md-6 col-sm-12 col-xsm-12 ">
							<div class="auctionFormLeft"
								style=" margin-right: 15px; padding: 0px 20px 0 0;">
								
								<img src="assets/images/bu.png"	class="img-responsive">
								<div class="col-md-12 col-xs-12 col-sm-12 res3">
                       <ul class="sellCarInfolist">
								
									<li>
										<div class="sellIconTxtWrapper">
											<h2>Genuine Buyers</h2>
											<p>We let the buyers get in touch with you directly</p>
										</div>
									</li>
									<li>
										<div class="sellIconTxtWrapper">
											<h2>Your Homes/Rentals stays listed till the Building Materials is sold</h2>
										</div>
									</li>
								</ul>
                       		</div>	
							</div>
						</div>
						<div class="col-lg-6 col-md-6 col-sm-12 col-xsm-12   res"  style="position: relative;top: 40px;">
							<div class="auctionFormRight">
							
							<div class="col-md-1 col-xs-12"></div>
							
								<div  class="auctionMainForm col-md-10 col-xs-12">
									<% String message="";
									if(request.getAttribute("message")!=null)
									{
										message = (String)request.getAttribute("message");
									%>
                    					<h4 style="color:red"><%= message %> </h4>    
             			 			<%}else{}%>
									<h2 class="aucformTitle text-center">USER LOGIN</h2>
									 
									<form align="center" name="sellfrm" id="sellfrm"
										 action="./Login" method="post" autocomplete="off">
										 
                                         <div align="center">
                                        
                                         
											<div class="aucformFieldsBox col-md-12 col-xs-12" style=" padding: 0 0;">
										    <div class="col-md-12 col-sm-12">
										    <label style="width: 100%;font-size: 17px;color: #020202; font-family: sans-serif;">Email/Mobile<span style="color: red">*</span></label>	
											<div class="input-group">
											<span class="input-group-addon"><i class="fa fa-user"></i></span>
											<input class="form-control" type="text" placeholder="Enter Email Address" name="email" required>
										    </div>
										    </div>
										  </div>
										  
										  <br>
										<div class="aucformFieldsBox col-xs-12 col-xs-12" style=" margin: 13px 0; padding: 0 0;">
										
										 <div class="col-md-12 col-sm-12">
										  <label style="width: 100%;font-size: 17px;color: #020202; font-family: sans-serif;">Password<span style="color: red">*</span></label>			
										<div class="input-group">
										<span class="input-group-addon"><i class="fa fa-lock"></i></span>
									     <input class="form-control" style=" border-radius: 0px 4px 4px 0px;" type="password" name="password" placeholder="Enter Password" required>
									    </div>
									    </div>
										</div>
										<div class="aucformFieldsBox col-md-12 col-xs-12">
									    <div class="col-md-12 col-xs-12 text-center">
									    <br>
										<h4>										
										<input class="btn" type="submit" value="SIGN IN" style="    width: 100px;
                                        background-color: #18aedf; color: white; padding-bottom: 6px;font-size: 17px; line-height: 19px; border: 1px solid #18aedf;">
										</h4>
									    </div>
										</div>
									    <div align="center" class="aucformFieldsBox col-xs-12 col-md-4" style="font-weight: 700">
									    <a href="./forgotPasswordEmail.jsp" style="color: #18aedf; font-weight: 500;    font-size: 16px;margin: 0 -6%;text-decoration: underline;">Forgot Password</a>
										</div>
										<div class="aucformFieldsBox  col-md-8 col-xs-12">
										
								        <span style="font-size: 14px;">If you are New user Click on 
										&nbsp; 
									    <a href="./register.jsp" style="color: #18aedf; font-weight: 500;font-size: 17px;"><u>Register</u></a></span>
										<br><br>
                               			</div>
                               			</div>
									</form>
								    </div>
							        </div>
						            </div>
					                </section>
				                    </div>
			                        </div>
		                            </section>
	                                </div>
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
	<script src="assets/owl-carousel/owl.carousel.min.js"
		type="text/javascript"></script>
	<!-- counter -->
	<script src="assets/js/jquery.counterup.min.js" type="text/javascript"></script>
	<script src="assets/js/waypoints.js" type="text/javascript"></script>
	<!-- filter portfolio -->
	<script src="assets/js/jquery.shuffle.min.js" type="text/javascript"></script>
	<script src="assets/js/portfolio.js" type="text/javascript"></script>
	<!-- magnific popup -->
	<script src="assets/js/jquery.magnific-popup.min.js"
		type="text/javascript"></script>
	<!-- range slider -->
	<script src="assets/js/ion.rangeSlider.min.js" type="text/javascript"></script>
	<script src="assets/js/jquery.easing.min.js" type="text/javascript"></script>
	<!-- custom -->
	<script src="assets/js/custom.js" type="text/javascript"></script>
	<script type="text/javascript">
 
//   alert(document.activeElement.tabIndex);
//   var tabIndex = $(':focus').attr('tabIndex'); 

/*  var a = myTabPanel.getActiveTab();
 var idx = myTabPanel.items.indexOf(a); */
 
//  document.getElementById('login').classList.add("ACTIVE");
 document.getElementById('login').className = 'active';

 </script>
</body>
</html>
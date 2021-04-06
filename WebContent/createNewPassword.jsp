<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
<title>Mr.Mason | Reset Password</title>
<!-- Base Css -->
<link href="images/Home.png" type="img/Home-512.png" rel="icon">
<link href="assets/css/base.css" rel="stylesheet" type="text/css" />
<link href="assets/css/register-page.css" rel="stylesheet"
	type="text/css" />

<style type="text/css">
.h1_bg_sel {
	background: url(https://imgct2.aeplcdn.com/images4/sel_car_h1_bg.png)
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
    background-color: #18aedf  !important;
    border: 1px solid #18aedf  !important;
    border-radius: 4px 0 0 4px !important;
}
</style>	
	
</head>
<body>
	<!-- page loader -->
	<div class="se-pre-con"></div>
	<div id="page-content">
	<jsp:include page="./homeTop.jsp"></jsp:include>
			
		<section class="service-inner" id="top2" >
			<div class="container">
				<div class="row">
					<section class="sellUcarpg">

						<div class="col-lg-6 col-md-6 col-sm-12 col-xsm-12 ">
							<div class="auctionFormLeft"
								style=" margin-right: 15px; padding: 0px 20px 0 0;">
								
								<img src="assets/images/bu.png"	alt="" title="">
								
								<div class="col-md-12 col-xs-12 col-sm-12 res3">
                      
                        <h1 class="h1_bg_sel">SELL YOUR HOMES/RENTALS FOR FREE</h1>
                        <ul class="sellCarInfolist">
									<li>
									
									</li>
									<li>
										<div class="sellIconTxtWrapper">
											<h2>Genuine Buyers</h2>
											<p>We let the buyers get in touch with you directly</p>
										</div>
									</li>
									<li>
										<div class="sellIconTxtWrapper">
											<h2>Your Used Car stays listed till the Building Materials is sold</h2>
										</div>
									</li>
								</ul>
                              </div>
							</div>
						</div>
						<br>
						<br>
						<%
						String message = "",emailid="";
						try
						{
							if(request.getAttribute("message")!=null)
							{
								message=request.getAttribute("message").toString();
							}
							/* String emailid=request.getAttribute("emailid").toString(); */
							if(request.getParameter("email")!=null)
							{
								emailid=request.getParameter("email").toString();
							}
						}
						catch(Exception e)
						{
							e.printStackTrace();
						}
						%>
						<div class="col-lg-6 col-md-6 col-sm-12 col-xsm-12" >
							<div class="auctionFormRight">
							<div class="col-md-1 col-xs-12"></div>
								<div class="auctionMainForm col-md-10 col-xs-12">
									<% if(message!=null){%>
                    					<h4 style="color:red;font-size: larger"><%= message %> </h4>    
             			 			<%}else{}%>
									<h2 class="aucformTitle" align="center">RESET PASSWORD</h2>
									<form  name="sellfrm" id="sellfrm"
										 action="./ResetPassword" method="get">
										 <div align="center">
										 <div class="aucformFieldsBox" align="left">
                                		 <a href="./login3.jsp" style="cursor: pointer;"><h5 type="text" style="width: 100%;color: #18aedf; font-size: 19px;font-weight: 500;"><i class="fa fa-arrow-left" aria-hidden="true"> &nbsp;Go back</i></h5></a>
                            			</div>
										<div class="aucformFieldsBox">
										
										    <div class="aucformFieldsBox col-md-12 col-xs-12" style=" padding: 0 0;">
										    <div class="col-md-12 col-sm-12">
										    <label style="width: 100%;font-size: 17px;color: #020202; font-family: sans-serif;">New Password<span style="color: red">*</span></label>	
											<div class="input-group">
											<span class="input-group-addon"><i class="fa fa-user"></i></span>
											 <input value="<%=emailid%>" type="hidden" name="emailid">
											 <input class="form-control" type="password" placeholder="new password" name="newPassword" required>
										    </div>
										    </div>
										    </div>
										    <div class="aucformFieldsBox col-md-12 col-xs-12" style=" padding: 0 0;">
										    <div class="col-md-12 col-sm-12">
										    <label style="width: 100%;font-size: 17px;color: #020202; font-family: sans-serif;">Confirm Password <span style="color: red">*</span></label>	
											<div class="input-group">
											<span class="input-group-addon"><i class="fa fa-user"></i></span>
											 <input class="form-control" type="password" placeholder="confirm password" name="confirmPassword" required>
										    </div>
										    </div>
										    </div>
										    <div class="aucformFieldsBox col-md-12 col-xs-12">
											<div class="col-md-12 col-xs-12 text-center">
											<br>
											<h4>										
										    <input class="btn" type="submit" value="CREATE" style=" width: 100px;
                                            background-color: #18aedf; color: white; padding-bottom: 6px;font-size: 17px; line-height: 19px; border: 1px solid #18aedf;">
										    </h4>
											</div>
										    </div>
										   </div>
									</form>
								</div>
							</div>
						</div>
						<div class="col-md-12 col-xs-12 col-sm-12 res5">
                      
                       <div class="col-md-6">
                       <br>
                       <h1 class="h1_bg_sel">SELL YOUR Homes/Rentals FOR FREE</h1>
                       <ul class="sellCarInfolist">
									<li>
									<div class="sellIconImgWrapper">
									<span class="sellicon1"></span>
								    </div>
									</li>
									<li>
									<div class="sellIconImgWrapper">
									<span class="sellicon2"></span>
									</div>
									<div class="sellIconTxtWrapper">
									<h2>Genuine Buyers</h2>
									<p>We let the buyers get in touch with you directly</p>
									</div>
									</li>
									<li>
									<div class="sellIconImgWrapper">
									<span class="sellicon4"></span>
									</div>
									<div class="sellIconTxtWrapper">
									<h2>Your Homes/Rentals stays listed till the car is sold</h2>
									</div>
									</li>
									</ul>
	                                </div>
	                                </div>
						            </section>
					                </div>
				                    </div>
			                        </section>
		                            </div>
	<!-- Footer Section -->
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
</body>
</html>			
											
											
											
											
											
											
											
											
											
											
											
											
											
											
											
											
											
											
											
											
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
<title>Mr.mason | Register</title>
<link href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.0/js/bootstrap.min.js"></script>
<script src="https://code.jquery.com/jquery-1.11.1.min.js"></script>
  <link href="assets/css/base.css" rel="stylesheet" type="text/css"/>
  <link href="assets/css/style1.css" rel="stylesheet" type="text/css"/>
  <link href="dashboard/css/kosuri.css" rel="stylesheet" type="text/css" />
	
  <style>
	#bro1{
	padding: 23px 35px;
    border-radius: 6px 6px 6px 6px;
    border: none;
    background: #fff;
    box-shadow: 0px 0px 16px #ddd;
        margin: 40px 16px;
    }
    :focus {
    outline: -webkit-focus-ring-color auto 0px !important;
     }
     .form1{
      font-size: 15px !important;
      margin: 4px 0;
     }
     .form-group {
    margin-bottom: 1.2rem;
     }
     #bro2{
    text-align: center;
    font-size: 31px;
    color: #3c653e;
    margin: 5px 0px;
    }
	</style>
    </head>
    <body>
	<!-- page loader -->
	<!-- <div class="se-pre-con"></div> -->
	<div id="page-content">
			<jsp:include page="./homeTop.jsp"></jsp:include>		
		    <section class="service-inner" id="top2">
			<div class="container">
			<div class="row">
			  <!--========================= new user section ==================-->
			  <div class="col-lg-2"></div>
 				<div class="col-lg-8" id="bro1">
 				 
 				 <form name="form" action="./AddUServices" method="post" onsubmit="return validation()" enctype="multipart/form-data">
						  
 				   <div class="row">
 				        <h6 id="bro2">New User Register</h6>
 				       
 				         <div class="form-group col-md-6 col-sm-6">
					     <label for="email">Service Type <span style="color:red;font-size:21px;">*</span></label>
						 <select name="serviceType" class="form1" id="years" required>
						 <option>-- Select Service Type --</option>
						 <option>Building Materials</option>
					     <option>Property Developers</option>
						 <option>Plumbing</option>
						 <option>Electricity</option>
						 </select>
						 </div>
						 
						 <div class="form-group col-md-6 col-sm-6"></div>
					 </div>
					 	 
					 <div class="row">	 
					  
						 <div class="form-group col-md-6 col-sm-6">
					     <label for="email">Service Description</label>
						 <input type="text" class="form1" name="description" id="description" placeholder="Enter Service Description" required>
						 </div>
						 
						 <div class="form-group col-md-6 col-sm-6">
					     <label for="email">Work Location/Pincode</label>
						 <input type="text" class="form1" name="Location" id="Location" placeholder="Work Location/Pincode" required>
						 </div>
						 
						 <div class="form-group col-md-6 col-sm-6">
					     <label for="email">Name</label>
						 <input type="text" class="form1" name="name" id="name" placeholder="Enter Your Name" required>
						 </div>
						 
						 <div class="form-group col-md-6 col-sm-6">
					     <label for="email">Mobile</label>
						 <input type="text" class="form1" name="Mobile" id="Mobile" placeholder="Enter Mobile No" required>
						 </div>
						 
						 <div class="form-group col-md-6 col-sm-6">
					     <label for="email">Email Id</label>
						 <input type="text" class="form1" name="email" id="email" placeholder="Enter Your Email Id" required>
						 </div>
						 
						 <div class="form-group col-md-6 col-sm-6">
					     <label for="email">password</label>
						 <input type="text" class="form1" name="password" id="password" placeholder="Enter Password" required>
						 </div>
						 
						 <div class="form-group col-md-6 col-sm-6">
					     <label for="email">Pincode</label>
						 <input type="text" class="form1" name="pincode" id="pincode" placeholder="Enter Pincode" required>
						 </div>
						 
						 <div class="form-group col-md-6 col-sm-6">
					     <label for="email">D.no/Street</label>
						 <input type="text" class="form1" name="street" id="street" placeholder="Enter D.no/Street" required>
						 </div>
						 
						 <div class="form-group col-md-6 col-sm-6">
					     <label for="email">City</label>
						 <input type="text" class="form1" name="city" id="coty" placeholder="Enter Your City" required>
						 </div>
						 
						 <div class="form-group col-md-6 col-sm-6">
					     <label for="email">State</label>
						 <input type="text" class="form1" name="state" id="state" placeholder="Enter Your State" required>
						 </div>
						 
						 <div class="form-group col-md-6 col-sm-6">
					     <label for="email">District</label>
						 <input type="text" class="form1" name="District" id="District" placeholder="Enter Your District" required>
						 </div>
 				
 				        </div>
 				    
	 				   <div class="row">
					   <div class="f-row agree-terms">
				       <input type="checkbox" name="terms" class="check-box" id="terms"> &nbsp;I agree to the Mr.mason.com <a href="privacy-policy" target="_blank">privacy policy</a> &amp; <a href="terms" target="_blank">Terms &amp; Conditions</a> 
				       <div id="error_terms"><strong><b class="error hidden"></b></strong></div>                                       
				       </div>
				       <br>
					   </div>
				   
				        <div class="row">
						 <div class="form-group col-lg-4"> </div>
					     <div class="form-group col-lg-3">
                         <button type="submit" class="btn btn-info btn-block" id="box">Submit</button>
						 </div>
				         <div class="form-group col-lg-4"> </div>
						 </div>
	          </form>
 				</div>
 				<div class="col-lg-2"></div>
			  <!--========================= end new user section ==================-->		
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
	<script src="assets/js/jquery.magnific-popup.min.js" type="text/javascript"></script>
	<!-- range slider -->
	<script src="assets/js/ion.rangeSlider.min.js" type="text/javascript"></script>
	<script src="assets/js/jquery.easing.min.js" type="text/javascript"></script>
	<!-- custom -->
	<script src="assets/js/custom.js" type="text/javascript"></script>

</body>
</html>

											
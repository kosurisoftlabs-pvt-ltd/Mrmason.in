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
<style type="text/css">
#margin-right{
	margin-right: 10px;
	}
.bo1{
    text-align: left;
    margin: 4px 16px;
    font-size: 16px;
    color: #000;
    }								
.h1_bg_sel {
	background: url(https://imgct2.aeplcdn.com/images4/sel_car_h1_bg.png)
		no-repeat;
	height: 59px;
	line-height: 47px !important;
	line-height: 47px;
	color: #fff;
	font-size: 15px !important;
	text-align: center;
	background-size:100% 100%;
	font-weight: bold;
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

/* .aucformFieldsBox input[type="text"], .aucformFieldsBox select {
	width: 235px;
} */

/* .aucformFieldsBox select {
	width: 235px;
} */

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
    height: 31px !important;
    margin: 0 0 0px !important;
    padding: 8px;
    border-radius: 3px 3px 3px 3px !important;
}
.input-group {
    position: relative;
    display: table;
    border-collapse: separate;
    width: 100%;
}
.input-group-addon {
     padding: 4px 11px;
    font-size: 16px !important;
    font-weight: 400;
    line-height: 1;
    color: #fff !important;
    text-align: center;
    background-color: #18aedf !important;
    border: 1px solid #18aedf !important;
    border-radius: 4px 0 0 4px !important;
}
.ter a{
        margin: 0px 0px;
    position: absolute;
    font-size: 16px;
    text-decoration: underline;
    }
    .input-group-addon{
        width: 38px;
    
    }
    .auctionMainForm #sellfrm {
    padding: 0px !important;
}
#one{
font-size: 17px;color: 
#020202;
line-height: 1;
 font-family: sans-serif;
}
@media  (max-width:767px){
#one{
font-size: 17px;color: 
#020202;
line-height: 1;
 font-family: sans-serif;
 width:100%;
}
}
.input-group-addon{
width:40px !important;
}
#bo1{
    border: 1px solid #ccc;
    border-radius: 3px;
    text-align: start;
    padding: 7px 12%;
    font-size: 15px;
    color: #888;
    line-height: 22px;
    background: #fff;
    }
   #bo2{
    width: 15px;
    height: 15px;
    margin: 1px 3px 6px -9% !important;
    position: absolute;
    } 
</style>
<!-- Base Css -->
<link href="assets/css/base.css" rel="stylesheet" type="text/css" />
<link href="assets/css/register-page.css" rel="stylesheet"
	type="text/css" />
	<script src="./css/countries.js" type="text/javascript"></script>
	<script type="text/javascript">
	function getPincodeDets(str)
    {
    	if (str=="")
    	  {
    	  document.getElementById("pincodedata").value="";
    	  return;
    	  }  
    	if (window.XMLHttpRequest)
    	  {// code for IE7+, Firefox, Chrome, Opera, Safari
    	  xmlhttp=new XMLHttpRequest();
    	  }
    	else
    	  {// code for IE6, IE5
    	  xmlhttp=new ActiveXObject("Microsoft.XMLHTTP");
    	  }
    	xmlhttp.onreadystatechange=function()
    	  {
    	  if (xmlhttp.readyState==4 && xmlhttp.status==200)
    	    {
    	    document.getElementById("pincodedata").value=xmlhttp.responseText;
    	    var pincodedata = document.getElementById("pincodedata").value;
    	    var str_array = pincodedata.split(',');
    	    document.getElementById("city").value=str_array[0].replace(/^\s*/, "").replace(/\s*$/, "");
    	    document.getElementById("district").value=str_array[1].replace(/^\s*/, "").replace(/\s*$/, "");
    	    document.getElementById("state").value=str_array[2].replace(/^\s*/, "").replace(/\s*$/, "");
    	    }
    	  }
    	xmlhttp.open("GET","./getPincode.jsp?pincode="+str,true);
    	xmlhttp.send();
    }
	</script>
	<script>
		 function validation()
		{
		var a = document.form.name.value;
		if(a=="")
		{
		alert("Please Enter Your Name");
		document.form.name.focus();
		return false;
		}
		
		var regexMobile = /^[0-9]+$/;
		var a = document.form.mobile_no.value; 
		if (a.length < 10 || !a.match(regexMobile)) {
		alert("Enter valid 10 digit Mobile Number");
		return false;
       }
	   
	   var email = document.getElementById('txtEmail');
		var filter = /^([a-zA-Z0-9_\.\-])+\@(([a-zA-Z0-9\-])+\.)+([a-zA-Z0-9]{2,4})+$/;

		if (!filter.test(email.value)) {
		alert('Please provide a valid email address');
		email.focus;
		return false;
	  }
	  
	    var a = document.form.address.value;
		if(a=="")
		{
		alert("Please Enter Your D.No./Street");
		document.form.address.focus();
		return false;
		}
		
		var a = document.form.city.value;
		if(a=="")
		{
		alert("Please Enter Your City");
		document.form.city.focus();
		return false;
		}
		
		var a = document.form.state.value;
		if(a=="")
		{
		alert("Please Enter Your State");
		document.form.state.focus();
		return false;
		}
		
		var a = document.form.district.value;
		if(a=="")
		{
		alert("Please Enter Your District");
		document.form.district.focus();
		return false;
		}
		
		var a = document.form.pincode.value;
		if(a=="")
		{
		alert("Please Enter Your Pincode_No");
		document.form.pincode.focus();
		return false;
		}
		
		var a = document.form.pancard.value;
		if(a=="")
		{
		alert("Please Enter Your Pancard_No");
		document.form.pancard.focus();
		return false;
		}
		
		var a = document.form.fileToUpload.value;
		if(a=="")
		{
		alert("Please Enter Your Phote");
		document.form.fileToUpload.focus();
		return false;
		}
		
		}
		
		</script>
		
		
    </head>
    <body>
	<!-- page loader -->
	<!-- <div class="se-pre-con"></div> -->
	<div id="page-content">
			<jsp:include page="./homeTop.jsp"></jsp:include>		
		    <section class="service-inner" id="top2">
			<div class="container">
				<div class="row">
					<section class="sellUcarpg">

						<div class="col-lg-6 col-md-6 col-sm-12 col-xsm-12" >
							<div class="auctionFormLeft"
								style=" margin-right: 15px; padding: 0px 20px 0 0;margin-top: 0px;">
								
								<img src="assets/images/bu.png"	alt="" title="">

								<ul class="sellCarInfolist res3">
									
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
						<div class="col-lg-6 col-md-6 col-sm-12 col-xsm-12">
							<div class="auctionFormRight" style="margin-top: 0px;">
							
								<div class="col-md-1 col-xs-12"></div>
								<div class="auctionMainForm col-md-10 col-xs-12">
									    <form name="sellfrm" id="sellfrm" method="POST" action="./RegisterUser" onSubmit="return validate()">
									
              			                   <div align="center">
											<h2 class="aucformTitle" style="margin-bottom: 15px; text-align: center; ">
											Register Here to Submit a Service Request with Mr.Mason</h2>

										   
	   <!--============================ user type ================================-->
										    
										        <div class="row">
                                                <div class="col-sm-12" align="center">
									      <!--============ first section ===========-->
									       <div id='show-me'>
									             
									        <div class="aucformFieldsBox">
											<div class="col-md-12 col-sm-12">
											<div class="row form-group">
								            <label class="col-md-2 control-label" style="font-size: 17px;color: #020202; font-family: sans-serif;">I Am</label>  
								            <div class="col-md-8">
											<div class="input-group" id="bo1">
											 <input type="checkbox" name="usertype" value="M" id="bo2">  Material supplier<br>
											 <input type="checkbox" name="usertype" value="S" id="bo2">  Service Personnel<br>
											 <input type="checkbox" name="usertype" value="D" id="bo2">  Developer<br>
											 <input type="checkbox" name="usertype" value="I" id="bo2" checked="checked"> Service Requester <br>
								             </div>
								             </div>
											 </div></div></div>
											     
											<div class="aucformFieldsBox">
											<div class="col-md-12 col-sm-12">
											<div class="row form-group">
								            <label class="col-md-2 control-label" style="font-size: 17px;color: #020202; font-family: sans-serif;">Name</label>  
								            <div class="col-md-8">
											<div class="input-group">
								            <input type="text" name="name" class="form-control" id="" value="" placeholder="Enter Your Name" required>
								            </div>
								            </div>
											</div></div></div>
											
											<div class="aucformFieldsBox">
											 <div class="col-md-12 col-sm-12">
											<div class="row form-group">
								            <label class="col-md-2 control-label" style="font-size: 17px;color: #020202; font-family: sans-serif;">Mobile<span style="color: red">*</span></label>  
								            <div class="col-md-8">
											<div class="input-group">
								            <input type="mobile" name="mobileNo" class="form-control" id="" value="" placeholder="Enter Your Mobile_No"
						                     pattern="[1-9]{1}[0-9]{9}" title="Enter 10 digit mobile number" maxlength="10" required>
								            </div>
								            </div>
											</div></div></div>
											
											<div class="aucformFieldsBox">
											<div class="col-md-12 col-sm-12">
											<div class="row form-group">
								            <label class="col-md-2 control-label" id="one" style="padding: 7px 14px">Email ID<span style="color: red">*</span></label>  
								            <div class="col-md-8">
											<div class="input-group">
								            <input type="text" name="emailId" class="form-control" id="txtEmail" value="" placeholder="Enter Your Email_Id" required>
								            </div></div>
								            </div>
								            </div>
											</div>
											
											<div class="aucformFieldsBox">
											<div class="col-md-12 col-sm-12">
											<div class="row form-group">
								            <label class="col-md-2 control-label" id="one" style="padding: 7px 14px">Password<span style="color: red">*</span></label>  
								            <div class="col-md-8">
											<div class="input-group">
								            <input type="password" name="password" class="form-control" id="txtpassword" value="" placeholder="Enter Your Email_Id" required>
								            </div></div>
								            </div>
								            </div>
											</div>
											
											<div class="aucformFieldsBox">
											 <div class="col-md-12 col-sm-12">
											<div class="row form-group">
								            <label class="col-md-2 control-label" style="font-size: 17px;color: #020202; font-family: sans-serif;">Pincode<span style="color: red">*</span></label>  
								            <div class="col-md-8">
											<div class="input-group">
								           <input type="text" name="pincodeNo" class="form-control" id="pincodeNo" onchange="getPincodeDets(this.value)" value="" placeholder="Enter Your Pincode No"
						                    title="Enter 6 pincode number" maxlength="6" required>
								            </div></div>
								            </div>
								            </div>
											</div>
											
											<div class="aucformFieldsBox">
											 <div class="col-md-12 col-sm-12">
											<div class="row form-group">
								            <label class="col-md-2 control-label" style="font-size: 17px;color: #020202; font-family: sans-serif;">D.No/street</label>  
								            <div class="col-md-8">
											<div class="input-group">
								            <input type="text" name="address" class="form-control" id="" value="" placeholder="Enter Your D.No/Street" required>
								            </div></div>
								            </div>
								            </div>
											</div>
											
										    <div class="aucformFieldsBox">
											<div class="col-md-12 col-sm-12">
											<div class="row form-group">
								            <label class="col-md-2 control-label" style="font-size: 17px;color: #020202; font-family: sans-serif;">City</label>  
								            <div class="col-md-8">
											<div class="input-group">
								             <input type="text" name="city" class="form-control" id="city" placeholder="Enter Your City" required readonly="readonly">
								            </div></div>
								            </div>
								            </div>
											</div>
											
											<div class="aucformFieldsBox">
											<div class="col-md-12 col-sm-12">
											<div class="row form-group">
								            <label class="col-md-2 control-label" style="font-size: 17px;color: #020202; font-family: sans-serif;">State</label>  
								            <div class="col-md-8">
											<div class="input-group">
								            <input type="text" name="state" class="form-control" id="state" placeholder="Enter Your State" required readonly="readonly">
								            <input type="hidden" name="pincodedata" class="form-control" id="pincodedata">
								            </div></div>
								            </div>
								            </div>
											</div>
											
											<div class="aucformFieldsBox">
											<div class="col-md-12 col-sm-12">
											<div class="row form-group">
								            <label class="col-md-2 control-label" style="font-size: 17px;color: #020202; font-family: sans-serif;">District</label>  
								            <div class="col-md-8">
											<div class="input-group">
								            <input type="text" name="district" class="form-control" id="district" placeholder="Enter Your District" required readonly="readonly">
								            </div></div>
								            </div>
								            </div>
											</div>
											
										   <div class="aucformFieldsBox">
										   <div class="col-md-12 col-xs-12">
										   <input type="checkbox" name="check_agree" id="check_agree"	required value="y" style="width: 20px; height: 20px;  float: left;">
                                           <span class="">
										   <a href="condtions.jsp" target="_blank" class="ul" style="color:#18aedf; font-size: 16px;
                                           float: left;">
										   &nbsp; i agree to the terms and conditions
										   </a>
										   </span>
										   </div>
										   </div>
											
										   <div class="aucformFieldsBox nomargin">
										   <div class="aucformFieldsBox col-md-12 col-xs-12">
									       <div class="col-md-12 col-xs-12 text-center">
										   <h4>										
										   <input class="btn" type="submit" name="sub" value="REGISTER" style=" width: 120px;
	                                        background-color: #18aedf; color: white; padding-bottom: 6px;font-size: 17px; line-height: 19px; border: 1px solid #18aedf;">
										    </h4>
										    </div>
											</div>
											</div>
										
									        </div>
									      <!--============ end first section ===========-->
									           
									       
									            </div>
									            </div>
       <!--=============================end user type ============================= -->
										   
									    </form>
									
								  </div>
								  </div>
								  </div>
								  <div class="col-md-12 col-xs-12">
								  <br>
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
	<script src="assets/js/jquery.magnific-popup.min.js" type="text/javascript"></script>
	<!-- range slider -->
	<script src="assets/js/ion.rangeSlider.min.js" type="text/javascript"></script>
	<script src="assets/js/jquery.easing.min.js" type="text/javascript"></script>
	<!-- custom -->
	<script language="javascript">
			populateCountries("country", "state");
	</script>
	<script src="assets/js/custom.js" type="text/javascript"></script>
<script type="text/javascript">
 document.getElementById('register1').className = 'active';
</script>
</body>
</html>

											
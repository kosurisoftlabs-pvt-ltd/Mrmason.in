<%@page import="java.util.*,com.mason.service.*,com.mason.dao.*" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="f" uri="http://java.sun.com/jsp/jstl/fmt"%>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<!DOCTYPE html>
<html lang="en">
<head>
  <title>Search for Work at your Location</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="icon" type="img/jpg" href="https://upload.wikimedia.org/wikipedia/commons/thumb/6/65/Circle-icons-car.svg/2000px-Circle-icons-car.svg.png">

   <link rel='stylesheet prefetch' href='css/bootstrap.css'>
   <link rel='stylesheet prefetch' href='css/datepicker.css'>
   <link rel="stylesheet" type="text/css" href="font-awesome/css/font-awesome.min.css">

  <script type="text/javascript" src="http://code.jquery.com/jquery-1.8.2.js"></script>
  <style type="text/css">
 
 #overlay {
position: fixed;
top: 0;
left: 0;
width: 100%;
height: 100%;
 background-color: #000; 
 filter:alpha(opacity=70); 
-moz-opacity:0.7;
-khtml-opacity: 0.7;
opacity: 0.7;
z-index: 100;
display: none;
}
h5 a:focus{
color:#000 !important;
}
.cnt223 a{
text-decoration: none;
}
.popup{
width: 50%;
margin: 0 auto;
display: none;
position: fixed;
z-index: 101;
}
.cnt223{
 min-width:90%; !important;
width: 540px; 
 min-height: 300px;
height: 0px;
margin: 100px auto;
background: #ffffff;
position: relative;
z-index: 103;
padding: 70px;
border-radius: 5px;
box-shadow: 0 2px 5px #000;
margin-top: 140px;
}
.cnt223 p{
clear: both;
    color: #f94141;
    position: relative;
    text-align: justify;
    top: -30px;
}
.cnt223 p a{
color: #d91900;
    font-weight: bold;
    top: -54px;
    position: relative;
     top: 8px;
    left: -54px;
    font-size: medium;
}
.cnt223 .x{
float: right;
    height: 31px;
    left: 71px;
    position: relative;
    top: -69px;
    width: 34px;
}
.ok{
    text-align: center;
    padding: 0px;
    margin-left: 500px;
    color: black;
}
.cnt223 .x:hover{
cursor: pointer;
}

@media (max-width: 450px) { 
.popup{
 width:100%;
margin: 0 auto;
display: none;
position: fixed;
z-index: 101;
}

.cnt223 {
    /* min-width: 69%; */
    width: 260px;
    height: 0px;
    margin: 19px auto;
    background: #ffffff;
    position: relative;
    z-index: 103;
    padding: 70px;
    border-radius: 5px;
    box-shadow: 0 2px 5px #000;
    margin-top: 142px;
}

}
.form-group{
margin: 5px 0px 5px 0px !important;
}
/* .modal-body{
min-height: 361px !important;
} */
 a:focus {
    color: #fff !important;
    
    }
    
    
    
/*  pop up */

.container {padding:20px;}
.form-control {width:120px;}
.popover {max-width:400px;}

#popover-content-logout > * {
  background-color:#ff0000 !important;
}
/* end pop up */   
    .f_1 a{
    
    color: #555 !important
    } 
    
.nav-tabs>li.active>a, .nav-tabs>li.active>a:hover, .nav-tabs>li.active>a:focus{
 background: #428bca !important;
color: #fff !important; 

text-decoration:underline #428bca;

} 
.nav-tabs>li>a{
text-decoration:underline;
}

.cab1:hover {
background: #fff !important;
}
.nav-tabs > li a {
    width: 100% !important;
    height: auto !important;
    margin: 2px auto !important;

}
@media screen and (max-width: 767px) {
   .nav-tabs > li a { 
    /* height: 55px !important; */
}
.cab1{margin-bottom: 12px;}
}
.card1{
font-size:11px;
/*     text-align: justify; */
    line-height: 2;
}
.card1 span{
font-size:12px;
color:#5aa19b;

font-weight: 700;
}
p{
margin: 0px 0px 0px !important;
}
 
.p_0{
padding:0px !important;
}

.bo{
    font-size: 19px;
    color: #ffffff;
    font-family: inherit;
    background: #3081c7;
    padding: 0 9px;
    line-height:28px;
    border-radius: 3px;
    }

</style>
<%-- <%
String sfrom=(String)request.getAttribute("from");
String sto=(String)request.getAttribute("to");
String sdate=(String)request.getAttribute("date");
String svehicleType=(String)request.getAttribute("cabType");
String location=(String)request.getAttribute("location");
String plateType=(String)request.getAttribute("plateType");
String driverType=(String)request.getAttribute("driverType");
String seatingCap=(String)request.getAttribute("seatingCap");
String message = (String)request.getAttribute("msg");
String userId = (String)session.getAttribute("userId");
String email=(String)request.getAttribute("email");
String mobileNo=(String)request.getAttribute("mobileNo");
String serviceType=(String)request.getAttribute("serviceType");
String msg1=(String)request.getAttribute("msg1");
%> --%>

<%
String message = (String)request.getAttribute("msg");
String msg1=(String)request.getAttribute("msg1");
%>
<script type='text/javascript'>
<%if(message!=null){
    %>
$(function(){
 var overlay = $('<div id="overlay"></div>');
 overlay.show();
 overlay.appendTo(document.body); 
 
$('.popup').show();
$('.ok').click(function(){
$('.popup').hide();
overlay.appendTo(document.body).remove();
return false;
});
$('.x').click(function(){
 $('.popup').hide();
 overlay.appendTo(document.body).remove();
 return false;
 });
 });
<%}%>
 
 </script>
    <%
    if(message!=null){ %>
     <div class="col-lg-12"> 
   <div class="col-md-3"></div>
   <div class="col-md-6 popup">
   <div class='popup'>
<div class='cnt223'>
<img src='images/cancel.png' alt='quit' class='x' id='x' />
<p>

<%if(msg1==null){ %><b style="font-size: medium;text-transform: capitalize;"><%=message%></b><%} %>

<%if(msg1!=null){ %>
<b style="font-size: medium;text-transform: capitalize;"><%=msg1 %></b>
   <%-- <form action="./cab_booking" method="post" id="myForm">
        <input type="hidden" name="email" value="<%=email %>"/>
        <input type="hidden" name="mobileNo" value="<%=mobileNo %>"/>
        <input type="hidden" name="from" value="<%=sfrom%>">
		<input type="hidden" name="to" value="<%=sto%>">
		<input type="hidden" name="date" value="<%=sdate%>">
		<input type="hidden" name="cabType" value="<%=svehicleType%>">
		<input type="hidden" name="location" value="<%=location%>">
		<input type="hidden" name="plateType" value="<%=plateType%>">
		<input type="hidden" name="driverType" value="<%=driverType%>">
		<input type="hidden" name="seatingCap" value="<%=seatingCap%>">
        <input type="text" name="otp" placeholder="Enter OTP Number" class="form-control" required/>
        <input type="hidden" name="verify" value="verify"/><br>
        <input type="submit" value="Submit" class="btn btn-primary btn-block">
        </form> --%>
<%}%>
<br/>
<br/>
<%if(msg1==null){ %>
<button class="ok"> 
 <b>OK</b></button> 
</p>
<%} %>
</div>
</div>
</div>
<div class="col-md-3"></div>
</div>
<%}else {} %>
  
  <script type="text/javascript">
  
  function CheckNumeric(e) {
	    
	     if (window.event) // IE 
	     {
	         if ((e.keyCode < 48 || e.keyCode > 57) & e.keyCode != 8) {
	             event.returnValue = false;
	             return false;

	         }
	     }
	     else { // Fire Fox
	         if ((e.which < 48 || e.which > 57) & e.which != 8) {
	             e.preventDefault();
	             return false;

	         }
	     }
	 }  
  </script>

<style>input::-webkit-calendar-picker-indicator {
  display: none;
}
.offer {
    float: right;
    font-size: 18px important;
    color: #337ab7;
    font-weight: 500;
    margin: 4px 1px;
    font-family: "Helvetica Neue",Helvetica,Arial,sans-serif;
}
.offer1 {
    float: right;
    font-size: 15px !important;
    color: #333;
    font-weight: 500;
    margin: 3px 1px;
    font-family: "Helvetica Neue",Helvetica,Arial,sans-serif;
}
@media  screen and (max-width: 767px) {
   .col-xs-12 {
       width:100% !important;
    }
    .col-xs-12{
    text-align:center !important;
    }
}
.one{
    padding: 0 0 !important;
    }
  .two{  
    font-size: 13px;
    color: #428bca;
    font-weight: 600;
    }
     .thr{  
    color: #353434;
    font-weight: 500;
    font-size: 12px;
    }
    .nav-tabs>li>a {
    margin-right: 2px;
    line-height: 1.42857143;
    border: 1px solid transparent;
    border-radius: 4px 4px 0 0;
    text-decoration: none;
    background: #e6e6e3;
}
.box2{
    font-size: 17px;
    color: #247fce;
    font-family: sans-serif;
    line-height: 24px;
    }
    .box3{
    font-size: 16px;
    font-family: sans-serif;
    color: #f53426;
    line-height: 24px;
    }
    #bo1{
    margin:10px 0px; 
    color: red;
    font-size: 15px;
    font-family: sans-serif;
    }
</style>

</head>
<body>
<div style="background: #fff"><jsp:include page="homeTop.jsp"></jsp:include></div>
<div class="container">
  

   <div class="col-md-12">
   <div class="col-md-12" id="cab-search3">
	 <div class="col-md-12 side-bar1">
	<h4 class="cab3 text-center">Cab Booking Details</h4></div>
	</div>
	</div>
	<br>&nbsp;
 <div class="col-lg-12"  ng-app="myApp">
 <!-- side bar section --> 

	    			<%-- <%
                      int i=0;
	    				/* AdminDetails admin=new AdminDetails(); */
	    				ServiceRequest ReqDtls = new ServiceRequest();
                   /*   Map<String,Set<String>> cabMap=cabDtls.getCabVehicleAddr();
                     List<VehicleType> vehicleList=admin.getAdminVehicleType();
                     Set<String> vehicleSet=new TreeSet<String>();
                     Set<String> seatingCapacity=new TreeSet<String>();
                     for(int k=0;k<vehicleList.size();k++){VehicleType veh=vehicleList.get(k);vehicleSet.add(veh.getBODY_TYPE());seatingCapacity.add(veh.getNO_OF_PASSENGER());}
                     
                     Set<String> fromCab=cabMap.get("fromCity");
                     Set<String> toCab=cabMap.get("toCity"); 
//                      Set<String> vehicleCab=cabMap.get("vehicleType");
//                      Set<String> vehicleCab=new AdminDetails().getVehicleType(); */
                     
                     %> --%>

	
	<div class="col-lg-3 col-md-6 mb-3" id="cab-search3">
	   <div class="side-bar">
	   
	     <h4 class="search1">Filter</h4>
	        <form action="./searchWorks" method="post" class="form-horizontal" role="form">
	        
	        <div class="col-md-12">
			  <div class="form-group"> 	 
                         <label for="firstname" class="la"> Service Type :</label>
                        <select name="serviceType" class="form-control" id="serviceType")>
				         <%--  <option value="<%=serviceType %>" style="display:none;"><%=serviceType==null?"ServiceType":serviceType %></option>  --%>
				          <option value="Full">All </option>
				          </select>
             </div>
			 </div>
	        
			
			<div class="col-md-12">
			  <div class="form-group"> 	 
                         <label for="firstname" class="la"> Work Location :</label>
                        <input = text  name="WorkLocation" class="form-control" id="Work_location" )">
                        
				         
             </div>
			 </div>
			
	         
			 <div class="col-md-12">
			 <div class="form-group"> 	 
			 <div class="col-md-12 col-xs-12" style="padding: 0 0;">
                <label for="firstname" class="la">Posted  Date : </label>
                
                <!-- <input class="form-control" type="date" name="DD/MM/YYYY" id = "txt" onkeyup = "Validate(this)" required /> 
                   <div class='input-group date' id='datetimepicker1'> -->

                    <input type='text' class="form-control" name="date" placeholder="dd-mm-yyyy" required/>
                    <span class="input-group-addon"><i class="fa fa-calendar" aria-hidden="true"></i></span>
                    
                </div> 
                
                
                 
             </div>
			 </div>
			 
			
				  
		    <div class="col-md-12">
			 <div class="form-group"> 	 
              <button type="submit" class="btn btn-primary btn-block">Search</button>
             </div>
			 </div>
				  <div class="form-group"></div>
				</form>
		   <hr>
		
	</div>--%> 
<!--  end side bar section  -->
	
 <!-- car details section  -->
 
 
 
<%--  ${cabList.addCab.CAB_GEN_ID}

  <c:set var="cabId" value="${cabList.CAB_ID}"></c:set>
  <c:set var="driverId" value="${cabList.DRIVER_ID}"></c:set>
  <c:set var="cabOwner" value="${cabList.CAB_OWNER_ID}"></c:set>
<%
String cabRegNo=(String)pageContext.getAttribute("cabId");
String driverId=(String)pageContext.getAttribute("driverId"); 
String cabOwner=(String)pageContext.getAttribute("cabOwner");

GetCabDetails cabDtls=new GetCabDetails();

String cabId=cabDtls.getCabId(cabRegNo);
DriverBean driver=cabDtls.getDriverDetails(driverId, cabRegNo);
AddCab cab=cabDtls.getCabDetails(cabRegNo);
String businessName=cabDtls.getBusinessName(cabOwner);
%> --%>
	
	<diiv>
	   
		<div class="col-lg-9 col-md-9 cab1" style="margin-bottom: 7px;">
		<div class="col-lg-12 col-md-12" id="cab-search3" style="margin:10px 0px;">
	<% 
	String order_status=request.getParameter("order_status");
	if(order_status.equals("Success"))
	{%>
 
 	
 	 <div class="col-md-6 one">
 	 <span class="box2">Cab Service Type :</span>
 	 <span class="box3"><%-- <%=cabbook.getCAB_SERVICE_TYPE()%> --%></span>
 	 </div>
 	 
 	 <div class="col-md-12 one" style="margin-bottom: 9px;">
 	 <p class="bo">Work Details</p>
 	 </div>
 	
 	
 	 <div class="col-md-6 one">
 	 <span class="box2">Work Details:</span>
 	 <span class="box3"><%-- <%=cabbook.getBOOKING_DATE()%> --%></span>
 	 </div>
 	 
 	 <div class="col-md-6 one">
 	 <span class="box2">Location :</span>
 	 <span class="box3"><%-- <%=cabbook.getCAB_ROUTE_ID()%> --%></span>
 	 </div>
 	
 	 <div class="col-md-6 one">
 	 <span class="box2"> Posted Date :</span>
 	 <span class="box3"><%-- <%=cabbook.getRETURNED_DATE()%> --%></span>
 	 </div> 
 	<%} %>
 	 	
 </div>
 </div> 
  	 
</div>
</div>

<br><br><br><br><br>

<footer>
<jsp:include page="footer.jsp"></jsp:include>
</footer>
  
<!--  <script  src="js/animate.js"></script> -->

<!--  date picker -->
  <!-- <script src='js/date1.js'></script>

<script src='js/datepicker.js'></script> -->


	   <script>
	   
	   var options = {
		        componentRestrictions: { country: "IN" }
		    };
          
function initMap() {
                
initMap1();
initMap2();
}
 
function initMap1() {
    
	var input = document.getElementById('locationTextField');
	                
	var autocomplete = new google.maps.places.Autocomplete(input, options);
	            
	}          

function initMap2() {
    
	var input = document.getElementById('locationTextField1');
	                
	var autocomplete = new google.maps.places.Autocomplete(input, options);
	            
	}



</script>
  
    <script async defer src="https://maps.googleapis.com/maps/api/js?key=AIzaSyBE49eJ-hTzLNA7IKZ2DOnW-4BBHDzDXlA&libraries=places&callback=initMap"
  type="text/javascript"></script>
<script type="text/javascript">
$("[data-toggle=popover]").each(function(i, obj) {

	$(this).popover({
	  html: true,
	  content: function() {
	    var id = $(this).attr('id')
	    return $('#popover-content-' + id).html();
	  }
	});

	});
</script>

<!-- <script type="text/javascript">

$(document).ready(function(){
    $('#serviceType').on('change', function() {
      if ( this.value == 'Self')
      {
        $("#to").hide();
      }
      else
      {
        $("#to").show();
      }
    });
});

</script> -->

    <script type="text/javascript">
    
    var str=document.getElementById("serviceType");
    if(str.value=='Self'){
 	   document.getElementById("to").readOnly = true;
 	   document.getElementById("to").value = "Any";
 	   }else{
 		   document.getElementById("to").readOnly = false;
//  		   document.getElementById("to").value = "";
 	   }
         
       function radio(str){
//     	   alert(str.value);
    	   
    	   if(str.value=='Self'){
    	   document.getElementById("to").readOnly = true;
    	   document.getElementById("to").value = "Any";
    	   }else{
    		   document.getElementById("to").readOnly = false;
//     		   document.getElementById("to").value = "";
    	   }
    	   
       }
         
         
         </script>

</body>


</html>
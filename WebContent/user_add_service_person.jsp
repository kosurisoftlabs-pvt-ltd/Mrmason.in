 <%@ page language="java" import="com.mason.bean.*,java.util.*,com.mason.service.*" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
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
   <script>
    function isNumber(evt) {
    var iKeyCode = (evt.which) ? evt.which : evt.keyCode
    if (iKeyCode != 46 && iKeyCode > 31 && (iKeyCode < 48 || iKeyCode > 57))
    return false;
    return true;
    } 
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
    function isNumber(evt) {
       var pattern = /^([0-9]{2})-([0-9]{2})-([0-9]{4})$/;
        var iKeyCode = (evt.which) ? evt.which : evt.keyCode
        if (iKeyCode != 46 && iKeyCode > 31 && (iKeyCode < 48 || iKeyCode > 57))
            return false;
     
        return true;
    }   
    </script>
    
    <meta name="google-site-verification" content="gG3OAGF9VX_pK7SbcB2KhRDYWhhAaj6EQspeOjVcyrE" />
        
    	   <!-- good api key starts-->
    	   
    	   <script type="text/javascript"  defer src="https://maps.googleapis.com/maps/api/js?key=AIzaSyBE49eJ-hTzLNA7IKZ2DOnW-4BBHDzDXlA&sensor=false&libraries=places&callback=initMap"></script> 
    	 
    	   <!--   good api key Ends   -->


                     
                     

    
   
   </head>
   <body>
   
   
   
   
   
 <!--======================= Start Google API copied from zorocabs by Mahesh Kosuri      ============ -->     
                     
         
      
     <!--  <script type="text/javascript" src="https://maps.googleapis.com/maps/api/js?key=AIzaSyBE49eJ-hTzLNA7IKZ2DOnW-4BBHDzDXlA&sensor=false&libraries=places&callback=initMap"></script>        -->  
        	           
                     
   <script>


/*    var options = {
		   types: ['(regions)'],
		   componentRestrictions: {country: "us"}
		  };
	    */
	/*    var options = {
  			   types: ['(cities)'],
		        componentRestrictions: { country: "IN" }
		    }; */
	   
	   var options1 = {
		        componentRestrictions: { country: "IN" }
		    };
          
function initMap() {
                
initMap1();
initMap2();
initMap3();
initMap4();
initMap5();
initMap6();
}
 
function initMap1() {
    
	var input = document.getElementById('locationTextField1');

	var autocomplete = new google.maps.places.Autocomplete(input, options1);
    //var locationTextField1 = new google.maps.places.Autocomplete(input, options);
	            
	}          

function initMap2() {
    
	var input = document.getElementById('locationTextField2');
	                
	var autocomplete = new google.maps.places.Autocomplete(input, options1);

	
	            
	}

function initMap3() {
    
	var input = document.getElementById('locationTextField3');
	                
	var autocomplete = new google.maps.places.Autocomplete(input, options1);
	            
	}
function initMap4() {
    
	var input = document.getElementById('locationTextField4');
	                
	var autocomplete = new google.maps.places.Autocomplete(input, options1);
	            
	}
function initMap5() {
    
	var input = document.getElementById('locationTextField5');
	                
	var autocomplete = new google.maps.places.Autocomplete(input, options);
	            
	}
function initMap6() {
    
	var input = document.getElementById('locationTextField6');
	                
	var autocomplete = new google.maps.places.Autocomplete(input, options1);
	            
	}	


</script>

                     
                     
                       
                     
                     
                      <!--======================= End of Google API copied from zorocabs by Mahesh Kosuri      ============ -->     
   
   
   
   
   
   
   
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
                        <h4 class="page-title float-left">Add Service</h4>
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
			   <!--=========== form section =============-->
						<div class="col-xl-8 col-sm-8">
						 <!-- <span class="bo">Add Service</span> -->
						 <div class="form-group col-md-12 col-sm-12"><br>
						 <%if(request.getAttribute("message")!=null){out.println(request.getAttribute("message"));} %>
						 </div>
					     <form name="form" action="./AddServicePerson" method="post" onsubmit="return validation()" enctype="multipart/form-data">
						   
						 <div class="row">
					 <%
						   ArrayList<UserServices> al= new ServicesService().getServiceProviderServices(session.getAttribute("referenceid").toString());
						   %> 
							<div class="form-group col-md-4 col-sm-4">
							<label for="email">Service Type</label>
							<select class="form1" id="service" name="servicetype">
								<option>Service Type</option>
								 <%
								for(int i =0;i<al.size();i++)
								{
									UserServices us=al.get(i);
								%>
								<option><%=us.getSERVICE_TYPE()%></option>	
								<%}
								%> 
							</select>
						 </div>
							
						 <div class="form-group col-md-6 col-sm-6">
                         </div>
						 
						 </div>
						 
						 
						 <div class="row">
						  
						 <div class="form-group col-md-6 col-sm-6">
					     <label for="email">Person name </label>
						 <input type="text" class="form1" name="personname" id="personname" placeholder="Enter Person Name" required>
						 </div>
						  
						 <div class="form-group col-md-6 col-sm-6">
					     <label for="email">Contact No </label>
						 <input type="text" class="form1" name="contact" id="contact"  onkeypress="javascript:return isNumber(event)" maxlength="10"  placeholder="Enter Your Contact No"  required>
						 </div>
						 
						 <div class="form-group col-md-6 col-sm-6">
					     <label for="Email">Mail Id</label>
						 <input type="text" class="form1" name="email" id="emil" placeholder="Your Mail Id">
						 </div>
						 
						 <div class="form-group col-md-6 col-sm-6">
					     <label for="Email">Years Of Exp</label>
						 <input type="text" class="form1" name="years" id="years" onkeypress="javascript:return isNumber(event)" maxlength="4" placeholder="Years Of Exp" required>
						 </div>
						 
						 <div class="form-group col-md-6 col-sm-6">
					     <label for="Email">Qualification</label>
						 <input type="text" class="form1" name="qualification" id="qualification" placeholder="Your Qualification">
						 </div>
						 
						 <div class="form-group col-md-6 col-sm-6">
					     <label for="Email">Certificate</label>
						 <input type="file" class="form1" name="Certificate" id="Certificate" placeholder="Your Certificate" >
						 </div>
						 
						 <div class="form-group col-md-6 col-sm-6">
					     <label for="email">Work Location </label>
						<!--   <input type="text" class="form1"  name="pincode" id="pincode"  onkeypress="javascript:return isNumber(event)" placeholder="Enter Your Pincode" onchange="getPincodeDets(this.value)" maxlength="6" required> -->
						  <input type="text"  name="Work_Location" class="form-control" id="locationTextField1" placeholder="Enter Work location" required="required"/>  
						 </div>
						
						 
						 
						 <div class="form-group col-md-6 col-sm-6">
					     <label for="email"> City</label>
						 <input type="text" class="form1" name="city" id="city" placeholder="Enter Your City" readonly="readonly">
						 </div>
						 
						 <div class="form-group col-md-6 col-sm-6">
					     <label for="email">State</label>
						 <input type="text" class="form1" name="state" id="state" placeholder="Enter Your State" readonly="readonly">
						 </div>
						 
						 <div class="form-group col-md-6 col-sm-6">
					     <label for="email">District</label>
						 <input type="text" class="form1" name="district" id="district" placeholder="Enter Your District" readonly="readonly">
						 <input type="hidden" name="pincodedata" id="pincodedata">
						 </div>
						 
						  
						  <div class="form-group col-md-6 col-sm-6">
                          <label for="availability">Available Status</label>
                          <select name="availablestatus" class="form1" id="years">
                          <option>-- Available Status --</option>
					      <option>Yes</option>
						  <option>No</option>
						  </select>
                          </div>
                          
						  <div class="form-group col-md-4 col-sm-4">
                          <label for="kms">With In Range</label>
                          <input type="text" class="form1" name="withinrange" id="withinrange" onkeypress="javascript:return isNumber(event)"  placeholder="Enter Kms" maxlength="4" required>
                          </div>
						  </div>
						 </div>
						 
						 <div class="col-xl-12 col-sm-12"><br></div>
						 <div class="row">
						 <div class="form-group col-lg-4"> </div>
					     <div class="form-group col-lg-3">
                         <button type="submit" class="btn btn-info btn-block"  id="box">Submit</button>
						 </div>
				         <div class="form-group col-lg-4"> </div>
						 </div>
						 
						</form>
						 </div>
						 <div class="col-xl-4 col-sm-4"></div>
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
</html>
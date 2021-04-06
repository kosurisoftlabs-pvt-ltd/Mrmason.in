<%@ page language="java" import="com.mason.bean.*,java.util.*,com.mason.service.*" contentType="text/html; charset=ISO-8859-1"
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
    <script>
    function isNumber(evt) {
    var iKeyCode = (evt.which) ? evt.which : evt.keyCode
    if (iKeyCode != 46 && iKeyCode > 31 && (iKeyCode < 48 || iKeyCode > 57))
    return false;
    return true;
    }    
    </script>
    
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
                        <h4 class="page-title float-left">Service Person Details</h4>
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
			   <form action="UpdateServicePerson" method="post" onsubmit="return validate()" enctype="multipart/form-data">
						<div class="col-xl-8 col-sm-8">
						 <!-- <span class="bo">Edit Service Person</span> -->
						 <div class="form-group col-md-12 col-sm-12">
						 <%if(request.getAttribute("message")!=null){out.println(request.getAttribute("message"));} %>
						 </div>
						<%
						ArrayList<UserServices> al= new ServicesService().getServiceProviderServices(session.getAttribute("referenceid").toString());
						   %>
							<div class="form-group col-md-6 col-sm-6">
							<label for="email">Service Type</label>
							<c:set var="servicetype" value="${servicePerson.SERVICE_TYPE }"/>
							<c:set var="availablestatus" value="${servicePerson.AVAILABLE_STATUS }"/>
							<%
							 String servicetype = pageContext.getAttribute("servicetype").toString(); 
							String availablestatus = pageContext.getAttribute("availablestatus").toString(); 
							  %>
							<select class="form1" id="service" name="servicetype">
								<option>Service Type</option>
								<%
								for(int i =0;i<al.size();i++)
								{
									UserServices us=al.get(i);
									if(servicetype.equals(us.getSERVICE_TYPE()))
									{
										%>
										<option selected="selected"><%=us.getSERVICE_TYPE() %></option>
									<%
									}
									else
									{
										%>
										<option><%=us.getSERVICE_TYPE() %></option>
									<%
									}
									}
								%>
							</select>
							</div>						   
						 
							
						 <div class="form-group col-md-6 col-sm-6">
                         </div>
						 
						 </div>
						 
						 <div class="row">
						  
						 <div class="form-group col-md-6 col-sm-6">
					     <label for="email">Person name </label>
						 <input type="text" class="form1" name="name" id="name" value="${servicePerson.NAME }" placeholder="Enter Person Name" required>
						 </div>
						  
						 <div class="form-group col-md-6 col-sm-6">
					     <label for="email">Contact No </label>
						 <input type="hidden" class="form1" name="serpersonid" id="serpersonid" value="${servicePerson.SER_PER_SEQ_ID }">
						 <input type="text" class="form1" name="contact" id="contact" value="${servicePerson.CONTACT_NO }" placeholder="Enter Your Contact No" required>
						 </div>
						 
						 <div class="form-group col-md-6 col-sm-6">
					     <label for="Email">Mail Id</label>
						 <input type="text" class="form1" readonly="readonly" name="email" id="email" value="${servicePerson.EMAIL_ID }" placeholder="Your Mail Id" required>
						 </div>
						 
						 <div class="form-group col-md-6 col-sm-6">
					     <label for="Email">Years Of Exp</label>
						 <input type="text" class="form1" name="experience" id="experience" value="${servicePerson.EXPERIENCE }" placeholder="Years Of Exp" required>
						 </div>
						 
						 <div class="form-group col-md-6 col-sm-6">
					     <label for="Email">Qualification</label>
						 <input type="text" class="form1" name="qualification" id="qualification" value="${servicePerson.QUALIFICATION }" placeholder="Your Qualification" required>
						 </div>
						 
						 <div class="form-group col-md-6 col-sm-6">
					     <label for="Email">Certificate</label>
						 <input type="file" class="form1" name="certificate" id="certificate" placeholder="Your Certificate">
						 </div>
						 
						 <div class="form-group col-md-6 col-sm-6">
					     <label for="Email">Pincode</label>
						 <input type="text" class="form1" name="pincode" id="pincode" value="${servicePerson.PINCODE }" onchange="getPincodeDets(this.value)" placeholder="Your Pincode" required>
						 </div>
						 
						 <div class="form-group col-md-6 col-sm-6">
					     <label for="Email">City</label>
						 <input type="text" class="form1" name="city" id="city" readonly="readonly" value="${servicePerson.CITY }" placeholder="Your City" required>
						 </div>
						 
						 <div class="form-group col-md-6 col-sm-6">
					     <label for="Email">State</label>
						 <input type="text" class="form1" name="state" id="state" readonly="readonly" value="${servicePerson.STATE }" placeholder="Your State" required>
						 <input type="hidden" name="pincodedata" class="form-control" id="pincodedata">
						 </div>
						 
						 <div class="form-group col-md-6 col-sm-6">
					     <label for="Email">District</label>
						 <input type="text" class="form1" name="district" id="district" readonly="readonly" value="${servicePerson.DISTRICT }" placeholder="Your District" required>
						 </div>
						  
						  <div class="form-group col-md-6 col-sm-6">
                          <label for="availability">Available Status</label>
                          <select name="availability" class="form1" id="years">
                          <%if(availablestatus.equals("Yes")) {%>
					      <option selected="selected">Yes</option>
						  <option>No</option>
						  <%}else{ %>
						  <option>Yes</option>
						  <option selected="selected">No</option>
						  <%}%>
                          
						  </select>
                          </div>
                          
						  <div class="form-group col-md-4 col-sm-4">
                          <label for="kms">With In Range</label>
                          <input type="text" class="form1" name="withinrange" id="tbNumbers" value="${servicePerson.WITH_IN_RANGE }"
                          onkeypress="javascript:return isNumber(event)"  placeholder="Enter Kms" maxlength="4" required>
                          </div>
						  
						 </div>
						 
						 <div class="col-xl-12 col-sm-12"><br></div>
						 <div class="row">
						 <div class="form-group col-lg-4"> </div>
					     <div class="form-group col-lg-3">
                         <button type="submit" class="btn btn-info btn-block"  id="box">UPDATE</button>
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
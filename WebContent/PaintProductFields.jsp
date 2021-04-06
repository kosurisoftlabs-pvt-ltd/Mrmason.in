<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
				<div class="row">
						<div class="form-group col-md-6 col-sm-6">
                         <label for="pincode">Paint Type :</label>
                         <select class="form1" name="painttype" id="painttype">
                         <option value="I">Interior</option>
                         <option value="E">Exterior</option>
                         </select>
                         </div>
                         <div class="form-group col-md-6 col-sm-6">
                         <label for="SKUID">SKUID :</label>
                         <input type="text" class="form1" name="skuid" id="skuid" placeholder="SKUID" required="required">
                         </div>
                 </div>
                 <div class="row">        
                          <div class="form-group col-md-6 col-sm-6">
						    <label for="pincode">Available Colors:</label>
						    <input type="text" class="form1" name="availablecolors" id="availablecolors" placeholder="Red,Green,Peach etc" required="required">
						  </div>
						  
						  <div class="form-group col-md-6 col-sm-6">
						    <label for="pincode">Available Weights:</label>
						    <input type="text" class="form1" name="availableweights" id="availableweights" placeholder="1 Ltr,500 Ml,100 Ml etc" required="required">
						  </div>
				 </div>
				 <div class="row">
                          <div class="form-group col-md-6 col-sm-6"></div>
                         
                         <div class="col-md-12 row">
                         <div class="form-group col-md-6 col-sm-6" id="dynamicInput">
                         <label for="pincode">Specification :</label>
                         <input type="text" class="form1" name="specification" id="specification" placeholder="Enter Specification" required="required">
                         </div>
                        
                          <div class="form-group col-md-4 col-sm-4">
	                      <label style="color:#fff;">Des :</label>
	                      <button type="button" id="more_fields" onclick="addInput('dynamicInput');" class="btn btn-info btn-block" style="line-height:16px;">Add Another</button>
	                      </div>
                          </div>
                 </div>          
</body>
</html>
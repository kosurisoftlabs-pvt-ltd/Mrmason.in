<%@ page language="java" import="com.mason.bean.*,java.util.*,com.mason.service.*" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%
PaintsDetails pd=new PaintsDetails();
pd.setCATEGORY(request.getParameter("pc"));
pd.setSUBCATEGORY(request.getParameter("sc"));
pd.setMANUFACTURER_NAME(request.getParameter("br"));
pd.setINTER_EXTER(request.getParameter("mt"));
int noofrecords = Integer.parseInt(request.getParameter("nor").toString());
int maxrowsperpage = Integer.parseInt(request.getParameter("mrp").toString());
					    	HashMap<String,String> chm = new HashMap<String,String>();
							HashMap<String,String> schm = new HashMap<String,String>();
					    	chm = new CategoryService().getAllCategories();
					    	schm = new CategoryService().getAllSubcategories();
					    	ArrayList<PaintsDetails> al= new ProductsService().loadMore(pd,maxrowsperpage, noofrecords);
					    	%>
           <div class="col-md-10">
           <c:set value="<%=al%>" var="paintsDetails"></c:set>
           <c:forEach var="pd" items="${paintsDetails }" >
           <!-- ======= start====== -->
           <div class="col-md-3 box4">
           <div class="col-md-12 box">
           <div class="productbox" style="height: 200px;">
           <a href="zoom.jsp"> <img src="data:image/*;base64,${pd.PAINTSIMAGE }" alt="NoImage.png" class="img-responsive img-rounded " id="mr1"/></a>
           </div>
           <%-- <div class="col-md-10 box1">
           <p><%=chm.get(request.getParameter("productcategory")) %></p> 
           </div> --%>
           <div class="col-md-2 box1">
           <input type="checkbox" name="vehicle" value="img" class="bo2">
           </div>
           <div class="col-md-12 box2">
           <span class="bo">Brand :</span><span class="bo1">${pd.MANUFACTURER_NAME}</span>
           </div>
           <div class="col-md-12 box2">
           <span class="bo">SKUID :</span><span class="bo1">${pd.SKUID} </span>
           </div>
           <div class="col-md-12 box2">
            <c:set var="painttype" value="${pd.INTER_EXTER}" scope="request"/>
           <span class="bo">Type :</span><span class="bo1">
           <%
           if(request.getAttribute("painttype").equals("I")){
        	   out.println("Interior");
           }
       	   else
       	   {
       		   out.println("Exterior");
       	   }
        	   %>
           
           
           </span>
           </div>
           <div class="col-md-12 box2">
          <span class="bo">Quality :</span><span class="bo1">${pd.SPECIAL_NAME}</span>
           </div>
           <div class="col-md-12 box2">
           <span class="bo">Sub-Category :</span><span class="bo1">
           <c:set var="subcat" value="${pd.SUBCATEGORY }" scope="request"/>
           <%out.println(schm.get(request.getAttribute("subcat"))); %>
           </span>
           </div>
           <!-- <div class="col-md-12 box2">
           <span class="bo">Price :</span><span class="bo1"><i class="fa fa-inr"></i> 5000</span>
           </div> -->
           <div class="col-md-12 box3">
           <button type="button" class="btn btn-primary" style="text-align:center;"> <a href="zoom.jsp" style="color: #fff;font-size: 16px;">More Details</a></button>
           </div>
           </div>
           </div>
           <!-- ======= end====== -->
           </c:forEach>
            
           <!-- ======= end====== -->
           
           </div>

</body>
</html>
<%@ page language="java" import="com.mason.bean.*,java.util.*,com.mason.service.*" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%
	String subcatid = request.getParameter("subcatid");
	ArrayList<String> brands = new ArrayList<String>();
		brands = new ProductsService().getBrandBySubcategory(subcatid);	
	
	%>
	<select class="form1 form-control" name="brand">
	<option>All</option>
	<%
	for(int i=0;i<brands.size();i++)
	{
		%>
		<option><%=brands.get(i)%></option>
	<%}
%>
</select>
</body>
</html>
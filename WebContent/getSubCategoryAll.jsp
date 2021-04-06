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
	String catid = request.getParameter("catid");
	ArrayList<Subcategory> subcatal = new ArrayList<Subcategory>();
	subcatal = new CategoryService().viewAllSubCategory(catid);
	%>
	<select class="form1" name="subcategory" onchange="getBrands(this.value)">
	<option>All</option>
	<%
	for(int i=0;i<subcatal.size();i++)
	{
		Subcategory cat1=subcatal.get(i);
		%>
		<option value="<%=cat1.getMat_subcat_seq_id()%>"><%=cat1.getSUBCATEGORY()%></option>
	<%}
%>
</select>
</body>
</html>
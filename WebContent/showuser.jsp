<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%
if(session.getAttribute("username")!=null){out.println(session.getAttribute("username"));}
else{
	System.out.println("No User");
%>
<jsp:forward page="./login3.jsp">
	<jsp:param name="message" value="Please Login to contine...."></jsp:param>
</jsp:forward>
<%} %>
</body>
</html>
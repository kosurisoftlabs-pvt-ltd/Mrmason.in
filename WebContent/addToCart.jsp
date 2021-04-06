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
String prodid="";
ArrayList<String> al=new ArrayList<String>();
try
{
	if(session.getAttribute("cartItems")!=null)
	{
		al=(ArrayList<String>)session.getAttribute("cartItems");
	}
	if(request.getParameter("prodid")!=null)
	{
		prodid=request.getParameter("prodid");
		
		if(al.contains(prodid))
		{
			al.remove(prodid);
		}
		else
		{
			al.add(prodid);
		}
		session.setAttribute("cartItems", al);
	}
}catch(Exception e)
{
	e.printStackTrace();
}
out.println(al.size());
%>
</body>
</html>
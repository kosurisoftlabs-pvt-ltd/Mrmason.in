<%@ page language="java" import="java.sql.*,com.mason.utils.*,java.util.*" contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<%
   try{
     String s[]=null;
 
     Connection con = MasonConnection.getConnection();
	 Statement st=con.createStatement();
 
    //jQuery related start
       String query = request.getParameter("q");
       System.out.println("query is :: "+query);
       System.out.println("SELECT PINCODE FROM user_services where PINCODE like '%"+query+"%'");
       ResultSet rs = st.executeQuery("SELECT PINCODE FROM user_services where PINCODE like '%"+query+"%'");
	       
       while(rs.next())
       {
    	   System.out.print(rs.getString(1)+"\n");
           out.print(rs.getString(1)+"\n");
       }
    //jQuery related end
 
rs.close();
st.close();
con.close();
 
}
catch(Exception e){
e.printStackTrace();
}
 
//www.java4s.com
%>

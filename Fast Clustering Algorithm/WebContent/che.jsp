
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="db.util.DbConnection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
 pageEncoding="UTF-8"%>

<%
java.text.DateFormat df = new java.text.SimpleDateFormat("as"); 
String tt=df.format(new java.util.Date());
session.setAttribute("tt",tt);
%>



<h1>Current Time: <%=tt %> </h1>


<%
String a=request.getParameter("username");
out.print(a);
String b=request.getParameter("Password");
out.print(b);
String uid=null,un=null;




try
{

PreparedStatement ps=DbConnection.getConnections().prepareStatement ("select * from regstration where username='"+a+"' && password='"+b+"'");
ResultSet rs=ps.executeQuery();
if(rs.next())
{
uid=rs.getString("username");
//out.print(uid);
session.setAttribute("uid",uid);
un=rs.getString("password");
//out.print(un);
session.setAttribute("name",un);
response.sendRedirect("userfront.jsp");

}
else
{
response.sendRedirect("wrong.jsp");

}

}
catch(Exception e1)
{
out.println(e1.getMessage());
}





%>

<%
java.text.DateFormat df1 = new java.text.SimpleDateFormat("ms"); 
String ttt=df1.format(new java.util.Date());
session.setAttribute("ttt",ttt);
%>
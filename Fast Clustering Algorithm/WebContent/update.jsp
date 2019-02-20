

<%@page import="java.sql.ResultSet"%>
<%@page import="db.util.DbConnection"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<html>
<head>
<title>Untitled Document</title>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
</head>

<body>
<%
try
{
	String empid=request.getQueryString();
     session.setAttribute("empid1",empid);
//int empid=3445;
     Connection conn=null;
     Connection connn=null;
     PreparedStatement ps=null;
     PreparedStatement pss=null;
     
ps=DbConnection.getConnections().prepareStatement("select active from files where fileid='"+empid+"'");
ResultSet rs1=ps.executeQuery();
while (rs1.next())
{
String name=rs1.getString("active");
int pr1=Integer.parseInt(name);
int quantity1=1;
int sum = pr1+quantity1;
String sum1=Integer.toString(sum);
out.print(sum1);

pss=DbConnection.getConnections().prepareStatement("update files set active='"+sum1+"' where fileid='"+empid+"'");
pss.executeUpdate();
response.sendRedirect("odownload.jsp");
}
}
catch(Exception e1)
{
out.println(e1.getMessage());
}


%>

</body>
</html>

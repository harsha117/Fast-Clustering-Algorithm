<%@include file="header.jsp"%>
<%@page import="db.util.DbConnection"%>
<%@ page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<script src="//code.jquery.com/jquery-1.10.2.js"></script>
<script src="//code.jquery.com/ui/1.10.4/jquery-ui.js"></script>
<script src="autocompleter.js"></script>
<link rel="stylesheet"
	href="//code.jquery.com/ui/1.10.4/themes/smoothness/jquery-ui.css">
	<!-- User defied css -->
<link rel="stylesheet" href="style.css">
<link rel="stylesheet" href="cssmenu/styles.css">
<script type="text/javascript"
	src="http://ajax.googleapis.com/ajax/libs/jquery/1.6/jquery.min.js">
	
</script>
<script type="text/javascript" src="jquery.simplyscroll.js"></script>
<link rel="stylesheet" href="jquery.simplyscroll.css" media="all"
	type="text/css">
<script type="text/javascript"
	src="http://ajax.googleapis.com/ajax/libs/jquery/1.7.1/jquery.min.js">
	
</script>
<!--<script type="text/javascript" src="/js/common.js"></script>-->
<script type="text/javascript" src="js/jquery.simplyscroll.js"></script>
<link rel="stylesheet" href="css/jquery.simplyscroll.css" media="all"
	type="text/css">
</script>

</head>
<body>
<div id="cssmenu">
		<ul>
			<li><a href="index.jsp">Home</a></li>
			
			<li><a href="index.jsp">Logout&nbsp;</a></li>
		</ul>
	</div>
<div id="wrapper">
<div id="wrapper2">

<div id="page">
<div id="content">
<div class="post">
<%
String search3=request.getParameter("username");
%>

					
<form name="f2" action="userfront1.jsp" method="post" onsubmit="return reg()">
<table  align="center"  >


<tr>
<!-- <td align="center" colspan="3"><font color="#6633CC" size="+1">&nbsp;</font></td> -->


</tr>


<%

String ttt=(String)session.getAttribute("ttt");

String search2=request.getParameter("username");

session.setAttribute("search2",search2);

//String ttt=(String)session.getAttribute("ttt");


String se = search2.toLowerCase();
String [] sa=se.split(" ");
for(int a=0;a<sa.length;a++)
{
session.setAttribute("sss",sa[a]);
Connection c1=null;
PreparedStatement p1=null;
try
{

p1=DbConnection.getConnections().prepareStatement("select * from files where c like '"+'%'+sa[a]+'%'+ "' group by subkey having count(*) >= 1 ");
ResultSet rs=p1.executeQuery();
while(rs.next())
{
String fname=rs.getString("subkey");
session.setAttribute("fname",fname);
//String fn=rs.getString("filename");
String fid=rs.getString("fileid");

%>
<!-- <tr align="left"><td colspan="4" width="20"></td></tr>
<tr align="center">
<td align="left"></td>
<td align="left"></td> -->
<td align="left"><%=sa[a]%></td>
<td align="right"><font color="#FFFFFF" size="+0.5"><a href="userfront111.jsp?<%=fname%>"><%=fname%></a></font></td>

</tr>

<!-- <tr align="center"><td colspan="4" width="20"></td></tr> -->

<%
}
}

catch(Exception e1)
{
out.println(e1.getMessage());
}

Connection c2=null;
PreparedStatement p2=null;

try
{

p2=DbConnection.getConnections().prepareStatement("select * from files where subkey like '"+'%'+sa[a]+'%'+ "' group by filekey having count(*) >= 1 ");
ResultSet rs=p2.executeQuery();
while(rs.next())
{
String fname=rs.getString("filekey");
//String fn=rs.getString("filename");
String fid=rs.getString("fileid");

%>
<!-- <tr align="center"><td colspan="4" width="20"></td></tr>
<tr align="center">
<td align="left"></td>
<td align="left"></font></td> -->
<td align="left"><h2 class="title" style="margin-left: 40px;"><FONT SIZE="6px" style="font-family: serif;" COLOR=blue>Welcome to <%=search3%> <a href="userfront111.jsp?<%=fname%>"><%=fname%></a></FONT></h2></a></td>
<td align="right"><font color="#FFFFFF" size="+0.5"></font></td>

</tr>

<!-- <tr align="center"><td colspan="4" width="20"></td></tr> -->

<%

}
}

catch(Exception e1)
{
out.println(e1.getMessage());
}





Connection c3=null;
PreparedStatement p3=null;

try
{

p3=DbConnection.getConnections().prepareStatement("select * from files where filekey like '"+'%'+sa[a]+'%'+ "' group by filename having count(*)");
ResultSet rs=p3.executeQuery();
if(rs.next())
{
String fname=rs.getString("filename");
String fid=rs.getString("fileid");

%>
<!-- <tr align="center"><td colspan="4" width="20"></td></tr>
<tr align="center">
<td width="70" align="left"></td> -->
<%-- <td><img src="f1.jsp?<%=fid%>" height="60" width="70"></td>
<td><font color="#FFFFFF" size="+0.5"><font color="#CC3333"><%=fname%><font color="#FFFFFF" size="+0.5"><a href="update.jsp?<%=fid%>">Click To Getdetails</a></font></font></td>
<td></td> --%>
</tr>
<!-- <tr align="center"><td colspan="4" width="20"></td></tr> -->
<%
}
}

catch(Exception e1)
{
out.println(e1.getMessage());
}


Connection c4=null;
PreparedStatement p4=null;
try
{

p4=DbConnection.getConnections().prepareStatement("select * from files where filename like '"+'%'+sa[a]+'%'+ "' group by filename having count(*)");
ResultSet rs=p4.executeQuery();
if(rs.next())
{
String fname=rs.getString("filename");
//String fn=rs.getString("filename");
String fid=rs.getString("fileid");
%>
<!-- <tr align="center"><td colspan="4" width="20"></td></tr> -->
<!-- <tr align="center">
<td width="70" align="center"></td> -->
<%-- <td><img src="f1.jsp?<%=fid%>" height="60"></td>
<td align="center"><font color="#CC3333" size="+0.5"><%=fname%></font><font color="#FFFFFF" size="+0.5"><a href="update.jsp?<%=fid%>">Click To Getdetails</a></font></td>
<td><font color="#FFFFFF" size="+0.5"><a href="update.jsp?<%=fid%>">Click To Getdetails</a></font></td>
</tr> --%>
<!-- <tr align="center"><td colspan="4" width="20"></td></tr> -->

<%
}
}

catch(Exception e1)
{
out.println(e1.getMessage());
}
}
%>
</table>
</form> 
<%
java.text.DateFormat df = new java.text.SimpleDateFormat("ys"); 
String tt=df.format(new java.util.Date());
session.setAttribute("tt",tt);
int ttt1=Integer.parseInt(ttt);
int tt1=Integer.parseInt(tt);
int timee=ttt1-tt1;
%>
<%--  <table width="500"  align="right" >
<tr><td height="20" align="center"></td></tr>

<tr><td align="center">The searching Time Taken was (0.000000000000<%=timee%>) sec...</td></tr>
</table>
 --%>







</div>
<div style="clear: both;">&nbsp;</div>
<div id="widebar">
<div style="clear: both;">&nbsp;</div>
</div>
</div>
</div>
</div>
</body>
<h1 style="height: 200px"></h1>
<%@include file="footer.jsp"%>
</html>


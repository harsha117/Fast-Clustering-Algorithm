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
			<li><a href="login.jsp">Login</a></li>
			<li><a href="admin.jsp">Admin</a></li>
			<li><a href="index.jsp">Logout&nbsp;</a></li>
		</ul>
	</div>
	<br><br>
<div id="wrapper">
<div id="wrapper2">
<!-- <table>
<tr>
<td align="center"><font size="+3">&nbsp;A Fast Clustering-Based Feature Subset Selection  Algorithm  for High Dimensional Data
</font></td>
</tr>
</table>
	
<div id="header">
<div id="logo">
<h1>Clustering</h1>
</div>
<div id="menu">
<ul>
<li><a href="index.html">Home</a></li>
<li><a href="login.jsp">Login</a></li>
<li><a href="admin.jsp">Admin</a></li>
<li><a href="index.html">Logout&nbsp;</a></li>
</ul>
</div>
</div>
<div id="page">
<div id="content">
<div class="post">
<FONT SIZE="4" FACE="courier" COLOR=blue><MARQUEE WIDTH=100% BEHAVIOR=SCROLL HSPACE=15 VSPACE=25 >www.chennaisunday.com</MARQUEE></FONT>
<h2 class="title"><a href="#">Searching Domain Results</a></h2>					
</div> -->

<%
String id = request.getParameter("username");
String ttt=(String)session.getAttribute("ttt");





try
{
	PreparedStatement p4=DbConnection.getConnections().prepareStatement("SELECT * FROM image i,files f  WHERE f.subkey = '"+id+"' AND i.fileid = f.fileid");
ResultSet rs=p4.executeQuery();
while(rs.next())
{
%>

<input type="image" src="f1.jsp?<%=rs.getString("fileid")%>" height="150" width="200">

<%


}
}

catch(Exception e1)
{
out.println(e1.getMessage());
}
%>

<div style="clear: both;">&nbsp;</div>
<div id="widebar">
<div style="clear: both;">&nbsp;</div>
</div>
</div>
</div>
</div>
</body>
</html>


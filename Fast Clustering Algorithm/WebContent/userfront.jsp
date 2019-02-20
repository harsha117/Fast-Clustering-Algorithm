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
<script type="text/javascript">
	function reg()
	{
	var a = document.f2.username.value;
	if(a=="")
	{
	alert ("Enter for Search");
	document.f2.username.focus();
	return false;
	}
	}
	
</script>
<script src="//code.jquery.com/jquery-1.10.2.js"></script>
<script src="//code.jquery.com/ui/1.10.4/jquery-ui.js"></script>
<script src="autocompleter.js"></script>
<link rel="stylesheet"
	href="//code.jquery.com/ui/1.10.4/themes/smoothness/jquery-ui.css">
<!-- User defied css -->
<link rel="stylesheet" href="style.css">
<link rel="stylesheet" href="cssmenu/styles.css">
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
					<li><a href="userfront.jsp">Home</a></li>
					<li><a href="editing.jsp">Account Editing</a></li>
					<li><a href="view.jsp">Account View</a></li>
					<li><a href="index.html">Logout&nbsp;</a></li>
				</ul>
			</div>
		</div> -->
		<!-- end #header -->
		<div id="page">
			<div id="content">
				<div class="post">
				<!-- <FONT SIZE="4" FACE="courier" COLOR=blue><MARQUEE WIDTH=100% BEHAVIOR=SCROLL HSPACE=15 VSPACE=25 >www.chennaisunday.com</MARQUEE></FONT> -->
	<!-- 				<h2 class="title"><a href="#">Search</a></h2> -->
<form name="f2" action="userfront11.jsp" method="post" onsubmit="return reg()">
	<%
		  
java.text.DateFormat df1 = new java.text.SimpleDateFormat("ys"); 
String ttt=df1.format(new java.util.Date());
session.setAttribute("ttt",ttt);
		
		
		
		String sss=(String)session.getAttribute("uid");  
		  session.setAttribute("sss",sss);
		  
		  %>
<table height="200" width="650">
<tr><td>WebSearch</td><td>&nbsp;&nbsp;&nbsp;<a href="image.jsp">Image</a></td><td>&nbsp;&nbsp;&nbsp;<a href="image.jsp">News</a></td><td>&nbsp;&nbsp;&nbsp;<a href="sports.jsp">Sports</a></td></tr>
<tr><td colspan="3" width="350"></td><td>
<table width="550">

<tr>			
<td align="center"><img src="images/search1.jpg" alt="" width="420" height="138" /></td>   <td></td>
</tr>

<tr>			
<td height="10"></td>   <td height="10"></td>
</tr>

<tr>
<td align="center">Search Here&nbsp;&nbsp;&nbsp;&nbsp;<input width="50" type="text" name="username" id="search"></td>
</tr>

<tr>			
<td height="10"></td>   <td height="10"></td>
</tr>

<tr>
<td align="center" colspan="4">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input  type="submit" name="login" value="SEARCH" ></td>
</tr>
</table>


</td>
</tr>
</table>
</form> 
				</div>
				
			</div>
			<!-- end #content -->
			<div id="sidebar">
				<ul>
					<li>
						 <ul>
							
						</ul>
					</li>
				</ul>
			</div>
			<!-- end #sidebar -->
			<div style="clear: both;">&nbsp;</div>
			<div id="widebar">
				
				
				<div style="clear: both;">&nbsp;</div>
			</div>
			<!-- end #widebar -->
		</div>
		<!-- end #page -->
	</div>
	
</div>
</body>
<%@include file="footer.jsp"%>
</html>

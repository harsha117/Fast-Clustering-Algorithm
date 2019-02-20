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
	<div id="wrapper">
		<div id="wrapper2">
			<table>
				<!-- <tr>
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
<li><a href="login.jsp">Login</a></li>
<li><a href="admin.jsp">Admin</a></li>
<li><a href="index.html">Logout&nbsp;</a></li>
</ul>
</div> -->
				</div>
				<div id="page">
					<div id="content">
						<div class="post">
							<!-- <FONT SIZE="4" FACE="courier" COLOR=blue><MARQUEE WIDTH=100% BEHAVIOR=SCROLL HSPACE=15 VSPACE=25 >www.chennaisunday.com</MARQUEE></FONT> -->
							<h2 class="title">
								<a href="#">Searching Domain Results</a>
							</h2>
							<form name="f2" action="userfront1.jsp" method="post"
								onsubmit="return reg()">
								<table width="500" align="right">
									<tr>
										<td align="center" colspan="3"><font color="#6633CC"
											size="+1">&nbsp;</font></td>
									</tr>


									<%
										String fn = (String) request.getQueryString();

										String ttt = (String) session.getAttribute("ttt");

										Connection c4 = null;
										PreparedStatement p4 = null;

										try {

											p4 = DbConnection.getConnections().prepareStatement(
													"select * from files where filekey like '" + fn
															+ "' group by filename having count(*)");
											ResultSet rs = p4.executeQuery();
											while (rs.next()) {
												String fname = rs.getString("filename");
												String fid = rs.getString("fileid");
									%>
									<tr align="left">
										<td width="70" align="left"></td>
										<td align="left"><img src="f1.jsp?<%=fid%>" height="60"
											width="70"></td>
										<td align="left"><font color="#CC3333"><%=fname%></font></td>
										<td align="left"><font color="#FFFFFF" size="+0.5"><a
												href="update.jsp?<%=fid%>">Click To Getdetails</a></font></td>

									</tr>
									<%
										}
										}

										catch (Exception e1) {
											out.println(e1.getMessage());
										}
									%>
								</table>
							</form>

							<%
								java.text.DateFormat df = new java.text.SimpleDateFormat("ys");
								String tt = df.format(new java.util.Date());
								session.setAttribute("tt", tt);
								int ttt1 = Integer.parseInt(ttt);
								int tt1 = Integer.parseInt(tt);
								int timee = ttt1 - tt1;
							%>
							<table width="500" align="right">
								<tr>
									<td height="20" align="center"></td>
								</tr>

								<tr>
									<td align="center">The searching Time Taken was
										(0.000000000000<%=timee%>) sec...
									</td>
								</tr>
							</table>

							</li>
							<li>
								<ul>
								</ul>
							</li>
							</ul>
						</div>
						<div style="clear: both;">&nbsp;</div>
						<div id="widebar">
							<div style="clear: both;">&nbsp;</div>
						</div>
					</div>
				</div>
		</div>
</body>
</html>


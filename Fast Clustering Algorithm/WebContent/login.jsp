<%@include file="header.jsp"%>
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
<script type="text/javascript">
	function reg() {
		var a = document.f2.username.value;
		if (a == "") {
			alert("Enter a name");
			document.f2.username.focus();
			return false;
		}

		var b = document.f2.password.value;

		if (b == "") {
			alert("Enter user name");
			document.f2.password.focus();
			return false;
		}
	}
</script>




</head>
<body>
	<div id="wrapper">
		<div id="wrapper2">

			<div id="header">


				<div id="cssmenu">
					<ul>
						<li><a href="index.jsp">Home</a></li>
						<li><a href="login.jsp">Login</a></li>
						<li><a href="admin.jsp">Admin</a></li>
						<li><a href="index.jsp">Logout</a></li>
					</ul>
				</div>
			</div>
			<!-- end #header -->
			<div id="page">
				<div id="content">
					<div class="post">
						<!-- 				<FONT SIZE="4" FACE="courier" COLOR=blue><MARQUEE WIDTH=100% BEHAVIOR=SCROLL HSPACE=15 VSPACE=25 >www.chennaisunday.com</MARQUEE></FONT> -->
					<!-- 	<h2 class="title">
							<a href="#">Login Page</a>
						</h2> -->
						<br><br>
						<form name="f2" action="che.jsp" method="post"
							onsubmit="return reg()">


						



										<table class="s1" height="120" align="center" style="background-color: gray">
											<tr>
												<th colspan="2">Login Here</th>
											</tr>
										
											<tr>
												<td class="s1" align="right">User
													Name&nbsp;&nbsp;&nbsp;:&nbsp;&nbsp;&nbsp;</td>
												<td class="s1"><input type="text" name="username"></td>
											</tr>
											<tr>
												<td height="10"></td>
											</tr>
											<tr>
												<td class="s1" align="right">Pass
													word&nbsp;&nbsp;&nbsp;:&nbsp;&nbsp;&nbsp;</td>
												<td class="s1"><input type="password" name="Password"></td>
											</tr>
											<tr>
												<td height="10"></td>
											</tr>


											<tr>
												<td class="s1" align="right"></td>
												<td class="s1">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input
													type="submit" name="login" value="Login"></td>
											</tr>
											<tr>
												<td height="10"></td>
											</tr>
											<tr>
												<td class="s1" align="right">Not Yet a Member</td>
												<td class="s1"><a href="regstration.jsp">New User</a></td>
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
						<!--<li id="search">
						<h3>Search</h3>
						<form id="searchform" method="get" action="">
							
							
							
							
						</form>
					</li>-->
						<li>
							<!--<h3>Veroeros etiam</h3>
						<p><strong>Morbi sit amet</strong> mauris Nam vitae nibh eu sapien dictum pharetra. Vestibulum elementum neque vel lacus. Proin auctor dolor loremmassa. Phasellus sit. <a href="#">More&hellip;</a></p>
					</li>
					<li>
						<h3>Blandit Volutpat</h3>-->
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
		<!-- end #wrapper2
	<div id="footer">
		<p>(c) 2007 Website Name. Design by <a href="http://www.nodethirtythree.com/">NodeThirtyThree</a> + <a href="http://www.freecsstemplates.org/">Free CSS Templates</a></p>
	</div> -->
	</div>
	<!-- end #wrapper 
<div align=center>This template  downloaded form <a href='http://all-free-download.com/free-website-templates/'>free website templates</a></div>
-->

</body>
<h1 style="height: 150px"></h1>
<%@include file="footer.jsp"%>
</html>

<%@include file="header.jsp"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="content-type" content="text/html; charset=utf-8" />
<title>Encrypted Data Storage Vs Data Against illegal Access</title>
<meta name="keywords" content="" />
<meta name="description" content="" />
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
				<link href="style.css" rel="stylesheet" type="text/css"
					media="screen" />
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

						<li><a href="index.jsp">Logout&nbsp;</a></li>
					</ul>
				</div>
			</div>
			<div id="page">
				<div id="content">
					<div class="post">
						<form name="f2" action="adminchk.jsp" method="post"
							onsubmit="return reg()">
							<br><br></br></br>
							<table class="s1" height="120" align="center"
								style="background-color: gray">
								<tr>
									<th colspan="2">Admin Login</th>
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
								</td>
								</tr>
							</table>
						</form>
					</div>
				</div>
				<div style="height: 400px;"></div>
</body>
<%@include file="footer.jsp"%>
</html>


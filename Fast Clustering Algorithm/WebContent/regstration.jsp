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
	function reg() {
		var a = document.f2.name.value;
		if (a == "") {
			alert("Enter a name");
			document.f2.name.focus();
			return false;
		}

		if (!isNaN(a)) {
			alert("Enter a alphat");
			document.form1.name.select();
			return false;
		}

		var b = document.f2.username.value;

		if (b == "") {
			alert("Enter user name");
			document.f2.username.focus();
			return false;
		}

		var z = document.f2.eid.value;
		if (z == "") {
			alert("enter a mail id");
			document.f2.eid.focus();
			return false;
		}

		var emailfilter = /^\w+[\+\.\w-]*@([\w-]+\.)*\w+[\w-]*\.([a-z]{2,4}|\d+)$/i
		var c = emailfilter.test(document.f2.eid.value);
		if (c == false) {
			alert(" Enter valid Mail ID");
			document.f2.eid.select();
			return false;
		}

		var d = document.f2.pwd.value;
		if (d == "") {
			alert("Enter a password");
			document.f2.pwd.focus();
			return false;
		}

		var e = document.f2.conpwd.value;
		if (e == "") {
			alert("enter confirm password");
			document.f2.conpwd.focus();
			return false;
		}
		if (d != e) {
			alert("Enter correct password");
			document.f2.conpwd.select();
			return false;
		}

		var f = document.f2.dob.value;
		if (f == "") {
			alert("Pick date");
			document.f2.dob.focus();
			return false;
		}

		var g = document.f2.address.value;
		if (g == "") {
			alert("Enter address");
			document.f2.address.focus();
			return false;
		}

		var h = document.f2.mno.value;
		if (h == "") {
			alert("Enter mobile number");
			document.f2.mno.focus();
			return false;
		}
		if (h.length != 10) {
			alert("Enter valid mobile number");
			document.f2.mno.focus();
			return false;
		}
		var i = document.f2.cry.value;
		if (i == "") {
			alert("Enter country");
			document.f2.cry.focus();
			return false;
		}

		if ((f2.gender[0].checked == false) && (f2.gender[1].checked == false)) {
			alert("Please choose your Gender: Male or Female");
			return false;
		}

	}
</script>
</head>

<body>
	<%
		Connection con1 = null;
		Statement st = null;
		ResultSet rs = null;

		int id = 0;
		try {
			con1 = DbConnection.getConnections();
			st = con1.createStatement();
			rs = st.executeQuery("select max(userid) from regstration");
			while (rs.next()) {
				if (rs.getInt(1) == 0)
					id = 1;
				else
					id = rs.getInt(1) + 1;
			}

			session.setAttribute("id", id);

		}

		catch (Exception e) {
			//out.println(e.getMessage());
		}
	%>
	<div id="cssmenu">
		<ul>
			<li><a href="index.jsp">Home</a></li>
			<li><a href="login.jsp">Login</a></li>
			<li><a href="admin.jsp">Admin</a></li>
			<li><a href="index.jsp">Logout&nbsp;</a></li>
		</ul>
	</div>
	<br>
	<br>
	<!-- end #header -->
	<div id="page">
		<div id="content">
			<div class="post">
				<form name="f2" action="insert.jsp" method="post"
					onsubmit="return reg()">

					<!-- 	<table height="80" border="1" align="center">

						<tr>
							<td width="250"></td>
							<td> -->


					<table class="s1" height="100" align="center"
						style="background-color: gray">
						<tr>
							<th colspan="2" style="color: blue">Register Here</th>
						</tr>

						<tr>
							<td class="s1" align="right">Name&nbsp;&nbsp;&nbsp;:</td>
							<td class="s1"><input type="text" name="name"></td>
						</tr>
						<tr>
							<td height="10"></td>
						</tr>

						<tr>
							<td class="s1" align="right">User Name&nbsp;&nbsp;&nbsp;:</td>
							<td class="s1"><input type="text" name="username"></td>
						</tr>
						<tr>
							<td height="10"></td>
						</tr>
						<tr>
							<td class="s1" align="right">Email id&nbsp;&nbsp;&nbsp;:</td>
							<td class="s1"><input type="text" name="eid"></td>
						</tr>

						<tr>
							<td height="10"></td>
						</tr>

						<tr>
							<td class="s1" align="right">Password&nbsp;&nbsp;&nbsp;:</td>
							<td class="s1"><input type="password" name="pwd"></td>
						</tr>

						<tr>
							<td height="10"></td>
						</tr>

						<tr>
							<td class="s1" align="right">Confirm
								Password&nbsp;&nbsp;&nbsp;:</td>
							<td class="s1"><input type="password" name="conpwd"></td>
						</tr>

						<tr>
							<td height="10"></td>
						</tr>

						<tr>
							<td class="s1" align="right">Dob&nbsp;&nbsp;&nbsp;:</td>
							<td class="s1"><input name="dob" type="date" width="16"
								height="16"> <!-- id="demo1"
											maxlength="25" size="20"><a
											href="javascript:NewCal('demo1','ddmmmyyyy',true,24)"><img
												src="cal.gif" width="16" height="16" border="0"
												alt="Pick a date"></a> <span class="descriptions"></span></td> -->
						</tr>
						<tr>
							<td height="10"></td>
						</tr>
						<tr>
							<td class="s1" align="right">Address&nbsp;&nbsp;&nbsp;:</td>
							<td class="s1"><input type="text" name="address"></td>
						</tr>
						<tr>
							<td height="10"></td>
						</tr>
						<tr>
							<td class="s1" align="right">Mobile Num&nbsp;&nbsp;&nbsp;:</td>
							<td class="s1"><input type="text" name="mno" maxlength="10"></td>
						</tr>

						<tr>
							<td height="10"></td>
						</tr>
						<tr>
							<td class="s1" align="right">Gender&nbsp;&nbsp;&nbsp;:</td>
							<td class="s1"><input type="radio" name="gender"
								value="Male">Male &nbsp;<input type="radio"
								name="gender" value="Fe-Male">Fe-Male</td>
						</tr>

						<tr>
							<td height="10"></td>
						</tr>
						<tr>
							<td class="s1" align="right">UserType&nbsp;&nbsp;&nbsp;:</td>

							<td class="s1"><select name="utype"><option
										value="0">--Select--</option>
								<option value="user">USER</option></select></td>
						</tr>
						<tr>
							<td height="10"></td>
						</tr>

						<tr>
							<td class="s1" align="right"></td>
							<td class="s1"><input type="submit" name="submit"
								value="SUBMIT">&nbsp;<input type="reset" name="reset"></td>
						</tr>
					</table>
				</form>
			</div>
		</div>
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
	</div>
</body>
<%@include file="footer.jsp"%>
</html>

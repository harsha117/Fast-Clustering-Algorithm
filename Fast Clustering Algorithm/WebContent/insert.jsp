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
	<%
		String name1 = request.getParameter("name");
		//out.print(name1);
		String username1 = request.getParameter("username");
		//out.print(username1);
		String emailid1 = request.getParameter("eid");
		//out.print(emailid1);
		String password1 = request.getParameter("pwd");
		//out.print(password1);
		String confirmpassword1 = request.getParameter("conpwd");
		//out.print(confirmpassword1);
		String dob1 = request.getParameter("dob");
		//out.print(dob1);
		String address1 = request.getParameter("address");
		//out.print(address1);
		String mobilenum1 = request.getParameter("mno");
		//out.print(mobilenum1);
		String gender1 = request.getParameter("gender");
		//out.print(gender1);
		String utype = request.getParameter("utype");
		//out.print(utype);

		try {

			PreparedStatement ps = DbConnection
					.getConnections()
					.prepareStatement(
							"insert into regstration (name,username,emailid,password,cpassword,dob,address,mno,gender,utype) values (?,?,?,?,?,?,?,?,?,?)");

			ps.setString(1, name1);
			ps.setString(2, username1);
			ps.setString(3, emailid1);
			ps.setString(4, password1);
			ps.setString(5, confirmpassword1);
			ps.setString(6, dob1);
			ps.setString(7, address1);
			ps.setString(8, mobilenum1);
			ps.setString(9, gender1);
			ps.setString(10, utype);
			int x = ps.executeUpdate();

			if (x == 0) {
				response.sendRedirect("registrationSuccess.jsp");
			} else {
				response.sendRedirect("sucessreg.jsp");
			}
		} catch (Exception e) {
			out.println(e.getMessage());
		}
	%>

</body>
<h2 style="height: 300px"></h2>
<%@include file="footer.jsp"%>
</html>


<html>
<head>
<title>Untitled Document</title>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">


</head>

<body>
 <%
        String username1=request.getParameter("username");
		String password1=request.getParameter("Password");
		
		String u1="admin";
		String u2="admin";
		if(username1.equals(u1) && password1.equals(u2))
		{
		response.sendRedirect("adminfront.jsp");
		}
		else 
		{
		
		response.sendRedirect("adminwrong.jsp");
		
		}


%>

</body>
</html>

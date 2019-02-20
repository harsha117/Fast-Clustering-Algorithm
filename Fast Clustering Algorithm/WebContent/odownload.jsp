
<%@page import="java.sql.ResultSet"%>
<%@page import="db.util.DbConnection"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Blob"%>
<html>
<head>
<title></title>
<script language="JavaScript">
	
</script>
</head>
<body background="Images/clouds_background.jpg">
	<%
		Thread.sleep(2000);
		session.removeAttribute("resumeBlob");
		//String id=request.getQueryString();

		String id = (String) session.getAttribute("empid1");
		Blob resume = null;
		ResultSet rs = null;
		String sql1 = "select file from files1 where fileid = ?";
		try {

			PreparedStatement ps = DbConnection.getConnections()
					.prepareStatement(sql1);
			ps.setString(1, id);
			rs = ps.executeQuery();
			rs.next();
			resume = rs.getBlob(1);
		} catch (Exception e) {
			out.println("Exception :" + e);
		} finally {
			if (DbConnection.getConnections() != null)
				DbConnection.getConnections().close();
			if (DbConnection.getConnections() != null)
				DbConnection.getConnections().close();
			if (rs != null)
				rs.close();
		}

		session.setAttribute("resumeBlob1", resume);
		response.sendRedirect("odownload1.jsp");
	%>

</body>
</html>
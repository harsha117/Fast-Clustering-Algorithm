
<%@page import="java.io.OutputStream"%>
<%@page import="java.sql.Blob"%>
<html>
<head>
<title>Chennai Sunday</title>
<script language="JavaScript">

</script>
</head>

<body>
<%
Thread.sleep(2000);
%>		
<%
		Blob b = (Blob)session.getAttribute("resumeBlob1");
		
		if(b != null)
		{
			String fileName = "documentfile";
			byte[] ba = b.getBytes(1, (int)b.length());
			response.setContentType("application/notepad");
			response.setHeader("Content-Disposition","attachment;filename=\""+fileName+"\"");
			OutputStream os = response.getOutputStream();
			os.write(ba);
			os.close();
			ba = null;
			session.removeAttribute("document1");
		}
		else
		{
			response.sendRedirect("userfront22.jsp");
		}
%>

</body>
</html>

<%@page import="db.util.DbConnection"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.io.InputStream"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.io.FileInputStream"%>

<%@page import="java.io.FileOutputStream"%>
<%@page import="java.io.File"%>
<%@page import="java.io.DataInputStream"%>
<%
	String fileid = (String) session.getAttribute("id");
	//out.print(fileid);

	String saveFile = "";
	String contentType = request.getContentType();
	if ((contentType != null)
			&& (contentType.indexOf("multipart/form-data") >= 0)) {
		DataInputStream in = new DataInputStream(
				request.getInputStream());
		int formDataLength = request.getContentLength();
		byte dataBytes[] = new byte[formDataLength];
		int byteRead = 0;
		int totalBytesRead = 0;
		while (totalBytesRead < formDataLength) {
			byteRead = in.read(dataBytes, totalBytesRead,
					formDataLength);
			totalBytesRead += byteRead;
		}
		String file = new String(dataBytes);
		saveFile = file.substring(file.indexOf("filename=\"") + 10);
		saveFile = saveFile.substring(0, saveFile.indexOf("\n"));
		saveFile = saveFile.substring(saveFile.lastIndexOf("\\") + 1,
				saveFile.indexOf("\""));
		int lastIndex = contentType.lastIndexOf("=");
		String boundary = contentType.substring(lastIndex + 1,
				contentType.length());
		int pos;
		pos = file.indexOf("filename=\"");
		pos = file.indexOf("\n", pos) + 1;
		pos = file.indexOf("\n", pos) + 1;
		pos = file.indexOf("\n", pos) + 1;
		int boundaryLocation = file.indexOf(boundary, pos) - 4;
		int startPos = ((file.substring(0, pos)).getBytes()).length;
		int endPos = ((file.substring(0, boundaryLocation)).getBytes()).length;
		File ff = new File(saveFile);
		FileOutputStream fileOut = new FileOutputStream(ff);
		fileOut.write(dataBytes, startPos, (endPos - startPos));
		fileOut.flush();
		fileOut.close();
%><Br>
<table border="2">
	<tr>
		<td><b>You have successfully upload the file:</b> <%
 	out.println(saveFile);
 %></td>
	</tr>
</table>
<%
	
		FileInputStream fis;
		try {

			File f = new File(saveFile);
			PreparedStatement psmnt = DbConnection.getConnections().prepareStatement(
					"insert into files1(file,fileid) values(?,?)");

			fis = new FileInputStream(f);
			psmnt.setBinaryStream(1, (InputStream) fis,
					(int) (f.length()));
			psmnt.setString(2, fileid);
			int s = psmnt.executeUpdate();
			if (s > 0) {
				response.sendRedirect("adminfront2.jsp");
			} else {
				System.out.println("Error!");
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
%>

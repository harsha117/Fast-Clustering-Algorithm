
<%@page import="java.io.OutputStream"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="db.util.DbConnection"%>
<%@page import="java.sql.Blob"%>
<% Blob image = null;



byte[ ] imgData = null ;
//String w=request.getQueryString();



String a=request.getQueryString();
System.out.println(a);



try {



ResultSet rs = DbConnection
.getConnections().createStatement().executeQuery("select image from image where fileid='"+a+"' ");

while(rs.next()) {

image = rs.getBlob(1);

imgData = image.getBytes(1,(int)image.length());

} 


response.setContentType("image/jpeg");

OutputStream fid1 = response.getOutputStream();

fid1.write(imgData);

fid1.flush();

fid1.close();

} catch (Exception e) {

out.println("Unable To Display image");

out.println("Image Display Error=" + e.getMessage());

return;

} finally {

try {



DbConnection.getConnections().close();

DbConnection.getConnections().createStatement().close();

} catch (Exception e) {

e.printStackTrace();

}

}


%> 
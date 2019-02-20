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
	function reg()
	{
	var a = document.f2.file.value;
	if(a=="")
	{
	alert ("Select Required File IMAGE");
	document.f2.file.focus();
	return false;
	}
	}
	
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
<!-- <table>
<tr>
<td align="center"><font size="+3">&nbsp;A Fast Clustering-Based Feature Subset Selection  Algorithm  for High Dimensional Data
</font></td>
</tr>
</table>
	 -->
<!-- 		<div id="header">
		
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
			</div>
		</div> -->
		<!-- end #header -->
		<div id="page">
			<div id="content">
				<div class="post">
				<!-- <FONT SIZE="4" FACE="courier" COLOR=blue><MARQUEE WIDTH=100% BEHAVIOR=SCROLL HSPACE=15 VSPACE=25 >www.chennaisunday.com</MARQUEE></FONT> -->
				<!-- 	<h2 class="title"><a href="#">Admin Front</a></h2> -->
					
					<%
					String filename=(String)session.getAttribute("name");
                    String fileid=(String)session.getAttribute("id");
                    String filekey=(String)session.getAttribute("key");
                    String filesubkey=(String)session.getAttribute("subkey");
					
										
					%>
					
					
					
					
					
					
					
				
<table class="s1" height="120">
<tr>
<td width="100"></td>
<td>
					
<table height="120"  >
					<tr><td width="350"></td><td>
					

  <tr ><td class="s1" align="right">File Name&nbsp;&nbsp;&nbsp;:&nbsp;&nbsp;&nbsp;</td>
    <td class="s1"><input type="text" name="username" value="<%=filename%>" ></td></tr>
	
	
	<tr><td height="10" ></td>
    <td></td></tr>
	
	
	<tr ><td class="s1" align="right">File ID&nbsp;&nbsp;&nbsp;:&nbsp;&nbsp;&nbsp;</td>
    <td class="s1"><input name="fileid" value="<%=fileid%>" ></td></tr>
	
	 
	
	<tr><td height="10" ></td>
    <td></td></tr>

     <tr ><td class="s1" align="right">File KEY&nbsp;&nbsp;&nbsp;:&nbsp;&nbsp;&nbsp;</td>
    <td class="s1"><input type="filekey" name="filekey" value="<%=filekey%>" ></td></tr>
    
	<tr><td height="10" ></td>
    <td></td></tr>
	
	<tr ><td class="s1" align="right">File SUBKEY&nbsp;&nbsp;&nbsp;:&nbsp;&nbsp;&nbsp;</td>
    <td class="s1"><input type="filesubkey" name="filesubkey" value="<%=filesubkey%>" ></td></tr>
    
	<tr><td height="10" ></td>
    <td></td></tr>
	

	<form name="f2" action="fileinsert2.jsp" ENCTYPE="multipart/form-data" method="post" onsubmit="return reg()">
	

     <tr> 
                <td class="s1" align="right">Upload 
                  Image&nbsp;&nbsp;&nbsp;:&nbsp;&nbsp;&nbsp;</td>
                <td><input type="file" name="file" class="b"></td>
              </tr>
			  <tr><td height="10" ></td>
    <td></td></tr>
	
	
	
	<tr> 
                <td></td>
                <td><input type="submit" name="s" value="submit" class="b1" > &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                  <input type="reset" name="r" value="clear" class="b1"></td>
              </tr>
	</form>
	
	
	
	
  </table>  
  </td>
  </tr>
  </table>
  
				</div>
				
			</div>
			<!-- end #content -->
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
			<!-- end #widebar -->
		</div>
		<!-- end #page -->
	</div>
	</div>
</body>
</html>

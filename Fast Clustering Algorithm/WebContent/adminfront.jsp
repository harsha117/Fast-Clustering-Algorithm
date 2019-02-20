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
<script type="text/javascript">
	function reg()
	{
	var a = document.f2.name.value;
	if(a=="")
	{
	alert ("Enter a file name");
	document.f2.name.focus();
	return false;
	}
	
	
	var b=document.f2.key.value;
	
	if(b=="")
	{
	alert ("Enter Correct File Key");
	document.f2.key.focus();
	return false;
	}
	
	var c=document.f2.subkey.value;
	
	if(c=="")
	{
	alert ("Enter Correct File SubKey");
	document.f2.subkey.focus();
	return false;
	}
	if(c=="")
	{
	alert ("Enter Common file name");
	document.f2.subkey.focus();
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
<li><a href="index.html">Home</a></li>
<li><a href="login.jsp">Login</a></li>
<li><a href="admin.jsp">Admin</a></li>
<li><a href="index.html">Logout&nbsp;</a></li>
</ul>
</div>
</div>
<div id="page">
<div id="content">
<div class="post">

<br>
<br></br></br>
<center>
<form name="f2" action="fileinsert.jsp" method="post" onsubmit="return reg()">
					
<table class="s1" height="120">
<tr>
<td width="100"></td>
<td>
					
<table height="120"  >
					<tr><td width="250"></td><td>
					

  <tr ><td class="s1" align="right">File Name&nbsp;&nbsp;&nbsp;:&nbsp;&nbsp;&nbsp;</td>
    <td class="s1"><input type="text" name="name" ></td></tr>
	
	
	<tr><td height="10" ></td>
    <td></td></tr>
	
	
	<tr ><td class="s1" align="right">File ID&nbsp;&nbsp;&nbsp;:&nbsp;&nbsp;&nbsp;</td>
    <td class="s1"><input name="id" value="<%=(int)(Math.random()*10000)%>" ></td></tr>
	
	
	
	<tr><td height="10" ></td>
    <td></td></tr>

     <tr ><td class="s1" align="right">File KEY&nbsp;&nbsp;&nbsp;:&nbsp;&nbsp;&nbsp;</td>
    <td class="s1"><input type="text" name="key" ></td></tr>
    
	<tr><td height="10" ></td>
    <td></td></tr>
	
	<tr ><td class="s1" align="right">File SUBKEY&nbsp;&nbsp;&nbsp;:&nbsp;&nbsp;&nbsp;</td>
    <td class="s1"><input type="text" name="subkey" ></td></tr>
    
	<tr><td height="10" ></td>
    <td></td></tr>
	
	<tr ><td class="s1" align="right">Common Name&nbsp;&nbsp;&nbsp;:&nbsp;&nbsp;&nbsp;</td>
    <td class="s1"><input type="text" name="cname" ></td></tr>
    
	<tr><td height="10" ></td>
    <td></td></tr>
	
		<tr> 
                <td></td>
                <td><input type="submit" name="s" value="NEXT" class="b1" > &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                  <input type="reset" name="r" value="clear" class="b1"></td>
              </tr>
	
	
	
	
	
  </table> 
  </center> 
  </td>
  </tr>
  </table>
  </form>
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
			
	</div>
	</div>
	<div style="height:200px;"></div>
</body>
</html>
<%@include file="footer.jsp"%>

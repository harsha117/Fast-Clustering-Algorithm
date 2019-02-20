<%@include file="header.jsp"%>
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
<script type="text/javascript">
	(function($) {
		$(function() {
			$("#scroller").simplyScroll();
		});
	})(jQuery);
</script>
</head>


<script type="text/javascript">
	function toggle(dd) {
		alert("jjj" + dd);
		document.getElementById('actFb').submit();
	}

	function OnSubmitForm(itemVal) {
		if (document.getElementById('search').value == "s") {
			document.myform.action = "insert.html";
		} else if (document.myform.operation[1].checked == true) {
			document.myform.action = "update.html";
		}
		return true;
	}
</script>

</head>
<body>
	<form action="actionurl" id="actFb" onsubmit="return OnSubmitForm();">
		<div id='cssmenu'>
			<ul>
				<li><a href="index.html">Home</a></li>
					
					<li><a href="login.jsp">Login</a></li>
					<li><a href="admin.jsp">Admin</a></li>
				
				
			</ul>

		</div>
	<div style="height: 450px;">
	
		<div id="page">
			<div id="content">
				<div class="post">
				<!-- <FONT SIZE="4" FACE="courier" COLOR=blue><MARQUEE WIDTH=100% BEHAVIOR=SCROLL HSPACE=15 VSPACE=25 >www.chennaisunday.com</MARQUEE></FONT> -->
		<!-- 			<h2 class="title"><a href="index.jsp">Home Page</a></h2>
					 -->
					
					<table class="s1" height="120">
					<tr><td><pre>
	Feature  selection involves identifying a subset</br> 
 of  the most useful features  that produces  compatible</br>
 results as the  original entire  of features. A feature</br>
 selection  algorithm may be  evaluated from  both  the </br>
 efficiency  and effectiveness points of view. While the</br>
 efficiency  concerns the time required to find a subset</br>
 of features,the effectiveness is related to the quality</br>
 of the subset of features . Based on these criteria, a </br>
 fast  clustering based  feature selection algorithm is </br>
 proposed  and experimentally evaluated in this project.</br>
  </pre>
  </td>
  
  <td width="100"></td>
  
  <td width="500" height="111">
  <img src="images/cluster.jpg" width="300" height="270">
  </td>
  
  
  </tr>
  </table>
 
				</div>
				
			</div>
	
	
	
	</div>
		<br>
	</div>
</body>
<%@include file="footer.jsp"%>
</html>

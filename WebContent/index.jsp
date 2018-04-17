<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%> 
    
    <%@ page import="gradedUnit.*" %>
   
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	
	<link rel="stylesheet" href="themes/sruTheme.min.css" />
	<link rel="stylesheet" href="themes/jquery.mobile.icons.min.css" />
	<link rel="stylesheet" href="http://code.jquery.com/mobile/1.4.2/jquery.mobile.structure-1.4.2.min.css">
    <script src="http://code.jquery.com/jquery-1.11.1.min.js"></script>
    <script src="http://code.jquery.com/mobile/1.4.5/jquery.mobile-1.4.5.min.js"></script>	

<title>Simply Rugby</title>

</head>
<body><!--log in -->

<div data-role="page" data-theme="a">

<h1> Welcome to Simply Rugby</h1>
	
	<img src="themes/images/logo.jpg" alt="Team Logo" style="width:175px;height:100px;" align="right">
	
	<div class="login-page">
    	<form action="logIn.jsp" method="post"><!-- form to take all login details to be checked -->
    	
      		Username:<input type="text" name="username"/>
      		
      		Password:<input type="password" name="password"/>
      		
      		<input type="submit" value="Log In">
      		
    	</form>
	</div>

</div>	
</body>
</html>

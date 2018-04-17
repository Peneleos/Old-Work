<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="gradedUnit.*"%>
<%
	Controller control = Controller.getControl();
%>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title><%=request.getParameter("members") %>'s Details</title>
</head>
<body>
	<div data-role="page" data-theme="a">
	<h1><%=request.getParameter("members") %>'s Details</h1>
	<!-- gets members object -->
	<% Member member = control.getMember(request.getParameter("members")); %>
	
	<!-- displays all member details and profile picture -->
	<h2>Full Name: <%=
		member.getFirst() + " " + member.getLast()
	%></h2>
	
	<img src="<%=member.getProfileShot() %>" alt="<%=member.getLast() %> profile" style="width:304px;height:228px;" align="right">
	
	<h2>SRU Number: <%=
		member.getSRU()
	%></h2>
	
	<h2>Member ID: <%=
		member.getMemID()
	%></h2>
	
	<h2>Address: <%=
		member.getAddress()
	%></h2>
	
	<h2>Postcode: <%=
		member.getCode()
	%></h2>
	
	<h2>Date of Birth: <%=
		member.getDoB()
	%></h2>
	
	<h2>Telephone Number: <%=
		member.getPhone()
	%></h2>
	
	<h2>Mobile Number: <%=
		member.getMob()
	%></h2>
	
	<h2>Email Address: <%=
		member.getEmail()
	%></h2>
	
	<h2>Subs: 
	<%
		if (member.getSubs()==true){
			
			%>Paid<%
		}else{
			
			%>Not paid<%
		}
	%></h2>
	
	<form>
		<a href="main.jsp" class="ui-btn ui-btn-incline">Back</a>
	</form>
	</div>
</body>
</html>

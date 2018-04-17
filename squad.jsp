<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import="gradedUnit.*"%>
<%
	Controller control = Controller.getControl();
%>
    
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	
	<link rel="stylesheet" href="themes/sruTheme.min.css" />
	<link rel="stylesheet" href="themes/jquery.mobile.icons.min.css" />
	<link rel="stylesheet" href="http://code.jquery.com/mobile/1.4.2/jquery.mobile.structure-1.4.2.min.css">
    <script src="http://code.jquery.com/jquery-1.11.1.min.js"></script>
    <script src="http://code.jquery.com/mobile/1.4.5/jquery.mobile-1.4.5.min.js"></script>	

<title>Squad View</title>
</head>
<title><%=request.getParameter("squads") %></title>

<body>
	<div data-role="page" data-theme="a">
	
	<h1><%=request.getParameter("squads") %></h1>
	<% Squad squad = control.getSquad(request.getParameter("squads")); %>
	
	<h2>Coach: <%=
		squad.getCoach()
	%></h2>
	
	<form action="player.jsp"><!-- form for selecting a player -->
	
	<input type="hidden" id="thisField" name="squads" value="<%=request.getParameter("squads")%>">
		<select name="players">
		
			<!-- display all players in squad in drop down box -->
			<%
				for (Player players : squad.getPlayers()) {
			%>
			<option value="<%=players.getFirst()%>">
				<%=
					players.getFirst() + " " + players.getLast()
					%>		
			</option>
			<%
				}
			%>

		</select> <input type="submit" value="View Skills">
	</form>
	
	<form>
		<a href="main.jsp" class="ui-btn ui-btn-incline">Back</a>
	</form>
	</div>
</body>
</html>
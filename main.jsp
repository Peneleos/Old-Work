<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%> 
    
    <%@ page import="gradedUnit.*" %>
    <%
    Controller control = new Controller();
    %>
   
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

<!-- 
	<link rel="stylesheet" href="http://code.jquery.com/mobile/1.4.5/jquery.mobile-1.4.5.min.css" />
	<script src="http://code.jquery.com/jquery-1.11.3.min.js"></script>
	<script src="http://code.jquery.com/mobile/1.4.5/jquery.mobile-1.4.5.min.js"></script>
	-->
	
	<link rel="stylesheet" href="themes/sruTheme.min.css" />
	<link rel="stylesheet" href="themes/jquery.mobile.icons.min.css" />
	<link rel="stylesheet" href="http://code.jquery.com/mobile/1.4.2/jquery.mobile.structure-1.4.2.min.css">
    <script src="http://code.jquery.com/jquery-1.11.1.min.js"></script>
    <script src="http://code.jquery.com/mobile/1.4.5/jquery.mobile-1.4.5.min.js"></script>	

<title>Simply Rugby</title>
</head>
<body><!--main menu displays options for squads or nonPlayer members -->

<div data-role="page" data-theme="b">

	<form action="squad.jsp"><!-- form for selecting a squad -->
		<select name="squads">
			<%
				for (Squad squads : control.getSquads()) {
			%>
			<option value="<%=squads.getTeam()%>">
				<%=
					squads.getTeam()
					%>			
			</option>
			<%
				}
			%>
		</select> <input type="submit" value="Submit Squad">
	</form>
<p>Choose a squad, and click the "Submit Squad" button to access view the squad members.</p>
	
	<form action="nonPlayers.jsp"><!-- form for selecting a nonPlaying member -->
		<select name="members">
			<%
				for (Member members : control.getMembers()) {
			%>
			<option value="<%=members.getFirst()%>">
				<%=
					members.getFirst() + " " + members.getLast()
					%>
								
			</option>
			<%
				}
			%>
		</select> <input type="submit" value="Submit Member">
	</form>
<p>Choose a member, and click the "Submit Member" button to access details.</p>


	<form>
		<a href="index.jsp" class="ui-btn ui-btn-incline">Logout</a>
	</form>
</div>	
</body>
</html>
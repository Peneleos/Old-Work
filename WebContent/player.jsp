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

<!-- sets the style for the skills table -->
<style>
table {
    border-collapse: collapse;
    width: 100%;
    
}

th {
	text-align: left;
	padding-top:10px;
	padding-bottom:10px;
	background-color:#780078;
	color:white;
	border: 1px solid #ddd;

}

td {
    text-align: left;
    padding: 8px;
    border: 1px solid #ddd;
}

</style>

<title>Player View</title>
</head>
<title><%=request.getParameter("players") %></title>

<body>
	<div data-role="page" data-theme="b">	
	    
	    <!-- get squad variable from past page -->
	<% Squad squad = control.getSquad(request.getParameter("squads"));%>
	  
	  <!-- gets player variable from past page -->
	<h1><%=request.getParameter("players") %></h1>
	<% Player player = squad.getPlayer(request.getParameter("players")); %>
	
	<!-- display full name -->
	<h2>Full Name: <%=
		player.getFirst() + " " + player.getLast()
	%></h2>
	
	<!-- display profile picture stored in player object -->
	<img src="<%=player.getProfileShot() %>" alt="<%=player.getLast() %> profile" style="width:304px;height:228px;" align="right">
	
	<!-- display all skills-->
	<%	Passing pass = player.getPass();	
		Kicking kick = player.getKick();
		Tackling tack = player.getTack();
	%>
	
	<table>
		<tr>
			<th>Category</th>
			<th>Skill</th>
			<th>Skill level</th>
			<th>Comments</th>		
		</tr>
		
		<tr>
			<td rowspan='3'>Passing</td>
			<td>Standard</td>
			<td><%=pass.getStandard() %></td>
			<td rowspan='3'><%= pass.getComments()%></td>
		</tr>
		
		<tr>
			<td>Spin</td>
			<td><%=pass.getSpin() %></td>		
		</tr>
		
		<tr>
			<td>Pop</td>
			<td><%=pass.getPop() %></td>
		</tr>
	
		<tr>
			<td rowspan='4'>Kicking</td>
			<td>Drop</td>
			<td><%=kick.getDrop() %></td>
			<td rowspan='4'><%= kick.getComments()%></td>
		</tr>
		
		<tr>
			<td>Punt</td>
			<td><%=kick.getPunt() %></td>		
		</tr>
		
		<tr>
			<td>Grubber</td>
			<td><%=kick.getGrubber() %></td>
		</tr>
		
		<tr>
			<td>Goal</td>
			<td><%=kick.getGoal() %></td>
		</tr>
		
		<tr>
			<td rowspan='4'>Tackling</td>
			<td>Front</td>
			<td><%=tack.getFront() %></td>
			<td rowspan='4'><%= tack.getComments()%></td>
		</tr>
		
		<tr>
			<td>Rear</td>
			<td><%=tack.getRear() %></td>		
		</tr>
		
		<tr>
			<td>Side</td>
			<td><%=tack.getSide() %></td>
		</tr>
		
		<tr>
			<td>Scrabble</td>
			<td><%=tack.getScrabble() %></td>
		</tr>
	
	</table>

	<form action="editSkills.jsp"><!-- takes user to edit skills page -->
	
	<input type="hidden" id="thisSquad" name="squads" value="<%=request.getParameter("squads")%>">
	<input type="hidden" id="thisPlayer" name="players" value="<%=request.getParameter("players")%>">

		<input type="submit" value="Edit Skills">
	</form>
	
	<!-- display all player details -->
	<h2>SRU Number: <%=
		player.getSRU()
	%></h2>
	
	<h2>Member ID: <%=
		player.getMemID()
	%></h2>
	
	<h2>Address: <%=
		player.getAddress()
	%></h2>
	
	<h2>Postcode: <%=
		player.getCode()
	%></h2>
	
	<h2>Date of Birth: <%=
		player.getDoB()
	%></h2>
	
	<h2>Telephone Number: <%=
		player.getPhone()
	%></h2>
	
	<h2>Mobile Number: <%=
		player.getMob()
	%></h2>
	
	<h2>Email Address: <%=
		player.getEmail()
	%></h2>
	
	<h2>Subs: 
	<%
		if (player.getSubs()==true){
			
			%>Paid<%
		}else{
			
			%>Not paid<%
		}
	%></h2>
	
	<h2>Next of kin: <%=
		player.getKin()
	%></h2>
	
	<h2>Relationship: <%=
		player.getKinRel()
	%></h2>
	
	<h2>Next of kin telephone No: <%=
		player.getKinNo()
	%></h2>
	
	<h2>Doctor: <%=
		player.getDoc()
	%></h2>
	
	<h2>Doctor Telephone No: <%=
		player.getDocNo()
	%></h2>
	
	<h2>Any known health issues: <%=
		player.getHealth()
	%></h2>

	<h2>Position: <%=
		player.getPosition()
	%></h2>
	
	<h2>Past Positions: <%=
		player.getPast()
	%></h2>
	
	<!-- if junior player display all extra info -->	
	<!-- Not yet implemented -->
	
	<form action="squad.jsp"><!-- takes user to back to squad page -->
	
	<input type="hidden" id="thisSquad" name="squads" value="<%=request.getParameter("squads")%>">

		<input type="submit" value="Back">
	</form>
	</div>
</body>
</html>

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import="gradedUnit.*"%>
<%
	Controller control = Controller.getControl();	
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	
	<link rel="stylesheet" href="themes/sruTheme.min.css" />
	<link rel="stylesheet" href="themes/jquery.mobile.icons.min.css" />
	<link rel="stylesheet" href="http://code.jquery.com/mobile/1.4.2/jquery.mobile.structure-1.4.2.min.css">
    <script src="http://code.jquery.com/jquery-1.11.1.min.js"></script>
    <script src="http://code.jquery.com/mobile/1.4.5/jquery.mobile-1.4.5.min.js"></script>	

<!-- sets the tables style-->
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

<title>Edit Skills</title>
</head>
<body>
	<div data-role="page" data-theme="a">	<!-- sets the theme colour -->
	    
	<% Squad squad = control.getSquad(request.getParameter("squads"));%>

	<% Player player = squad.getPlayer(request.getParameter("players")); %>
	
	<!-- display all skills to be edited-->
	<%	Passing pass = player.getPass();	
		Kicking kick = player.getKick();
		Tackling tack = player.getTack();
	%>
	
	<!--form to take all variables to saveSkill.jsp to be stored  -->
	<form action="saveSkills.jsp">	
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
			<td>
				<select name="pStand" id="pStand">
					<option value="<%=pass.getStandard()%>" selected><%=pass.getStandard() %></option>
					<option value="1"> 1 </option>	
					<option value="2"> 2 </option>
					<option value="3"> 3 </option>
					<option value="4"> 4 </option>
					<option value="5"> 5 </option>
				</select>
			</td>
			<td rowspan='3'><textarea rows="3" name="pComments" id ="pComments"> <%= pass.getComments()%> </textarea></td>
		</tr>
		
		<tr>
			<td>Spin</td>
			<td>
				<select name="pSpin" id="pSpin">
					<option value="<%=pass.getSpin()%>" selected><%=pass.getSpin() %></option>
					<option value="1"> 1 </option>	
					<option value="2"> 2 </option>
					<option value="3"> 3 </option>
					<option value="4"> 4 </option>
					<option value="5"> 5 </option>
				</select></td>		
		</tr>
		
		<tr>
			<td>Pop</td>
			<td>
				<select name="pPop" id="pPop">
					<option value="<%=pass.getPop()%>" selected><%=pass.getPop() %></option>
					<option value="1"> 1 </option>	
					<option value="2"> 2 </option>
					<option value="3"> 3 </option>
					<option value="4"> 4 </option>
					<option value="5"> 5 </option>
				</select>
			</td>
		</tr>
	
		<tr>
			<td rowspan='4'>Kicking</td>
			<td>Drop</td>
			<td>
				<select name="kDrop" id="kDrop">
					<option value="<%=kick.getDrop()%>" selected><%=kick.getDrop() %></option>
					<option value="1"> 1 </option>	
					<option value="2"> 2 </option>
					<option value="3"> 3 </option>
					<option value="4"> 4 </option>
					<option value="5"> 5 </option>
				</select>
			</td>
			<td rowspan='4'><textarea rows="4" name="kComments" id ="kComments"> <%= kick.getComments()%> </textarea></td>
		</tr>
		
		<tr>
			<td>Punt</td>
			<td>
				<select name="kPunt" id="kPunt">
					<option value="<%=kick.getPunt()%>" selected><%=kick.getPunt() %></option>
					<option value="1"> 1 </option>	
					<option value="2"> 2 </option>
					<option value="3"> 3 </option>
					<option value="4"> 4 </option>
					<option value="5"> 5 </option>
				</select>
			</td>		
		</tr>
		
		<tr>
			<td>Grubber</td>
			<td>
				<select name="kGrubber" id="kGrubber">
					<option value="<%=kick.getGrubber()%>" selected><%=kick.getGrubber() %></option>
					<option value="1"> 1 </option>	
					<option value="2"> 2 </option>
					<option value="3"> 3 </option>
					<option value="4"> 4 </option>
					<option value="5"> 5 </option>
				</select>
			</td>
		</tr>
		
		<tr>
			<td>Goal</td>
			<td>
				<select name="kGoal" id="kGoal">
					<option value="<%=kick.getGoal()%>" selected><%=kick.getGoal() %></option>
					<option value="1"> 1 </option>	
					<option value="2"> 2 </option>
					<option value="3"> 3 </option>
					<option value="4"> 4 </option>
					<option value="5"> 5 </option>
				</select>
			</td>
		</tr>
		
		<tr>
			<td rowspan='4'>Tackling</td>
			<td>Front</td>
			<td>
				<select name="tFront" id="tFront">
					<option value="<%=tack.getFront()%>" selected><%=tack.getFront() %></option>
					<option value="1"> 1 </option>	
					<option value="2"> 2 </option>
					<option value="3"> 3 </option>
					<option value="4"> 4 </option>
					<option value="5"> 5 </option>
				</select>
			</td>
			<td rowspan='4'><textarea rows="4" name="tComments" id ="tComments"> <%= tack.getComments()%> </textarea></td>
		</tr>
		
		<tr>
			<td>Rear</td>
			<td>
				<select name="tRear" id="tRear">
					<option value="<%=tack.getRear()%>" selected><%=tack.getRear() %></option>
					<option value="1"> 1 </option>	
					<option value="2"> 2 </option>
					<option value="3"> 3 </option>
					<option value="4"> 4 </option>
					<option value="5"> 5 </option>
				</select>
			</td>		
		</tr>
		
		<tr>
			<td>Side</td>
			<td>
				<select name="tSide" id="tSide">
					<option value="<%=tack.getSide()%>" selected><%=tack.getSide() %></option>
					<option value="1"> 1 </option>	
					<option value="2"> 2 </option>
					<option value="3"> 3 </option>
					<option value="4"> 4 </option>
					<option value="5"> 5 </option>
				</select>
			</td>
		</tr>
		
		<tr>
			<td>Scrabble</td>
			<td>
				<select name="tScrabble" id="tScrabble">
					<option value="<%=tack.getScrabble()%>" selected><%=tack.getScrabble() %></option>
					<option value="1"> 1 </option>	
					<option value="2"> 2 </option>
					<option value="3"> 3 </option>
					<option value="4"> 4 </option>
					<option value="5"> 5 </option>
				</select>
			</td>
		</tr>
	
	</table>
	
	<!-- hidden values to be passed on to saveSkills.jsp to allow it to move change page after saving the changes -->
		<input type="hidden" id="thisSquad" name="squads" value="<%=request.getParameter("squads")%>">
		<input type="hidden" id="thisPlayer" name="players" value="<%=request.getParameter("players")%>">
		
		<input type="submit" value="Save changes">
	</form>

	<form action="player.jsp"><!-- takes user to back to player profile page -->
	
	<input type="hidden" id="thisSquad" name="squads" value="<%=request.getParameter("squads")%>">
	<input type="hidden" id="thisPlayer" name="players" value="<%=request.getParameter("players")%>">

		<input type="submit" value="Back">
	</form>
	</div>
</body>
</html>

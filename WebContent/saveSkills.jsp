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
<title>Saving</title>
</head>
<body>

	<% Squad squad = control.getSquad(request.getParameter("squads"));%>

	<% Player player = squad.getPlayer(request.getParameter("players")); %>
	
	<!-- gets objects to save changes to -->
	<%	Passing pass = player.getPass();	
		Kicking kick = player.getKick();
		Tackling tack = player.getTack();
	%>
	
	<!-- saving Passing skills -->
	<% int temp = Integer.parseInt(request.getParameter("pStand")); %>
	<% pass.changeStandard(temp); %>
	
	<% temp = Integer.parseInt(request.getParameter("pSpin")); %>
	<% pass.changeSpin(temp); %>
	
	<% temp = Integer.parseInt(request.getParameter("pPop")); %>
	<% pass.changePop(temp); %>
	
	<% pass.changeComments(request.getParameter("pComments")); %>
	
	<!-- saving Kicking skills -->
	<% temp = Integer.parseInt(request.getParameter("kDrop")); %>
	<% kick.changeDrop(temp); %>
	
	<% temp = Integer.parseInt(request.getParameter("kPunt")); %>
	<% kick.changePunt(temp); %>
	
	<% temp = Integer.parseInt(request.getParameter("kGrubber")); %>
	<% kick.changeGrubber(temp); %>
	
	<% temp = Integer.parseInt(request.getParameter("kGoal")); %>
	<% kick.changeGoal(temp); %>
	
	<% kick.changeComments(request.getParameter("kComments")); %>
	
	<!-- saving Tackling skills -->
	<% temp = Integer.parseInt(request.getParameter("tFront")); %>
	<% tack.changeFront(temp); %>
	
	<% temp = Integer.parseInt(request.getParameter("tRear")); %>
	<% tack.changeRear(temp); %>
	
	<% temp = Integer.parseInt(request.getParameter("tSide")); %>
	<% tack.changeSide(temp); %>
	
	<% temp = Integer.parseInt(request.getParameter("tScrabble")); %>
	<% tack.changeScrabble(temp); %>
	
	<% tack.changeComments(request.getParameter("tComments")); %>
	
	<!-- takes user back to player details page -->
	<input type="hidden" id="thisSquad" name="squads" value="<%=request.getParameter("squads")%>">
	<input type="hidden" id="thisPlayer" name="players" value="<%=request.getParameter("players")%>">
	<jsp:forward page="player.jsp"></jsp:forward>

</body>
</html>

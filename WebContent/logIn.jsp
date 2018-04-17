<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
        
    <%@ page import="gradedUnit.*" %>
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Logging In</title>
</head>
<body>
<% 
	//username and password are put though try-catches to ensure they are strings
		String username = null;
		while(username==null){
	
			try{
				username = new String(request.getParameter("username"));
			}catch(NumberFormatException e){
		
				System.out.println("Please enter only a string");
			}catch(Exception e){
		
				System.out.println("Please enter only a string");
			}
	
		}
            
		String password = null;
		while(password==null){
	
			try{
				password = new String(request.getParameter("password"));
			}catch(NumberFormatException e){
		
				System.out.println("Please enter only a string");
			}catch(Exception e){
		
				System.out.println("Please enter only a string");
			}
	
		}
            
        if (username == null || password == null) {
 
        	out.print("Invalid parameters");
        }
            
            
 
            // checks if user has entered admin and pass
            // if correct user is taken to main.jsp
            // else user is taken to back index.jsp
            if (username.equals("admin") && password.equals("pass")) {
            	%>
            	<jsp:forward page="main.jsp"></jsp:forward>
            	<%
           }
           else
               {
                %>
                <jsp:forward page="index.jsp"></jsp:forward>
                <%
           }

%>

</body>
</html>

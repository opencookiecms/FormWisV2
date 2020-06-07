<%-- 
    Document   : validator
    Created on : Jun 7, 2020, 1:15:07 AM
    Author     : User
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="DBController.Dbconnect"%>
<%@page import="java.sql.SQLException"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>logon</title>
    </head>
        <%
            String username = request.getParameter("username");
            String password = request.getParameter("password");
  
          
            ResultSet rs;
            rs = Dbconnect.getps("select * from researcher where username='" + username + "' and password='" + password + "'").executeQuery();
            if (rs.next()) {
                session.setAttribute("username", username);
                //out.println("welcome " + userid);
                //out.println("<a href='logout.jsp'>Log out</a>");
                response.sendRedirect("/FormWisV2/homepage");
            } else {
                out.println("Invalid password <a href='index.jsp'>try again</a>");
            }
        %>
    <body>
        <h1>Invalid Password</h1>
    </body>
</html>

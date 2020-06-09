<%-- 
    Document   : validatorLogout
    Created on : Jun 8, 2020, 5:40:50 PM
    Author     : nwrar
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
            
            session.invalidate();
            response.sendRedirect("/FormWisV2/homepage.jsp");
        %>
    </body>
</html>

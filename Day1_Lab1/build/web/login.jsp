<%-- 
    Document   : login
    Created on : Sep 19, 2020, 4:08:54 PM
    Author     : ASUS
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Login System</title>
    </head>
    <body>
        <h1>Login to System!</h1>
        <hr>
        <%
            String message = (String) request.getAttribute("message");
            if (message != null) {
        %>
        <h3><%= message%></h3>
        <%}
        %>
        <form action="LoginUserController" method="POST">
            Username:
            <input type="text" name="username" /><br><br>
            Password:
            <input type="password" name="password" /><br><br>
            <input type="submit" value="Login" />
            <input type="reset" value="Reset" />
        </form>
    </body>
</html>

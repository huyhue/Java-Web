<%-- 
    Document   : index
    Created on : Oct 1, 2020, 2:38:17 PM
    Author     : ASUS
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Login Page</title>
    </head>
    <body>
        <h1>Login Page</h1>
        <form action="Controller" method="POST">
            Username:<input type="text" name="txtUsername" value=""/><br><br>
            Password:<input type="password" name="txtPass" value=""/><br><br>
            <input type="submit" value="Login" name="btAction" />
            <input type="reset" value="Reset" />
        </form>
    </body>
</html>

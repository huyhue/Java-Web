<%-- 
    Document   : login
    Created on : Oct 22, 2020, 3:05:37 PM
    Author     : ASUS
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Login</title>
    </head>
    <body>
        <h1>Login Structs 2</h1>
        <form action="login" method="POST">
            Username: <input type="text" name="username"/> <br>
            Password: <input type="password" name="password"/><br>
            <input type="submit" value="Login" />
            <input type="reset" value="Reset" />
        </form>
    </body>
</html>

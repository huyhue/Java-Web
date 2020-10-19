<%-- 
    Document   : index.jsp
    Created on : Oct 19, 2020, 11:30:32 AM
    Author     : ASUS
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Filter Authentication</title>
    </head>
    <body>
        <form action="servlet1" method="POST">
            Name: <input type="text" name="name"/></br>
            Password: <input type="password" name="password"/></br>
            <input type="submit" value="login" />
        </form>
    </body>
</html>

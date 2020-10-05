<%-- 
    Document   : register
    Created on : Oct 1, 2020, 3:31:17 PM
    Author     : ASUS
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Register Page</title>
    </head>
    <body>
        <h1>Register Page</h1>
        <form action="Controller" method="POST">
            Username:<input type="text" name="txtUser" /><br><br>
            Password:<input type="password" name="txtPass" /><br><br>
            Name:<input type="password" name="txtName" /><br><br>
            Admin<input type="checkbox" name="chkAdmin" value="ADMIN"/><br><br>
            <input type="submit" value="Register" name="btAction" />
        </form>
    </body>
</html>

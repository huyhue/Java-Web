<%-- 
    Document   : cal
    Created on : Sep 17, 2020, 4:57:23 PM
    Author     : ASUS
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Calculator!</h1>
        <hr>
        <form action="CalculatorController">
            Number1: <input type="text" name="num1" value="" /><br><br>
            Number2: <input type="text" name="num2" value="" /><br><br>
            <input type="submit" value="+" name="action" />
            <input type="submit" value="-" name="action" />
            <input type="submit" value="*" name="action" />
            <input type="submit" value="/" name="action" />
        </form>
        
    </body>
</html>

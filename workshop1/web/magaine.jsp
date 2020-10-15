<%-- 
    Document   : add
    Created on : Oct 15, 2020, 1:51:57 PM
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
        <form action="Controller" method="POST">
            Id:<input type="text" name="id" /><br><br>
            Title: <input type="text" name="title" /><br><br>
            Publisher: <input type="text" name="publisher" /><br><br>
            Price: <input type="text" name="price" /><br><br>
            <input type="submit" value="Add" />
        </form>
    </body>
</html>

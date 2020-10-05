<%-- 
    Document   : pageDirective
    Created on : Sep 20, 2020, 11:16:37 PM
    Author     : ASUS
--%>

<%@page import="java.time.LocalDate"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Hello World!</h1>
        <h2>Now: <%= new java.util.Date() %></h2>
        <h2>New Now: <%= LocalDate.now() %></h2>
    </body>
</html>

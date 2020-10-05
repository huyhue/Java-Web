<%-- 
    Document   : simpleDate
    Created on : Sep 20, 2020, 3:35:26 PM
    Author     : ASUS
--%>

<%@page import="java.util.Date"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Simple Date Page</title>
    </head>
    <body>
        <h1>Hello World!</h1>
        <% Date now = new Date();%>
        <h1>Now: <%=  now %></h1>
    </body>
</html>

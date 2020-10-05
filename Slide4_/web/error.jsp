<%-- 
    Document   : error
    Created on : Sep 27, 2020, 11:07:32 AM
    Author     : ASUS
--%>
<%@page import="java.io.PrintWriter" %>
<%@page isErrorPage="true" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Error</h1>
        <%
            out.println("<a href='calculator.jsp'>Back</a>");
        %>
        <font color="red">
        <%= exception.toString()%>
        </font>
    </body>
</html>

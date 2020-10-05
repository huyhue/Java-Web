<%-- 
    Document   : ArrayList
    Created on : Sep 24, 2020, 1:30:05 PM
    Author     : ASUS
--%>

<%@page import="java.util.ArrayList"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Demo Array List Page</title>
    </head>
    <body>
        <h1>Array List</h1>
        <%
            ArrayList<Integer> ds = new ArrayList<Integer>();
            for (int i = 0; i < 10; i++) {
                ds.add(i);
            }
            for (int i = 0; i < 10; i++) {
                out.print(ds.get(i) + "   ");
            }
        %>
    </body>
</html>

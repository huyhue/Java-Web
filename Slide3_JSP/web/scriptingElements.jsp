<%-- 
    Document   : scriptingElements
    Created on : Sep 20, 2020, 3:38:45 PM
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
        <h1>Hello World!</h1>
        <%
            //Scriptlet
            for (int i = 0; i < 5; i++) {
                out.println("<h4> " + i + "</h4>");
            }
            int result = add(5, 6);
            out.println("<h2> Result: " + result + "</h2>");
        %>
        
        <!--Expression-->
        <%= "Tong Phuoc Gia Huy"%> <br>
        Logic expression: <%= 5 > 6 %>
        <%= name %>
        
        <!--Declaration-->
        <%! String name = "huyhue";
            int add(int a, int b) {
                return a + b;
            }
        %>
    </body>
</html>

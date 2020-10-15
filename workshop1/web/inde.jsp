<%-- dcd
    Document   : inde
    Created on : Oct 15, 2020, 1:43:37 PM
    Author     : ASUS
--%>

<%@page import="mvc.magaine"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>magaine Page</title>
    </head>
    <body>
        <table border="1">
            <thead>
                <tr>
                    <th>ID</th>
                    <th>Title</th>
                    <th>pulisher</th>
                    <th>price;</th>
                </tr>
            </thead>
            <tbody>
                <%
                    List<magaine> list = (List<magaine>) request.getAttribute("users");
                    if (list != null) {
                        for (magaine m : list) {
                %>                 
                <tr>
                    <td><%= m.getId() %></td>
                    <td><%= m.getTitle()%></td>
                    <td><%= m.getPublisher()%></td>
                    <td><%= m.getPrice()%></td>
                </tr>
                <%
                        }
                    }
                %>
      
                
            </tbody>
        </table>
           <a href="magaine.jsp">AddNew</a>    
    </body>
</html>

<%-- 
    Document   : search
    Created on : Sep 19, 2020, 4:31:29 PM
    Author     : ASUS
--%>

<%@page import="java.util.List"%>
<%@page import="edu.fud.model.User"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Search User</title>
    </head>
    <body>
        <h1>Search User!</h1>
        <hr>
        <form action="SearchUserController" method="POST">
            Name:
            <input type="text" name="name" value="" />
            <input type="submit" value="Search" />
        </form>
        <hr>
        <table border="1">
            <thead>
                <tr>
                    <th>Username</th>
                    <th>Name</th>
                    <th>Gender</th>
                    <th>&nbsp;</th>
                </tr>
            </thead>
            <tbody>
                <%
                    List<User> list = (List<User>) request.getAttribute("users");
                    if (list != null) {
                        for (User user : list) {
                %>                 
                <tr>
                    <td><%= user.getUsername()%></td>
                    <td><%= user.getName()%></td>
                    <td><%= user.getPassword()%></td>
                    <td>
                        <a href="EditUserController?username=<%= user.getUsername()%>">Edit</a>
                        <a href="DeleteUserController?username=<%= user.getUsername()%>">Delete</a>
                    </td>
                </tr>
                <%
                        }
                    }
                %>
            </tbody>
        </table>
    </body>
</html>

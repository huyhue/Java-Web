<%-- 
    Document   : editUser
    Created on : Sep 19, 2020, 11:42:56 AM
    Author     : ASUS
--%>

<%@page import="edu.fud.model.User"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Edit User</title>
    </head>
    <body>
        <%
            User user = (User) request.getAttribute("user");  //lấy thuộc tính từ Servlet
        %>
        <h1>Edit User!</h1>
        <hr>
        <form action="EditUserController" method="POST">
            Username:
            <input type="text" name="username" value="<%= user.getUsername() %>" />
            Name:
            <input type="text" name="name" value="<%= user.getName() %>" /><br><br>
            Password:
            <input type="password" name="password" value="<%= user.getPassword() %>" /><br><br>
            Gender:
            <input type="radio" name="gender" value="<%= user.isGender() %>" <%= user.isGender()? "checked" : "" %> />Male
            <input type="radio" name="gender" value="<%= !user.isGender() %>" <%= !user.isGender()? "checked" : "" %> />Female
            <br><br>
            <input type="submit" value="Update" />
        </form>
    </body>
</html>

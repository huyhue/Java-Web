<%-- 
    Document   : list
    Created on : Oct 30, 2020, 10:41:09 PM
    Author     : ASUS
--%>

<%@page import="java.util.List"%>
<%@page import="edu.poly.models.Customers"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>List All Customers By Hibernate</h1>
        <table border="1">
            <thead>
                <tr>
                    <th>Customer ID</th>
                    <th>Name</th>
                    <th>Email</th>
                    <th>Tel</th>
                    <th>&nbsp;</th>
                </tr>
            </thead>
            <tbody>
                <%
                    List<Customers> customers = (List<Customers>) request.getAttribute("customers");
                    if (customers != null) {
                            for (Customers cus : customers) {
                    %>
                <tr>
                    <td><%=cus.getCustomerId()%></td>
                    <td><%=cus.getName()%></td>
                    <td><%=cus.getEmail()%></td>
                    <td><%=cus.getTel()%></td>
                    <td>
                        <a href="EditCustomerController?id=<%=cus.getCustomerId()%>">Edit</a>
                        <a href="DeleteCustomerController?id=<%=cus.getCustomerId()%>">Delete</a>
                    </td>
                </tr>
                <% }
                   }%>
            </tbody>
        </table>
    </body>
</html>

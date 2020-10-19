<%-- dcd
    Document   : inde
    Created on : Oct 15, 2020, 1:43:37 PM
    Author     : ASUS
--%>

<%@page import="java.util.List"%>
<%@page import="mvc.database"%>
<%@page import="mvc.magaine"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css" integrity="sha384-TX8t27EcRE3e/ihU7zmQxVncDAy5uIKz4rEkgIXeMed4M0jlfIDPvg6uqKI2xXr2" crossorigin="anonymous">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Magazine Page</title>
    </head>
    <body>
        <%
            Integer hitsCount = (Integer) application.getAttribute("hitCounter");
            if (hitsCount == null || hitsCount == 0) {
                /* First visit */
                out.println("Welcome to my website!");
                hitsCount = 1;
            } else {
                /* return visit */
                out.println("Welcome back to my website!");
                hitsCount += 1;
            }
            application.setAttribute("hitCounter", hitsCount);
        %>
        <div class="container">
            <h1 class="text-center">List Magazine</h1>
            <table class="table">
                <thead class="thead-dark">
                    <tr>
                        <th scope="col">ID</th>
                        <th scope="col">Title</th>
                        <th scope="col">Pulisher</th>
                        <th scope="col">Price</th>
                    </tr>
                </thead>
                <tbody>
                    <%
                        database d = new database();
                        List<magaine> list = d.getAll();

                        for (magaine m : list) {
                    %>  
                    <tr>
                        <th scope="row"><%= m.getId()%></th>
                        <td><%= m.getTitle()%></td>
                        <td><%= m.getPublisher()%></td>
                        <td><%= m.getPrice()%></td>
                    </tr>
                    <%

                        }
                    %>
                </tbody>
            </table>              
            <a class="btn btn-primary btn-block" href="magaine.jsp" role="button">Add New</a>
            <center>
                <p>Total number of visits: <%= hitsCount%></p>
            </center>
        </div>

    </body>
</html>

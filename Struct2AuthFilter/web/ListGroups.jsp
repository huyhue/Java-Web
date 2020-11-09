<%@page import="edu.fud.model.Group"%>
<%@page import="java.util.List"%>
<%@page import="edu.fud.dao.DBDao"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css" integrity="sha384-TX8t27EcRE3e/ihU7zmQxVncDAy5uIKz4rEkgIXeMed4M0jlfIDPvg6uqKI2xXr2" crossorigin="anonymous">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>List Group Page</title>
    </head>
    <body>
        <div class="container">
            <h1 class="text-center">List Of Group</h1>
            <table class="table">
                <thead class="thead-dark">
                    <tr>
                        <th scope="col">ID</th>
                        <th scope="col">Group Name</th>
                        <th scope="col">Description</th>
                    </tr>
                </thead>
                <tbody>
                    <%
                        DBDao d = new DBDao();
                        List<Group> list = d.findAllGroup();

                        for (Group g : list) {
                    %>  
                    <tr>
                        <th scope="row"><%=g.getId()%></th>
                        <td><%= g.getGroup()%></td>
                        <td><%= g.getDescription()%></td>
                    </tr>
                    <%
                        }
                    %>
                </tbody>
            </table>              
            <a class="btn btn-secondary" href="AddGroup.jsp" role="button">Add Group</a>
            <a class="btn btn-primary" href="ListContacts.jsp" role="button">List Contact</a>
       </div>
    </body>
</html>

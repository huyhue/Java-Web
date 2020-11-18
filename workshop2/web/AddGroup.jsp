<%-- 
    Document   : add
    Created on : Oct 15, 2020, 1:51:57 PM
    Author     : ASUS
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css" integrity="sha384-TX8t27EcRE3e/ihU7zmQxVncDAy5uIKz4rEkgIXeMed4M0jlfIDPvg6uqKI2xXr2" crossorigin="anonymous">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Add Group Page</title>
    </head>
    <body>
        <div class="container">
            <h1 class="text-center">Add a Group</h1>
            <form action="addGroup" method="POST">
                <div class="form-group">
                    <label for="">Name:</label>
                    <input type="text" class="form-control" name="name" >
                </div>
                <div class="form-group">
                    <label for="">Description:</label>
                    <input type="text" class="form-control" name="description" >
                </div>
                <button type="submit" class="btn btn-primary">Add</button>
                <a href="ListGroups.jsp " class="btn btn-secondary active" role="button" aria-pressed="true">Return To Group List</a>
            </form>
        </div>
    </body>
</html>

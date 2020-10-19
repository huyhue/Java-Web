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
        <title>Add New Page</title>
    </head>
    <body>
        <div class="container">
            <h1 class="text-center">Add New Magazine</h1>
            <form action="Controller" method="POST">
            <div class="form-group">
                <label for="">ID:</label>
                <input type="text" class="form-control" name="id" >
            </div>
            <div class="form-group">
                <label for="">Title:</label>
                <input type="text" class="form-control" name="title" >
            </div>
            <div class="form-group">
                <label for="">Publisher:</label>
                <input type="text" class="form-control" name="publisher" >
            </div>
            <div class="form-group">
                <label for="">Price:</label>
                <input type="text" class="form-control" name="price" >
            </div>
            <button type="submit" class="btn btn-primary">Add New</button>
        </form>
        </div>
        
    </body>
</html>

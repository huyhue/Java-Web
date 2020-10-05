<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Welcome Page</title>
    </head>
    <body>
        <font color="red">
        Welcome, ${sessionScope.USER}
        </font>
        <h1>Welcome to MVC World</h1>
        <form action="Controller" method="POST">
            Name
            <input type="text" name="txtSearch" /><br><br>
            <input type="submit" value="Search" name="btAction" />

        </form>
    </body>
</html>

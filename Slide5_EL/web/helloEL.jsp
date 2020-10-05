<%-- 
    Document   : helloEL
    Created on : Sep 21, 2020, 10:42:21 PM
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
        <ul>
            <li>5 + 6 = ${5 + 6}</li>
            <li>5 - 6 = ${5 - 6}</li>
            <li>5 * 6 = ${5 * 6}</li>
            <li>5 / 6 = ${5 / 6}</li>
            <!--http://localhost:8080/Slide5_EL/helloEL.jsp?name=HUYhue&age=7-->
            <li>Name: ${param.name}</li>
            <li>Age: ${param.age}</li>
        </ul>
        <h1>Calculator</h1>
        <form>
            So1: <input type="text" name="txtNum1" value="${param.txtNum1}" />
            So2: <input type="text" name="txtNum2" value="${param.txtNum2}" />
            <input type="submit" value="Cong" />
            <h1>Tong 2 so: ${param.txtNum1+param.txtNum2}</h1>
        </form>
    </body>
</html>

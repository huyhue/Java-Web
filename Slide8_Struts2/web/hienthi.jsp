<%-- 
    Document   : hienthi
    Created on : Oct 22, 2020, 1:49:54 PM
    Author     : ASUS
--%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1><font color="red">Hien thi ket qua</font></h1>
        <h1><font color="blue">THONG TIN SAN PHAM!</font></h1>
        <c:forEach var="sp" items="${dssp}">
            Ma san pham: ${sp.maSp} <br>
            Ten san pham: ${sp.tenSp} <br>
            Gia: ${sp.gia} <br>
            =======================================<br>
        </c:forEach>

    </body>
</html>

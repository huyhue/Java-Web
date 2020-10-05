<%-- 
    Document   : coreTagDemo
    Created on : Sep 21, 2020, 11:01:26 PM
    Author     : ASUS
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Core Tag Demo</title>
    </head>
    <body>
        <c:set var="num" value="2" />
        <c:choose>
            <c:when test="${num == 2}"><p>Mon</p></c:when>
            <c:when test="${num == 3}"><p>Tue</p></c:when>
            <c:when test="${num == 4}"><p>Web</p></c:when>
            <c:otherwise><p>Invalid number</p></c:otherwise>
        </c:choose>
        <hr>

        <c:forEach var="item" begin="0" end="10" step="1">
            <p>${item}</p>
        </c:forEach>

        <c:set var="names" value="PHP;Java;C;Kotlin" />
        <p>
            <c:forTokens var="it" items="${names}" delims=";">
                ${it} -
            </c:forTokens>
        </p>
    </body>
</html>

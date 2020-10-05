<%-- 
    Document   : helloJSTL
    Created on : Sep 21, 2020, 10:50:43 PM
    Author     : ASUS
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSTL Page</title>
    </head>
    <body>
        <c:set var="num" value="20" scope="page"/>
        <p>Number: <c:out value="${num}"/></p>

        <c:if test="${num % 2 == 0}">
            <p>Even</p>
        </c:if>
        <c:if test="${num % 2 != 0}">
            <p>Odd</p>
        </c:if>

        <c:catch var="ex">
            Divide: <c:out value="${10 / param.num}"/>
            <%
                int a = 0;
                int c = 10 / a;
            %>
        </c:catch></br>
        <c:if test="${ex != null}">
            Exception: ${ex}
        </c:if>

        <h1>Core tag</h1>
        <form>
            So1: <input type="text" name="txtNum1" value="${param.txtNum1}" />
            So2: <input type="text" name="txtNum2" value="${param.txtNum2}" />
            <c:catch var="er">
                <c:if test="${not empty param.txtNum1 and not empty param.txtNum2}">
                    <c:set var="kq" value="${param.txtNum1/param.txtNum2}"/>
                    Ket qua: <c:out value="${kq}"/><br/>
                </c:if>
            </c:catch>
            <input type="submit" value="Chia" />
            <c:if test="${not empty er}">
                Error:<c:out value="${er}"/>
                <%--<c:redirect url="..."/>--%>
            </c:if>
        </form>
    </body>
</html>

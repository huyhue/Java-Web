<%-- 
    Document   : index
    Created on : Oct 22, 2020, 1:37:18 PM
    Author     : ASUS
--%>
<%@taglib prefix="s" uri="/struts-tags" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <s:a action="hello">Hello</s:a> <br>
        <s:a action="hienthi">Hien thi</s:a><br>
        <s:a action="dangki">Dang Ki</s:a><br>
        <s:a href="dangki.jsp">Dang Ki</s:a><br>
    </body>
</html>

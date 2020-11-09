<%-- 
    Document   : dangki
    Created on : Oct 28, 2020, 10:20:15 AM
    Author     : ASUS
--%>
<%@taglib prefix="s" uri="/struts-tags" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Dang ki Page</title>
    </head>
    <body>
        <s:form method="post" action="dangki">
            <input type="text" class="form-control" name="tk.username" >
            <s:textfield label="Username" name="tk.username"></s:textfield><br>
            <s:password label="Password" name="tk.password"></s:password><br>
            <s:textfield label="Ho ten" name="tk.hoten"></s:textfield><br>
            <s:textfield label="Email" name="tk.email"></s:textfield><br>
            <s:textfield label="Website" name="tk.website"></s:textfield><br>
            <s:textfield label="DiemTB" name="tk.dtb"></s:textfield><br>
            <s:submit value="Save"></s:submit>
        </s:form>
    </body>
</html>

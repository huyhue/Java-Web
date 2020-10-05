<%-- 
    Document   : template
    Created on : Sep 20, 2020, 11:21:24 PM
    Author     : ASUS
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Bean in JSP</title>
    </head>
    <body>
        <jsp:useBean id="pro" class="edu.fud.beans.Product" scope="request" />
        <jsp:setProperty name="pro" property="productId" value="100"/>

        <h3>
            Product ID:  <jsp:getProperty name="pro" property="productId"/>
        </h3>
        <h4>Product ID in Scriptlet:
            <%
                out.println(pro.getProductId());
            %>
        </h4>
            
            
            
<%-- 
        <!--Code them khong chay duoc, chi note thoi-->
        <jsp:useBean id="login" class="edu.fud.beans.LoginBean" scope="session" />
        <jsp:setProperty name="login" property="*"/>
        <% // if (login.isCheckLogin()) { %>
       <jsp:forward page="welcome.jsp"/>
        <% } else { %>
        <h2>Sai thong tin dang nhap</h2>
        <% }%>

        <!--Ben trang welcome.jsp-->
        <jsp:useBean id="login" class="edu.fud.beans.LoginBean" scope="session" />
        WELCOME: <jsp:getProperty name="login" property="*lastname"/>
--%>


    </body>
</html>

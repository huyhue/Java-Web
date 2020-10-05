<%-- 
    Document   : calculator
    Created on : Sep 27, 2020, 11:07:56 AM
    Author     : ASUS
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page errorPage="error.jsp" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Calculator</h1>
        <form action="calculator.jsp" method="post">
            So 1 : <input type="text" name="n1" value="" />
            So 2 : <input type="text" name="n2" value="" />
            <input type="submit" value="Chia" />
        </form>
        <%
            String so1 = request.getParameter("n1");
            String so2 = request.getParameter("n2");
            if (so1!=null&&so2!=null) {
                    int n1 = Integer.parseInt(so1);
                    int n2 = Integer.parseInt(so2);
                    int kq =n1/n2;
                    out.print("Ket qua: "+kq);
                }
            %>
    </body>
</html>

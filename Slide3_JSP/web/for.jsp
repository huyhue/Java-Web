<%-- 
    Document   : for
    Created on : Sep 24, 2020, 1:34:23 PM
    Author     : ASUS
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>FOR Page</title>
    </head>
    <body>
        <form name="for_n" method="get">
            Nhap n: <input type="text" name="soLuong"><br><br>
            <input type="submit" value="Phat sinh" name="bt"><br><br>
            <%
                String s = request.getParameter("soLuong");

                if (s != null) {
                    int n = Integer.parseInt(s);
                    for (int i = 0; i < n; i++) {
                        out.print("<b>" + i + "</b>");
                        out.print("<br>");
                    }
                } else {
                    out.print("<b>Nhap lai n !!!</b>");
                }
            %>
        </form>
    </body>
</html>

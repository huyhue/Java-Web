<%-- 
    Document   : index
    Created on : Sep 24, 2020, 3:07:06 PM
    Author     : ASUS
--%>

<%@page import="java.util.List"%>
<%@page import="edu.fud.model.Product"%>
<%@page import="edu.fud.model.productsDAO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Table San Pham</title>
    </head>
    <body>
        <h1>SAN PHAM</h1>
        <table border="1">
            <tr>
                <td>Code</td>
                <td>Name</td>
                <td>Price</td>
            </tr>
            <%
                productsDAO dsSanPham = new productsDAO();
                List<Product> list = dsSanPham.showProduct("");
                for (Product sp : list) {
                    out.print("<tr>"
                            + "<td>" + sp.getCode() + "</td>"
                            + "<td>" + sp.getName() + "</td>"
                            + "<td>" + sp.getPrice() + "</td>"
                            + "</tr>");
                }
            %>
    </table>
</body>
</html>

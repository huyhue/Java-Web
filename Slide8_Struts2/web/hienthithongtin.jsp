<%-- 
    Document   : hienthithongtin
    Created on : Oct 28, 2020, 10:20:43 AM
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
        <h1><font color="blue">THONG TIN TAI KHOAN</font></h1>
        Username: ${tk.username}<br>
        Password: ${tk.password}<br>
        Ho Ten: ${tk.hoten}<br>
        Email: ${tk.email}<br>
        Website: ${tk.website}<br>
        Diem trung binh: ${tk.dtb}<br>
    </body>
</html>

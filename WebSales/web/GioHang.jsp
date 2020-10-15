<%@page import="model.KhachHang"%>
<%@page import="dao.GioHangDAO"%>
<%@page import="model.SanPham"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
         pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
        <title>Giỏ hàng của bạn</title>
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="" crossorigin="anonymous">

        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap-theme.min.css" integrity="" crossorigin="anonymous">

        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js" integrity="" crossorigin="anonymous"></script>
    </head>
    <body>
        <center>
            <div class="container" id="">
                <div class="row">
                    <!--  <table id="datatable-buttons" class="table table-striped table-bordered">-->
<!--                    <center><h1>Giỏ hàng của <%
                        KhachHang kh = (KhachHang) session.getAttribute("khachHang");
                        if (kh != null) {
                            out.print(kh.getName());
                        }

                            %></h1></center>-->
                    <p style="text-align: center">
                    <div class="col-lg-6 col-lg-push-3">
                        <div class="input-group">
                            <span class="input-group-btn">
                                <a href="index.jsp"><button type="button" class="btn btn-primary" aria-label="Right Align">
                                        <span class="glyphicon glyphicon-plus" aria-hidden="true"></span>Tiếp tục mua hàng
                                    </button></a>
                            </span>
                        </div>
                    </div>

                    </p><br>
                    <%ArrayList<SanPham> gioHang = new GioHangDAO().getGioHang();
                    %>

                    <table class="table table-hover">
                        <thead>
                            <tr>
                                <th>STT</th>
                                <th>Mã sản phẩm</th>
                                <th>Tên sản phẩm</th>
                                <th>Giá</th>
                                <th>Hình ảnh</th>
                                <th>Số lượng</th>
                                <th>Thao tác</th>
                            </tr>
                        </thead>
                        <tbody>
                            <%int count = 0;
                                for (int i = 0; i < gioHang.size(); i++) {
                                    count++;%>
                            <tr>
                                <th scope="row"><% out.print(count);%></th>
                                <td><%out.print(gioHang.get(i).getMaSanPham()); %></td>
                                <td><%out.print(gioHang.get(i).getTenSanPham()); %></td>
                                <td><%out.print(gioHang.get(i).getGiaSanPham()); %></td>
                                <td><%out.print(gioHang.get(i).getHinhAnh()); %></td>
                                <td><%out.print(gioHang.get(i).getSoLuongMua());%></td>

                                <td>
                                    <a href="XuLyXoaSP?maSanPham=<%=gioHang.get(i).getMaSanPham()%>">
                                        <button type="button" class="btn btn-danger" aria-label="Right Align">
                                            <span class="glyphicon glyphicon-trash" aria-hidden="true"></span>
                                        </button></a>
                                </td>
                            </tr>
                            <%}%>
                        </tbody>
                    </table>
                    <br><br>
                    <a href="DangXuat">
                        <button type="button" class="btn btn-danger" aria-label="Right Align">
                            <span class="glyphicon glyphicon-user" aria-hidden="true"></span> Đăng xuất
                        </button></a>
                </div>
            </div>
        </center>
    </body>
</html>
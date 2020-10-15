<%@page import="dao.KhachHangDAO"%>
<%@page import="model.KhachHang"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
         pageEncoding="utf-8"%>
<%	String id = request.getParameter("id");
    KhachHang kh = KhachHangDAO.mapKhachHang.get(id);
%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8">
        <title>Thông tin khách hàng</title>
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.0/jquery.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
        <!-- Bootstrap -->
        <link href="vendors/bootstrap/dist/css/bootstrap.min.css"
              rel="stylesheet">
        <!-- Font Awesome -->
        <link href="vendors/font-awesome/css/font-awesome.min.css"
              rel="stylesheet">

    </head>
    <body>
        <div class="container">
            <div class="row">
                <h2>
                    <strong>Thông tin khách hàng</strong>
                    <a href="myAccount.jsp" style="float: right"> <button class="btn btn-success btn-sm" ><i class="fa fa-undo" aria-hidden="true"></i> Trở về</button></a>
                </h2>
                <hr>
            </div>
            <div class="">
            </div>
            <form class="form-horizontal" >
                <div class="modal-body" >
                    <div class="form-group">
                        <label class="control-label col-sm-4" for=""><span class=""></span> Tên Khách hàng:</label>
                        <div class="col-sm-8">
                            <%out.print(kh.getTen()); %>
                        </div>
                    </div>  
                    <div class="form-group">
                        <label class="control-label col-sm-4" for=""><span class=""></span> Tài khoản:</label>
                        <div class="col-sm-8">
                            <%out.print(kh.getTaiKhoan()); %>
                        </div>
                    </div>  
                    <div class="form-group">
                        <label class="control-label col-sm-4" for=""><span class=""></span>Email:</label>
                        <div class="col-sm-8">
                            <%out.print(kh.getEmail()); %>
                        </div>
                    </div>  
                    <div class="form-group">
                        <label class="control-label col-sm-4" for=""><span class=""></span>Giới tính:</label>
                        <div class="col-sm-8">
                            <%out.print(kh.getGioiTinh()); %>
                        </div>
                    </div>  
                    <div class="form-group">
                        <label class="control-label col-sm-4" for=""><span class=""></span>Ngày sinh:</label>
                        <div class="col-sm-8">
                            <%out.print(kh.getNgaySinh()); %>
                        </div>
                    </div>  
                    <div class="form-group">
                        <label class="control-label col-sm-4" for=""><span class=""></span> Số điện thoại:</label>
                        <div class="col-sm-8">
                            <%out.print(kh.getSoDienThoai());%>
                        </div>
                    </div>   
                    <div class="form-group">
                        <label class="control-label col-sm-4" for=""><span class=""></span>Địa chỉ:</label>
                        <div class="col-sm-8">
                            <%out.print(kh.getDiaChi());%>
                        </div>
                    </div>   
                    <div class="form-group">
                        <label class="control-label col-sm-4" for=""><span class=""></span>Vai trò:</label>
                        <div class="col-sm-8">
                            <%out.print(kh.getRole());%>
                        </div>
                    </div>   

                </div>
            </form>
        </div>
    </body>

    <!-- jQuery -->
    <script src="vendors/jquery/dist/jquery.min.js"></script>
    <!-- Bootstrap -->
    <script src="vendors/bootstrap/dist/js/bootstrap.min.js"></script>
    <!-- FastClick -->

    <!-- Custom Theme Scripts -->
    <script src="build/js/custom.min.js"></script>

    <!-- Script modal -->

</html>
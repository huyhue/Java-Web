<%@page import="dao.OrderDAO"%>
<%@page import="model.Order"%>
<%@page import="dao.KhachHangDAO"%>
<%@page import="model.KhachHang"%>
<%@page import="java.util.ArrayList"%>
<%@page import=" java.util.HashMap"%>
<%@page import=" java.util.Map"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
         pageEncoding="utf-8"%>

<%
    KhachHang kh = (KhachHang) session.getAttribute("userlogin");
    Map<String, Order> mapList = OrderDAO.mapOrder;
%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.0/jquery.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

        <!-- Bootstrap -->
        <link href="vendors/bootstrap/dist/css/bootstrap.min.css"
              rel="stylesheet">
        <!-- Font Awesome -->
        <link href="vendors/font-awesome/css/font-awesome.min.css" rel="stylesheet">

        <!-- Datatables -->
        <link href="vendors/datatables.net-bs/css/dataTables.bootstrap.min.css" rel="stylesheet">
        <link href="vendors/datatables.net-buttons-bs/css/buttons.bootstrap.min.css" rel="stylesheet">
        <link href="vendors/datatables.net-fixedheader-bs/css/fixedHeader.bootstrap.min.css" rel="stylesheet">
        <link href="vendors/datatables.net-responsive-bs/css/responsive.bootstrap.min.css" rel="stylesheet">
        <link href="vendors/datatables.net-scroller-bs/css/scroller.bootstrap.min.css" rel="stylesheet">
        <style type="text/css">
            th {
                text-align: center;
            }

            .modal-header,
            h4,
            .close {
                background-color: #5cb85c;
                color: white !important;
                text-align: center;
                font-size: 30px;
            }

            .modal-footer {
                background-color: #f9f9f9;
            }
        </style>

        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
        <script src="importExcel/agu.js"></script>
        <script src="importExcel/xlsx.js"></script>
        <script src="importExcel/xlsx-model.js"></script>
        <script src="importExcel/script.js"></script>
        <script src="https://code.jquery.com/jquery-3.2.1.min.js"></script>
        <script src="https://code.jquery.com/jquery-3.2.1.min.js"></script>
        <script type="text/javascript">

            $(document).ready(function () {
                $('#btn').on('click', function () {
                    var val = $('pre').text();
                    alert(val.split(",")[0]);
                });
            });
        </script>

    </head>
    <body>
        <div class="container">
            <div class="row">

                <div class="input-group">
                    <span class="input-group-btn">
                        <a href="index.jsp"><button type="button" class="btn btn-primary mr-3" aria-label="Right Align">
                                <span class="glyphicon glyphicon-plus" aria-hidden="true"></span>Tiếp tục mua hàng
                            </button></a>
                        <a href="cart.jsp"><button type="button" class="btn btn-danger" aria-label="Right Align">
                                <span class="glyphicon glyphicon-cart" aria-hidden="true"></span>Xem giỏ hàng
                            </button></a>
                    </span>
                </div>
                <h2>
                    <strong>Thông tin cá nhân của bạn</strong>
                </h2>
            </div>

            <div class="row">

                <form class="form-horizontal" >
                    <div class="modal-body" >
                        <div class="form-group">
                            <label class="control-label col-sm-4" for=""><span class=""></span>Username:</label>
                            <div class="col-sm-8">
                                <%out.print(kh.getTaiKhoan()); %>
                            </div>
                        </div>  
                        <div class="form-group">
                            <label class="control-label col-sm-4" for=""><span class=""></span>Name:</label>
                            <div class="col-sm-8">
                                <%out.print(kh.getTen()); %>
                            </div>
                        </div>  
                        <div class="form-group">
                            <label class="control-label col-sm-4" for=""><span class=""></span>Password:</label>
                            <div class="col-sm-8">
                                <%out.print(kh.getMatKhau());%>
                            </div>
                        </div>  
                        <div class="form-group">
                            <label class="control-label col-sm-4" for=""><span class=""></span>Gender:</label>
                            <div class="col-sm-8">
                                <%out.print(kh.getGioiTinh());%>
                            </div>
                        </div>   
                        <div class="form-group">
                            <label class="control-label col-sm-4" for=""><span class=""></span>Telephone number:</label>
                            <div class="col-sm-8">
                                <%out.print(kh.getSoDienThoai());%>
                            </div>
                        </div>   
                        <div class="form-group">
                            <label class="control-label col-sm-4" for=""><span class=""></span>Email</label>
                            <div class="col-sm-8">
                                <%out.print(kh.getNgaySinh());%>
                            </div>
                        </div>   
                        <div class="form-group">
                            <label class="control-label col-sm-4" for=""><span class=""></span>Address</label>
                            <div class="col-sm-8">
                                <%out.print(kh.getDiaChi());%>
                            </div>
                        </div>   


                    </div>
                </form>
            </div>
            <div class="row">
                <h2 class="text-center text-info text-uppercase">Đơn hàng đã đặt của bạn</h2>

                <%
                    int count = 0;
                    for (Order o : mapList.values()) {
                        count++;
                %>
                <div class="card border-success bg-danger col-md-4">
                    <div class="card-header">
                        <h1 class="card-title">Đơn hàng số <%= count%></h1>
                    </div>
                    <div class="card-body">
                        <ul class="list-group">
                            <li class="list-group-item list-group-item-info">OrderID: <%= o.getOrderID()%></li>
                            <li class="list-group-item list-group-item-info">ProductID: <%= o.getProductID()%></li>
                            <li class="list-group-item list-group-item-info">CustomerID: <%= o.getCustomerID()%></li>
                            <li class="list-group-item list-group-item-info">Date: <%= o.getDate()%></li>
                            <li class="list-group-item list-group-item-danger">Total Price: <%= o.getTotalPrice()%></li>
                        </ul>
                        <a href="" class="card-link">Theo dõi đơn hàng</a>
                    </div>
                    <div class="card-footer">
                        <p class="card-text text-center"><small>Bạn đã đặt hàng 10 phút trước</small></p>
                    </div>
                </div>
                <%}%>


            </div>    

        </div>

    </body>

    <!-- jQuery -->
    <script src="vendors/jquery/dist/jquery.min.js"></script>
    <!-- Bootstrap -->
    <script src="vendors/bootstrap/dist/js/bootstrap.min.js"></script>
    <!-- FastClick -->

    <!-- Datatables -->
    <script src="vendors/datatables.net/js/jquery.dataTables.min.js"></script>
    <script src="vendors/datatables.net-bs/js/dataTables.bootstrap.min.js"></script>
    <script
    src="vendors/datatables.net-buttons/js/dataTables.buttons.min.js"></script>
    <script
    src="vendors/datatables.net-buttons-bs/js/buttons.bootstrap.min.js"></script>
    <script src="vendors/datatables.net-buttons/js/buttons.flash.min.js"></script>
    <script src="vendors/datatables.net-buttons/js/buttons.html5.min.js"></script>
    <script src="vendors/datatables.net-buttons/js/buttons.print.min.js"></script>

    <!-- Custom Theme Scripts -->
    <script src="build/js/custom.min.js"></script>



</html>
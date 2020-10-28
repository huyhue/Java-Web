<%@page import="java.util.Set"%>
<%@page import="dao.KhachHangDAO"%>
<%@page import="model.KhachHang"%>
<%@page import="java.util.ArrayList"%>
<%@page import=" java.util.HashMap"%>
<%@page import=" java.util.Map"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
         pageEncoding="utf-8"%>

<%
    //ArrayList<KhachHang> listCustomer = new KhachHangDAO().getKh(); 
//    HttpSession session2 = request.getSession();
    Map<String, KhachHang> mapListKhachHang = KhachHangDAO.mapKhachHang;
    Set<String> setKH = KhachHangDAO.loadRole;
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
                <h2>
                    <strong>Quản lý khách hàng</strong>
                </h2>
            </div>
            <div class="row">
                <div class="dropdown col-md-4">
                    <button class="btn btn-danger dropdown-toggle" type="button" data-toggle="dropdown">Chọn vai trò
                        <span class="caret"></span></button>
                    <ul class="dropdown-menu">
                        <% for (String kh : setKH) {%>
                        <li><a href="Dropdown?chucNang=KhachHang&role=<%=kh%>"><%=kh%></a></li>
                            <%} %>			 
                        <li class="divider"></li>
                        <li><a href="Dropdown?chucNang=AllKhachHang">Tất cả</a></li>
                    </ul>
                    <a href="thongKe/hienthi.jsp"><button class="btn btn-warning" type="button">Thống kê doanh thu</button></a>
                </div> 
                <div class="col-md-4">
                    <jsp:include page="search/searchTaikhoan.jsp"></jsp:include>
                    </div>
                    <div class="col-md-4">
                        <a href="customer.jsp?chucNang=Add"><button class="btn btn-sm btn-success" id="Them"><span class="glyphicon glyphicon-plus"></span>Thêm khách hàng</button></a>
                    </div>
                    <div class="col-md-12">
                        <table id="datatable-buttons" class="table table-striped table-bordered">
                            <thead>
                                <tr>
                                    <th>STT</th>
                                    <th>Tên</th>
                                    <th>Tài khoản</th>
                                    <th>Số điện thoại</th>
                                    <th>Vai trò</th>
                                    <th>Xóa</th>
                                    <th>Sửa</th>
                                    <th>Thông tin</th>
                                </tr>
                            </thead>

                            <tbody>
                            <%
                                int count = 0;
                                for (KhachHang kh : mapListKhachHang.values()) {
                                    count++;
                            %>
                            <tr>
                                <td>
                                    <%=count%>
                                </td>
                                <td>
                                    <%= kh.getTen()%>
                                </td>
                                <td>
                                    <%=kh.getTaiKhoan()%>
                                </td>
                                <td>
                                    <%=kh.getSoDienThoai()%>
                                </td>
                                <td>
                                    <%=kh.getRole()%>
                                </td>
                                <td>
                                    <a href="Process?chucNang=Delete&id=<%=kh.getTaiKhoan()%>">
                                        <button type="button" class="btn btn-sm btn-danger" id="" aria-label="Right Align">
                                            <span class="glyphicon glyphicon-trash" aria-hidden="true"></span>
                                        </button>
                                    </a>
                                </td>
                                <td> <a href="customer.jsp?id=<%=kh.getTaiKhoan()%>&chucNang=Edit"><button type="button" class="btn  btn-sm btn-warning"
                                                                                                           aria-label="Right Align">
                                            <span class="glyphicon glyphicon-edit"></span>
                                        </button></a>
                                </td>
                                <td> <a href="customer.jsp?id=<%=kh.getTaiKhoan()%>&chucNang=Info"><button type="button" class="btn  btn-sm btn-primary"
                                                                                                           aria-label="Right Align">
                                            <span class="glyphicon glyphicon-info-sign" ></span>
                                        </button></a>
                                </td>
                            </tr>
                            <%
                                }
                            %>
                        </tbody>
                    </table>
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
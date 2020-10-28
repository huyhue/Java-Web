<%@page import="model.Order"%>
<%@page import="java.util.HashMap"%>
<%@page import="dao.ThongKeDAO"%>
<%@page import="java.util.Map"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Thống kê theo khoảng ngày</title>
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
        <link href="../vendors/datatables.net-bs/css/dataTables.bootstrap.min.css" rel="stylesheet">
        <link href="../vendors/datatables.net-buttons-bs/css/buttons.bootstrap.min.css" rel="stylesheet">
        <link href="../vendors/datatables.net-fixedheader-bs/css/fixedHeader.bootstrap.min.css" rel="stylesheet">
        <link href="../vendors/datatables.net-responsive-bs/css/responsive.bootstrap.min.css" rel="stylesheet">
        <link href="../vendors/datatables.net-scroller-bs/css/scroller.bootstrap.min.css" rel="stylesheet">
    </head>
    <body>
        <div class="container">
            <div class="row">
                <jsp:include page="header1.jsp"></jsp:include>
                </div>
                <div class="row">
                    <form action="ThongKeDoanhThu?action=KhoangNgay" method="post">
                        <div class="col-sm-3">
                            <h1>Từ ngày:</h1>
                            <input type="date" name="ngayBatDau">
                        </div>
                        <div class="col-sm-3">
                            <h1>Đến ngày:</h1>
                            <input type="date" name="ngayKetThuc">
                            <button class="btn btn-sm btn-defaut" type="submit">Thống kê</button>
                        </div>
                    </form>
                </div>
                <div class="row" style="float:right">
                    <button class="btn btn-info btn-sm" data-toggle="modal" data-target="#bieudotheokngay">Xem biểu đồ</button>
                    <div class="modal fade" id="bieudotheokngay" role="dialog">
                        <div class="modal-dialog">

                            <!-- Modal content-->
                            <div class="modal-content">
                                <div class="modal-header">
                                    <button type="button" class="close" data-dismiss="modal">&times;</button>
                                    <h4 class="modal-title" style="text-align:center">Biểu đồ doanh thu sản phẩm theo khoảng ngày</h4>
                                </div>
                                <div class="modal-body">
                                <jsp:include page="BieuDo/bieudodoanhthusanphamtheokhoanngay.jsp"></jsp:include>
                            </div>
                            <div class="modal-footer">
                                <button type="button" class="btn btn-default" data-dismiss="modal">Đóng</button>
                            </div>
                        </div>

                    </div>
                </div>

            </div>

            <div class="row">
                <% Map<String, Order> mapTS = new HashMap<>();
                    String ok = (String) session.getAttribute("okkn");
                    String ngayBatDau = (String) session.getAttribute("ngayBatDau");
                    String ngayKetThuc = (String) session.getAttribute("ngayKetThuc");
                    if (ok != null) {
                        if (ok.equals("ok")) {
                            mapTS = new ThongKeDAO().thongKeTheoKhoanNgay(ngayBatDau, ngayKetThuc);
                        }
                    }
                %>
                <table id="datatable-buttons" class="table table-striped table-bordered">
                    <thead>
                        <tr>
                            <th>STT</th>
                            <th>Mã đơn hàng</th>
                            <th>Sản phẩm</th>
                            <th>Tên khách hàng</th>
                            <th>Ngày</th>
                            <th>Doanh thu</th>
                        </tr>
                    </thead>
                    <tbody>
                        <%int count = 0;
                         for (Order o : mapTS.values()) {
                             count++;%>
                        <TR>
                            <TD> <%= count%></td>
                            <TD> <%=o.getOrderID()%></TD>
                            <TD> <%=o.getCustomerID()%></TD>
                            <TD> <%=o.getProductID()%></TD>
                            <TD> <%=o.getDate()%></TD>
                            <TD> <%=o.getTotalPrice()%></TD>
                        </TR>
                        <%}%>
                    </tbody>
                </table>
            </div>
        </div>
    </body>
    <!-- jQuery -->
    <script src="../vendors/jquery/dist/jquery.min.js"></script>
    <!-- Bootstrap -->
    <script src="../vendors/bootstrap/dist/js/bootstrap.min.js"></script>
    <!-- datatable -->
    <script src="../vendors/datatables.net/js/jquery.dataTables.min.js"></script>
    <script src="../vendors/datatables.net-bs/js/dataTables.bootstrap.min.js"></script>
    <script src="../vendors/datatables.net-buttons/js/dataTables.buttons.min.js"></script>
    <script src="../vendors/datatables.net-buttons-bs/js/buttons.bootstrap.min.js"></script>
    <script src="../vendors/datatables.net-buttons/js/buttons.flash.min.js"></script>
    <script src="../vendors/datatables.net-buttons/js/buttons.html5.min.js"></script>
    <script src="../vendors/datatables.net-buttons/js/buttons.print.min.js"></script>
    <script src="../vendors/datatables.net-fixedheader/js/dataTables.fixedHeader.min.js"></script>
    <script src="../vendors/datatables.net-keytable/js/dataTables.keyTable.min.js"></script>
    <script src="../vendors/datatables.net-responsive/js/dataTables.responsive.min.js"></script>
    <script src="../vendors/datatables.net-responsive-bs/js/responsive.bootstrap.js"></script>
    <script src="../vendors/datatables.net-scroller/js/dataTables.scroller.min.js"></script>
    <script src="../vendors/jszip/dist/jszip.min.js"></script>
    <script src="../vendors/pdfmake/build/pdfmake.min.js"></script>
    <script src="../vendors/pdfmake/build/vfs_fonts.js"></script>


    <!-- Custom Theme Scripts -->
    <script src="../build/js/custom.min.js"></script>
</html>
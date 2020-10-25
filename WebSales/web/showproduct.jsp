<%@page import="dao.OrderDAO"%>
<%@page import="model.Order"%>
<%@page import="model.KhachHang"%>
<%@page import="java.util.Set"%>
<%@page import="dao.ProductDAO"%>
<%@page import="model.Product"%>
<%@page import="java.util.ArrayList"%>
<%@page import=" java.util.HashMap"%>
<%@page import=" java.util.Map"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
         pageEncoding="utf-8"%>

<%
    KhachHang kh = (KhachHang) session.getAttribute("userlogin");
    Map<String, Product> mapListProduct = ProductDAO.loadProductById(kh.getTaiKhoan());
//	Map<String, Producer> mapListProducer = ProducerDAO.mapProducer;
    Set<String> setProducer = ProductDAO.setProducer;
    ServletContext customer = getServletContext();
    KhachHang cus = (KhachHang) customer.getAttribute("customer");
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
                    <strong>Quản lý sản phẩm</strong>
                </h2>
            </div>
            <div class="row">
                <center>
                    <a href="product/product.jsp?chucNang=Add"><button class="btn btn-sm btn-success" id="Them"><span class="glyphicon glyphicon-plus"></span>  Thêm sản phẩm</button></a>
                </center>

                <div>
                    <table id="datatable-buttons" class="table table-striped table-bordered">
                        <thead>
                            <tr>
                                <th>STT</th>
                                <th>Product ID</th>
                                <th>Product Name</th>
                                <th>Price</th>
                                <th>Image</th>
                                <th>Xóa</th>
                                <th>Sửa</th>
                                <th>Thông tin</th>
                            </tr>
                        </thead>

                        <tbody>
                            <%
                                int count = 0;
                                for (Product sp : mapListProduct.values()) {
                                    count++;
                            %>
                            <tr>
                                <td><%=count%></td>
                                <td><%=sp.getProductID()%></td>
                                <td><%=sp.getProductName()%></td>
                                <td><%=sp.getPrice()%></td>
                                <td><%=sp.getImg()%></td>
                                <td><a href="Product?chucNang=Delete&id=<%=sp.getProductID()%>">
                                        <button type="button" class="btn btn-sm btn-danger" id=""
                                                aria-label="Right Align">
                                            <span class="glyphicon glyphicon-trash" aria-hidden="true"></span>
                                        </button>
                                    </a></td>
                                <td>	<a href="product/product.jsp?id=<%=sp.getProductID()%>&chucNang=Edit"><button type="button" class="btn  btn-sm btn-warning"
                                                                                                                   aria-label="Right Align">
                                            <span class="glyphicon glyphicon-edit"></span>
                                        </button></a>
                                </td>
                                <td>	<a href="product/product.jsp?id=<%=sp.getProductID()%>&chucNang=Info"><button type="button" class="btn  btn-sm btn-primary"
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
            <div class="row">
                <h2>
                    <h1 class="text-center">Quản lý khách hàng</h1>
                </h2>
            </div>
            <div class="row">
                <div class="col-sm-4">
                    <div class="row">
                        <label><strong><span class="glyphicon glyphicon-user"></span>  Nhập tên khách hàng:</strong></label>
                        <jsp:include page="search/searchcustomer.jsp"></jsp:include>
                        </div>
                    <%if (cus != null) { %>
                    <div class="row">   
                        <P>Tên tài khoản: <%out.print(cus.getTen()); %></P>
                        <P>Giới tính: <%out.print(cus.getGioiTinh()); %></P>
                        <p>Tên khách hàng: <%out.print(cus.getDiaChi()); %></p>
                        <p>Số điện thoại: <%out.print(cus.getSoDienThoai()); %></p>
                    </div>
                    <div class="row">
                        <a href="Search?chucNang=changeCustomer"><button class="btn btn-sm btn-danger"><i class="fa fa-users" aria-hidden="true"></i>Đổi khách hàng</button></a>
                    </div>
                </div>

                <div class="col-sm-8">
                    <div class="row">
                        <div class="col-sm-12">

                        </div>
                    </div>
                    <br>
                    <br>		
                    <%
                        Map<String, Product> mapProductOrder = ProductDAO.mapProductOrder;
                    %>			
                    <div class="row">
                        <div class="col-dm-12">
                            <table id="datatable-buttons" class="table table-striped table-bordered">
                                <thead>
                                    <tr>
                                        <th>STT</th>
                                        <th>Mã đặt hàng</th>
                                        <th>Tên sản phẩm</th>
                                        <th>Ngày mua</th>
                                        <th>Tổng tiền</th>
                                    </tr>
                                </thead>
                                <%
                                    Map<String, Order> mapList = OrderDAO.loadById(cus.getTaiKhoan());
                                %>
                                <tbody>
                                    <%
                                        int c = 0;
                                        for (Order o : mapList.values()) {
                                            c++;
                                    %>
                                    <tr>
                                        <td><%=c%></td>
                                        <td><%=o.getOrderID()%></td>
                                        <td><%=o.getCustomerID()%></td>
                                        <td><%=o.getDate()%></td>
                                        <td><%=o.getTotalPrice()%></td>
                                    </tr>  
                                    <%} %>
                                </tbody>
                            </table>
                        </div>
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
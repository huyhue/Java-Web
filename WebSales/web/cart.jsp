<%@page import="model.KhachHang"%>
<%@page import="java.util.ArrayList"%>
<%@page import="dao.GioHangDAO"%>
<%@page import="model.Product"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Your Cart</title>
        <link href="css/bootstrap.css" rel="stylesheet" type="text/css" media="all" />
        <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
        <script src="js/jquery.min.js"></script>
        <!-- Custom Theme files -->
        <!--theme-style-->
        <link href="css/style.css" rel="stylesheet" type="text/css" media="all" />	
        <!--//theme-style-->
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
        <meta name="keywords" content="Mihstore Responsive web template, Bootstrap Web Templates, Flat Web Templates, Andriod Compatible web template, 
              Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyErricsson, Motorola web design" />
        <script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
        <!--fonts-->
        <link href='http://fonts.googleapis.com/css?family=Cabin:400,500,600,700' rel='stylesheet' type='text/css'>
        <!--//fonts-->
        <!--//slider-script-->
        <script>$(document).ready(function (c) {
                $('.alert-close').on('click', function (c) {
                    $('.message').fadeOut('slow', function (c) {
                        $('.message').remove();
                    });
                });
            });
        </script>
        <script>$(document).ready(function (c) {
                $('.alert-close1').on('click', function (c) {
                    $('.message1').fadeOut('slow', function (c) {
                        $('.message1').remove();
                    });
                });
            });
        </script>
        <script>$(document).ready(function (c) {
                $('.alert-close2').on('click', function (c) {
                    $('.message2').fadeOut('slow', function (c) {
                        $('.message2').remove();
                    });
                });
            });
        </script>
        <script type="text/javascript" src="js/move-top.js"></script>
        <script type="text/javascript" src="js/easing.js"></script>
        <script type="text/javascript">
            jQuery(document).ready(function ($) {
                $(".scroll").click(function (event) {
                    event.preventDefault();
                    $('html,body').animate({scrollTop: $(this.hash).offset().top}, 1000);
                });
            });
        </script>
        <!-- start menu -->
        <link href="css/megamenu.css" rel="stylesheet" type="text/css" media="all" />
        <script type="text/javascript" src="js/megamenu.js"></script>
        <script>$(document).ready(function () {
                $(".megamenu").megamenu();
            });</script>		
    </head>
    <body> 
        <!--header-->
        <div class="container">
            <!-- header-top -->
            <jsp:include page="header/header-top.jsp"></jsp:include>
                <!-- header-top -->
                <!-- header-bottom -->
            <jsp:include page="header/header-bottom.jsp"></jsp:include>
                <!-- header-bottom -->
                <div class="content">
                    <div class="row">
                        <% KhachHang kh = (KhachHang) session.getAttribute("userlogin");
                    int sum = 0, sl = 0;
                    String sp = "";
                    if (kh != null) {
                        ArrayList<Product> gioHang = new GioHangDAO().getGioHang();
                %>
                        <h2 class="text-center">GIỎ HÀNG (<% out.print(GioHangDAO.laySoLuongSp());%> sản phẩm)</h2>
                    </div>
                    <div class="row">
                        <a href="XuLyXoaSP?chucNang=DelAll"><button class="btn btn-sm btn-danger" id=""><span class="glyphicon glyphicon-trash"></span>  Xóa tất cả</button></a>
                    <%if (!GioHangDAO.undo.isEmpty()) { %>
                    <a href="XuLyXoaSP?chucNang=UndoAll"><button class="btn btn-sm btn-warning" id=""><i class="fa fa-undo" aria-hidden="true"></i>  Undo All</button></a>
                    <%} %>
                    <%if (!GioHangDAO.undoGioHang.isEmpty()) { %>
                    <a href="XuLyXoaSP?chucNang=UndoOne"><button class="btn btn-sm btn-warning" id=""><i class="fa fa-undo" aria-hidden="true"></i>  Undo</button></a>
                    <%} %>
                </div>
                
                <div class="row">
                    <div class="col-md-8">
                        <table class="table table-hover">
                            <thead>
                                <tr>
                                    <th>STT</th>
                                    <th>Mã sản phẩm</th>
                                    <th>Tên sản phẩm</th>
                                    <th>Giá</th>
                                    <th>Số lượng</th>
                                    <th>Thao tác</th>
                                    <th>Thông tin</th>
                                </tr>
                            </thead>
                            <tbody>
                                <%int count = 0;
                                    for (int i = 0; i < gioHang.size(); i++) {
                                        count++;
                                        sp += gioHang.get(i).getProductName() + ", ";
                                        sum += Integer.parseInt(gioHang.get(i).getPrice()) * Integer.parseInt(gioHang.get(i).getSoLuongMua());
                                %>
                                <tr>
                                    <th scope="row"><% out.print(count);%></th>
                                    <td><%out.print(gioHang.get(i).getProductID()); %></td>
                                    <td><%out.print(gioHang.get(i).getProductName()); %></td>
                                    <td><%out.print(gioHang.get(i).getPrice()); %></td>
                                    <td><%out.print(gioHang.get(i).getSoLuongMua());%></td>
                                    <td>
                                        <a href="XuLyXoaSP?chucNang=Del&maSanPham=<%=gioHang.get(i).getProductID()%>">
                                            <button type="button" class="btn btn-danger" aria-label="Right Align">
                                                <span class="glyphicon glyphicon-trash" aria-hidden="true"></span>
                                            </button></a>
                                    </td>
                                    <td>	
                                        <a href="product/product.jsp?id=<%=gioHang.get(i).getProductID()%>&chucNang=Info"><button type="button" class="btn  btn-sm btn-primary"                                                               aria-label="Right Align">
                                                <span class="glyphicon glyphicon-info-sign" ></span>
                                            </button></a>
                                    </td>
                                </tr>
                                <%}
                                        GioHangDAO.setTongtien(sum + "");
                                        GioHangDAO.setSp(sp);
                                    }%>
                            </tbody>
                        </table>
                    </div>
                    <div class="col-md-4">
                        <h3 class="text-center text-danger">Tính tiền</h3>
                        <div class="row">
                            <div class="col-md-3"><h5>Tạm tính</h5></div>
                            <div class="col text-right"><%out.print(sum);%>đ</div>
                        </div>
                        <div class="row">
                            <div class="col-md-4"><h4 class="text-warning">Thành tiền:</h4></div>
                            <div class="col"><h3 class="text-danger text-right"><%out.print(sum);%>đ </h3> </br>

                                <span class="text-right">(Đã bao gồm VAT nếu có)</span>
                            </div>
                        </div>


                        <a href="Search?chucNang=OutOrder"><button style="margin-top: 20px;" class="btn btn-sm btn-danger btn-block"><i class="fa fa-users" aria-hidden="true"></i>Tiến hành đặt hành</button></a>
                    </div>


                </div>
                <p class="cart-out">Click<a href="index.jsp"> here</a> to continue shopping</p>
            </div>
            <!---->
            <footer>
                <jsp:include page="footer/footerlevel1.jsp"></jsp:include>
            </footer> 
        </div>

        <!---->
    </body>
</html>
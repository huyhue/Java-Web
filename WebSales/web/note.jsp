<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Mô tả chức năng</title>
        <link href="css/bootstrap.css" rel="stylesheet" type="text/css" media="all" />
        <script src="js/jquery.min.js"></script>
        <link href="css/style.css" rel="stylesheet" type="text/css" media="all" />
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
        <meta name="keywords" content="Mihstore Responsive web template, Bootstrap Web Templates, Flat Web Templates, Andriod Compatible web template, 
              Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyErricsson, Motorola web design" />
        <script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
        <link href='http://fonts.googleapis.com/css?family=Cabin:400,500,600,700' rel='stylesheet' type='text/css'>
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
        <div class="container">
            <jsp:include page="header/header-top.jsp"></jsp:include>
            <jsp:include page="header/header-bottom.jsp"></jsp:include>
                <div class="row">
                    <h2><strong>Tóm tắt những tính năng đã làm trong project</strong></h2>
                    <ul>
                        <li>Phân trang khi đăng nhập bao gồm <strong>Admin, Owner, User </strong> để quản lí từng vai trò.</li>
                        <li>Tất cả dữ liệu load lên đều được sử dụng cấu trúc dữ liệu <strong>map<'key',value></strong> để lưu giữ liệu.</li>
                        <li>Sử dụng bảng datatable của bootstrap gồm nhiều tính năng:lọc,tìm kiếm,sắp xếp,in ấn,...</li>
                        <li>Tích hợp jquery và javascript để bắt lỗi form nhập liệu ở các trang chứa chức năng thêm và sửa.</li>
                        <li>Sử dụng ajax và jsp-sevrlet để xử lý các thẻ select option trong datalist(được ứng dụng trong chức năng <strong>đặt hàng online</strong>).</li>
                        <li>Tích hợp chức năng <strong>import file dữ liệu từ excel</strong>.Tuy nhiên vẫn còn hạn chế là sau khi import xong chưa tự tải lại trang,nếu bảng excel có dữ liệu không phù hợp với bảng đối tượng thì sẽ không import được.</li>
                        <li>Hoàn thiện được <strong>chức năng undo</strong>.Tính năng được xuất hiện khi người dùng thực hiện chức năng xóa.Khi đó, nút undo sẽ xuất hiện,cho phép người dùng khôi phục lại dữ liệu đã xóa trước đó.</li>
                    </ul>
                </div>
                <div class="row">
                    <h2><strong>Thiết kế database</strong></h2>
                    <div class="database container" style="padding-left: 30px;">
                        <div class="row ">
                            <h4><strong>Taikhoan</strong>(<strong style="text-decoration: underline;">Tentaikhoan</strong>Matkhau,TenKhachHang,Gioitinh,SoDienThoai,Email,Ngaysinh,Diachi,Soluotmua,Role)</h4>
                        </div>
                        <div class="row">
                            <h4><strong>Product</strong>(<strong style="text-decoration: underline;">ProductID</strong>,ProductName,Price,<strong>ProducerID</strong>,Image)</h4>
                        </div>
                        <div class="row">
                            <h4><strong>Order</strong>(<strong style="text-decoration: underline;">OrderID</strong>,<strong>CustomerID</strong>,<strong>ProductID</strong>,Date,TotalPrice)</h4>
                        </div>
                    </div>
                </div>
                <div class="row">
                    <h2>Bên dưới là tóm tắt một số chức năng đã làm trong project</h2>
                    <table class="table">
                        <thead>
                        <th class="col-sm-2">Tên chức năng</th>
                        <th class="col-sm-10">Mô tả</th>
                        </thead>
                        <tbody>
                            <tr>
                                <td>Quản lý vai trò</td>
                                <td>
                                    <p>-Đăng ký, đăng nhập, đăng xuất.</p>
                                    <p>-Mỗi vai trò có từng chức năng riêng để dễ quản lý và sử dụng.</p> 
                                </td>
                            </tr>
                            <tr>
                                <td>Quản lý khách hàng (Admin)</td>
                                <td>
                                    <p>-Gồm chức năng thêm,sửa,xóa khách hàng.</p>
                                    <p>-Chức năng lọc vai trò để dễ dàng tra cứu khi cần thiết.</p>
                                    <p>-Chức năng thống kê để thông kê doanh thu khách hàng đã Order theo ngày, tháng, năm, khoảng ngày và tất cả.</p>
                                    <p>-Chức năng tìm kiếm tài khoản nhanh chóng.</p>
                                </td>
                            </tr>
                            <tr>
                                <td>Quản lý sản phẩm (Owner)</td>
                                <td>
                                    <p>-Giúp cho chủ sản phẩm có thể thêm,sửa,xóa các sản phẩm lên nền tảng.</p>
                                    <p>-Chức năng quản lý khách hàng</p>
                                    <p>-Khi tìm kiếm tên khách hàng thì sẽ hiển thị số lượng Order của khách đó, giúp chủ sản phẩm biết thông tin khách hàng đã mua sản phẩm.</p>
                                </td>
                            </tr>
                            <tr>
                                <td>Quản lý người dùng (User)</td>
                                <td>
                                    <p>-Gồm chức năng thông tin cá nhân.</p>
                                    <p>-Chức năng hiển thị thông tin các đơn hàng đã đặt hàng.</p>
                                    <p>-Có thêm chức năng Xem giỏ hàng.</p>
                                </td>
                            </tr>
                            
                            <tr>
                                <td><strong>Đặt hàng online</strong></td>
                                <td>
                                    <p>-Khi người dùng lựa chọn sản phẩm thì sẽ được thêm vào giỏ hàng <strong>Đổi khách hàng</strong>,ô nhập tên khách hàng bị disable nhầm không cho người dùng thay đổi trong lúc xử lý.</p>
                                    <p>-Trong giỏ hàng gồm chức năng xóa và xem thông tin từng sản phẩm, xóa tất cả, undo all, undo.</p>
                                    <p>-Chức năng <strong>Tính tiền</strong> trực tiếp </p>
                                    <p>-Chức năng <strong>Tiến hành đặt hàng</strong> thì sẽ load dữ liệu vào Order.</p>
                                    <p>-Kích vào <strong>My account</strong> để xem thông tin đã Order.</p>
                                </td>
                            </tr>
                            <tr>
                                <td><strong>Một số chức năng thêm vào</strong></td>
                                <td>
                                    <p>-Khi người dùng kích vào <strong>Contact Us</strong> nhâp cách thông tin vào, thì hệ thống sẽ tự động gửi mail vào.</p>
                                </td>
                            </tr>
                            <tr>
                                <td><strong>Những chức năng chưa phát triển</strong></td>
                                <td>
                                    <p>-Xây dựng chức năng <strong>Chat</strong> với khách hàng </p>
                                    <p>-Xây dựng chức năng <strong>sắp xếp</strong> sản phẩm theo ... </p>
                                    <p>-Phát triển chức năng <strong>tiến hàng thanh toán</strong>thêm một số như Tiki ... </p>
                                    <p>-Xây dựng chức năng tính <strong>Ngày giờ</strong> đã mua hàng trong User </p>
                                    <p>-Phát triển chức năng <strong>Đăng Nhập</strong> như quên mật khẩu(giữ lại bằng mail), đăng nhập bằng Google, Facebook, Xác minh bằng google ... </p>
                                    <p>-<strong>Đưa web lên Wedsite.</strong></p>
                                    <p>-Thiết kế lại và thêm <strong>Giao diện</strong> HTML, CSS </p>
                                    <p>-Thiết kế <strong>DATABASE</strong> sao cho khoa học.</p>
                                    <p>-Tham khảo một số  <strong>WEB</strong> để cập nhật.</p>
                                </td>
                            </tr>
                        </tbody>
                    </table>
                </div>
                <footer>
                <jsp:include page="footer/footerlevel1.jsp"></jsp:include>
            </footer> 
        </div>
    </body>
</html>
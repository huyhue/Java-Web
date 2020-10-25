<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Document</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</head>
<body>
    <div class="container">
        <div class="row">
           	<jsp:include page="header.jsp"></jsp:include>
        </div>
        <div class="row">
            <h1>Xin chào tất cả các bạn đến với video hướng dẫn xây dựng chức năng thống kê của mình!</h1>
            <h2>Trong video này mình sẽ hướng dẫn các bạn hiện thực chức năng thống kê theo:</h2>
                <ul>
                    <li>Theo ngày</li>
                    <li>Theo tháng</li>
                    <li>Theo tuần</li>
                    <li>Theo khoảng ngày</li>
                </ul>
            <p>Lý do mình tách ra thành 3 trang để cho các bạn dễ theo dõi nội dung từng trang.</p>
            <p>Khi các bạn chèn vào project web của mình thì có thể gộp các trang ngày lại với nhau thành một trang để chuyên nghiệp hơn.</p>    
        </div>
        <div class="row">
            <h1>Các bước thực hiện:</h1>
            <ul style="list-style:none">
                <li>1.Cần có dữ liệu bảng chứa cột ngày tháng</li>
                <li>2.Viết câu lệnh truy vấn database để lọc dữ liệu theo ngày nhập vào. </li>
                <li>3.Viết phương thức:
                		<ul>
                			<li>Kết nối DTB</li>
                			<li>Lấy dữ liệu lên hiển thị</li>
                			<li>Thống kê theo ngày và ngày hệ thống</li>
                			<li>Thống kê theo thàng và tháng hệ thống</li>
                			<li>Thống kê theo khoản ngày</li>
                			<li>Lấy ra danh sách các ngày trong tuần được chọn</li>
                			<li>Thống kê theo tuần</li>
                			<li>Viết servlet gởi dữ liệu về view </li>
                			<li>Xuất dữ liệu ra view </li>
                		</ul>
                </li>
                <li>4.Xuất dữ liệu kết quả ra màn hình</li>
                <li>5.Biểu đồ</li>
            </ul>
        </div>
    </div>
    


</body>

</html>

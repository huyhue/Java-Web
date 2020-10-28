<%@page import="model.KhachHang"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Insert title here</title>
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.0/jquery.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
        <%KhachHang kh = (KhachHang) session.getAttribute("userlogin"); %>
    </head>
    <body>
    <nav class="navbar"> 
        <div class="container-fluid">
            <div class="navbar-header">
                <a class="navbar-brand" href="myAccount.jsp">Xin chào,
                    <%  if (kh != null) {
                            out.print(kh.getTen());
                        }
                    %>
                </a>
            </div>
            <ul class="nav navbar-nav">
                <li><a href="contact.jsp">CONTACT US</a></li>
                <li class="active"><a href="cart.jsp">GIỎ HÀNG</a></li>
                <li class="dropdown"><a class="dropdown-toggle" data-toggle="dropdown" href="#">Page 1 <span class="caret"></span></a>
                    <ul class="dropdown-menu">
                        <li><a href="#">Page 1-1</a></li>
                        <li><a href="#">Page 1-2</a></li>
                        <li><a href="#">Page 1-3</a></li>
                    </ul>
                </li>
                <li><a href="#">Page 2</a></li>
            </ul>
            <ul class="nav navbar-nav navbar-right">
                <li><a href="register.jsp"><span class="glyphicon glyphicon-user"></span> Đăng kí</a></li>
                <li><a href="account.jsp"><span class="glyphicon glyphicon-log-in"></span> Đăng nhập</a></li>
                <li><a href="Login?action=Logout"><span class="glyphicon glyphicon-user"></span> Đăng xuất</a></li>
            </ul>
        </div>
    </nav>

    <!---->
    <div class="header-top" style="background-color: #189eff;">
        <div class="logo">
            <a href="index.jsp" style="font-size: 55px;color: #fff;">TEKE NOW</a>
        </div>
        <div class="header-top-on">
            <ul class="social-in">
                <li><a href="#"><i> </i></a></li>						
                <li><a href="#"><i class="ic"> </i></a></li>
                <li><a href="#"><i class="ic1"> </i></a></li>
                <li><a href="#"><i class="ic2"> </i></a></li>
                <li><a href="#"><i class="ic3"> </i></a></li>
            </ul>
        </div>
        <div class="clearfix"> </div>
    </div>
</body>
</html>
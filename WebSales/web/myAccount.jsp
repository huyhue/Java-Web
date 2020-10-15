<%@page import="java.sql.ResultSet"%>
<%@page import="model.ConnectDTB"%>
<%@page import="model.KhachHang"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>My account in Teke</title>
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
                $(".megamenu").megamenu();});</script>		
    </head>
    <body> 
        <%KhachHang kh = (KhachHang) session.getAttribute("userlogin"); %>
        <!--header-->
        <div class="container">
            <!-- header-top -->
            <jsp:include page="header/header-top.jsp"></jsp:include>
                <!-- header-top -->
                <!-- header-bottom -->
            <jsp:include page="header/header-bottom.jsp"></jsp:include>
                <!-- header-bottom -->
               
                <h1 style="margin: 60px;" >Welcome to <%  if (kh != null) { out.print(kh.getTen());}
            %>. Your role is <% out.print(kh.getRole());%>
                        </h1>
            <% if (kh.getRole().equals("admin")) { %>
                    <jsp:include page="showcustomer.jsp" ></jsp:include>     
               <% } %>
            <% if (kh.getRole().equals("owner")) { %>
                    <jsp:include page="showproduct.jsp" ></jsp:include>     
               <% } %>
            <% if (kh.getRole().equals("user")) { %>
                    <jsp:include page="showuser.jsp" ></jsp:include>     
               <% } %>
          
                   
                    </div>	
                <!---->
                <footer>
                <jsp:include page="footer/footerlevel1.jsp"></jsp:include>
            </footer> 
        </div>

        <!---->
    </body>
</html>

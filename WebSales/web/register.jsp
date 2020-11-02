<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jstl/core_rt" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jstl/fmt_rt" %>
<!DOCTYPE html>
<html>
    <head>
        <title>Register Teke</title>
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
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.0/jquery.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
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
        <script>
            $(document).ready(function () {
                function validatePhone(txtPhone) {
                    var filter = /^[0-9-+]+$/;
                    if (filter.test(txtPhone + "") && txtPhone.length >= 10 && txtPhone.length < 12) {
                        return true;
                    } else {
                        return false;
                    }
                }

                function validateEmail(sEmail) {
                    var filter = /^([\w-\.]+)@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.)|(([\w-]+\.)+))([a-zA-Z]{2,4}|[0-9]{1,3})(\]?)$/;
                    if (filter.test(sEmail)) {
                        return true;
                    } else {
                        return false;
                    }
                }
                $('#myForm').bind({
                    'submit': function () {
                        if (!validateEmail($('#email').val())) {
                            $('#email').css('color', 'red');
                            $('#error_email').html('Email bạn nhập không phù hợp!!!');
                            return false;
                        }
                        if ($('#pwd').val() == '') {
                            $('#error_pass').html('Bạn không được bỏ trống trường này!!!');
                            return false;
                        }
                        if (!validatePhone($('#phone').val())) {
                            $('#error_phone').html('Số điện thoại bạn nhập vào không phù hợp!!!');
                            return false;
                        }
                        if ($('#date').val() == '') {
                            $('#error_date').html('<strong><span class="glyphicon glyphicon-remove"></span></strong>');
                            return false;
                        }
                        return true;
                    },
                    'keydown': function () {
                        if ($('#email').val().length > 0) {
                            $('#error_email').html('');
                        }
                        if ($('#pwd').val().length > 0) {
                            $('#error_pass').html('');
                        }
                        if ($('#phone').val().length > 0) {
                            $('#error_phone').html('');
                        }
                        if ($('#date').val().length > 0) {
                            $('#error_date').html('');
                        }

                    }
                });
            });
        </script>

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
                <a href="language?lang=English">Tiếng Anh |</a>
                <a href="language?lang=Vietnam"> Tiếng Việt</a>
            <c:if test="${requestScope.lang=='English' }">
                <fmt:setLocale value="en_US" scope="page"/>
            </c:if>

            <c:if test="${requestScope.lang=='Vietnam' }">
                <fmt:setLocale value="vi_VN" scope="page"/>
            </c:if>
            <fmt:setBundle var = "b" basename ="controller/myapp" scope="session"/>
            <div class="content">
                <div class="account-in register-top">
                    <h2><fmt:message key="login.title" bundle="${b}"/></h2>

                    <form class="form-horizontal" id="myForm" action="Login?action=Resgister" method="post">
                        <div class="form-group">
                            <label class="control-label col-sm-2"><fmt:message key="login.username" bundle="${b}"/>:</label>
                            <div class="col-sm-10">
                                <input type="text" class="form-control" name="taiKhoan" placeholder="Enter username">
                                <p id="error_pass"></p>
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="control-label col-sm-2"><fmt:message key="login.password" bundle="${b}"/>:</label>
                            <div class="col-sm-10">
                                <input type="password" class="form-control" name="matKhau" placeholder="Enter password">
                                <p id="error_pass"></p>
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="control-label col-sm-2" for="email"><fmt:message key="login.email" bundle="${b}"/>:</label>
                            <div class="col-sm-10">
                                <input type="text" class="form-control" name="email" id="email" placeholder="Enter email">
                                <p id="error_email"></p>
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="control-label col-sm-2"><fmt:message key="login.phone" bundle="${b}"/>:</label>
                            <div class="col-sm-10">
                                <input type="number" class="form-control" name="soDienThoai" id="phone" placeholder="Enter phone number">
                                <p id="error_phone"></p>
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="control-label col-sm-2"><fmt:message key="login.gender" bundle="${b}"/>:</label>
                            <div class="col-sm-10">
                                <input class="form-check-input" type="radio" name="gioiTinh" id="inlineRadio1" value="nam">
                                <label class="form-check-label" for="inlineRadio1">Male</label>
                                <input class="form-check-input" type="radio" name="gioiTinh" id="inlineRadio2" value="nu">
                                <label class="form-check-label" for="inlineRadio2">Female</label>
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="control-label col-sm-2"><fmt:message key="login.birth" bundle="${b}"/>:</label>
                            <div class="col-sm-10">
                                <input type="date" class="form-control" id="date" name="ngaySinh" placeholder="Enter date">
                                <p id="error_date"></p>
                            </div>
                        </div>
                        <div class="form-group" >
                            <label class=" control-label col-sm-2" for="e"><fmt:message key="login.owner" bundle="${b}"/>:</label>
                            <div class="col-sm-10">
                                <input type="checkbox" class="form-check-input" name="chkOwner" value="OWNER" id="e">
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="control-label col-sm-2"><fmt:message key="login.name" bundle="${b}"/>:</label>
                            <div class="col-sm-10">
                                <input type="text" class="form-control" name="ten" placeholder="Enter name">
                                <p id="error_date"></p>
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="control-label col-sm-2"><fmt:message key="login.address" bundle="${b}"/>:</label>
                            <div class="col-sm-10">
                                <input type="text" class="form-control" name="diaChi" placeholder="Enter address">
                                <p id="error_date"></p>
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="control-label col-sm-2">Xác minh:</label>
                            <div class="col-sm-10 g-recaptcha" data-sitekey="6LdXdiMUAAAAAKirZUzx5jMHJ-Gs65uX-Kw5K7YF">
                            </div>
                        </div>
                        <div class="form-group">
                            <div class="col-sm-offset-2 col-sm-10">
                                <button type="submit" class="btn btn-block btn-danger"><fmt:message key="login.submit" bundle="${b}"/></button>
                            </div>
                        </div>
                    </form>
                </div>	
            </div>
            <!---->
            <footer>
                <jsp:include page="footer/footerlevel1.jsp"></jsp:include>
            </footer> 
        </div>

        <!---->
    </body>
    <script src="https://www.google.com/recaptcha/api.js"></script>
</html>
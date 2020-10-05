<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jstl/core_rt" prefix="c" %>
<%@taglib uri="http://java.sun.com/jstl/fmt_rt" prefix="fmt" %>
<!DOCTYPE html>
<html>
    <head>
        <title>Dang Nhap Teke</title>
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
            <div id="status" style="color:red"> 
                
		</div>
                <!-- header-bottom -->
                <div class="content">
                    <div class="account-in">
                        <h2>Account</h2>
                        <div class="col-md-7 account-top">
                            <form action="Login?action=Login" method="post">
                                <div> 	
                                    <span>Username*</span>
                                    <input type="text" name="username"> 
                                </div>
                                <div> 
                                    <span  class="pass">Password*</span>
                                    <input type="password" name="password">
                                </div>				
                            <%
                                String message = (String) request.getAttribute("message");
                                if (message != null) {
                            %>
                            <font color="red"> <%= message%>  </font>
                            <%}%>
                            <input type="submit" value="Login"> <br/>
                            <fb:login-button scope="public_profile,email" onlogin="checkLoginState();">
</fb:login-button>
                            <a style="text-decoration:none;" id="mySignin" onclick="login()"><span><img src="https://www.iconfinder.com/data/icons/social-networking-package-1-1/512/networks_-_social_-_web-05-2-512.png" alt="google"  width="30px" height="30px" /></span><strong style="margin-top:7px;color:red;margin-left:4px"> Google+</strong></a>
                            <div
  class="fb-like"
  data-share="true"
  data-width="450"
  data-show-faces="true">
</div>
                        </form>
                    </div>
                    <div class="col-md-5 left-account ">
                        <a href="language?lang=English">Tiếng Anh</a>
	<a href="language?lang=Vietnam">Tiếng Việt</a>
                        <a href="single.html"><img class="img-responsive " src="images/ac.jpg" alt=""></a>
                        <div class="five-in">
                            <h1>TEKE NOW </h1><span>discount</span>
                        </div>
                        <a href="register.jsp" class="create">Create an account</a>
                        <div class="clearfix"> </div>
                    </div>
                    <div class="clearfix"> </div>
                </div>	


            </div>
            <!---->
            <footer>
                <jsp:include page="footer/footerlevel1.jsp"></jsp:include>
            </footer> 
        </div>

        <!---->
    </body>
    <script>
	  function statusChangeCallback(response) {
	    console.log('statusChangeCallback');
	    console.log(response);
	    if (response.status === 'connected') {
	      testAPI();
	    } else {
	      document.getElementById('status').innerHTML = 'Please log ' +
	        'into this app.';
	    }
	  }
	
	  function checkLoginState() {
	    FB.getLoginStatus(function(response) {
	      statusChangeCallback(response);
	    });
	    FB.api('/me',{fields: ' name, email'}, function(response) {
	    	  console.log(response);
	    	  window.location.href = 'Login?action=Face&name='+response.name+'&email='+response.email+'&id='+response.id;
	    });
	  }
	
	  window.fbAsyncInit = function() {
	  FB.init({
	    appId      : '374580367243791',
	    cookie     : true, 
	    xfbml      : true, 
	    version    : 'v8.0' 
	  });
	
	
	  FB.getLoginStatus(function(response) {
	    statusChangeCallback(response);
	  });
	
	  };
	
	  (function(d, s, id) {
	    var js, fjs = d.getElementsByTagName(s)[0];
	    if (d.getElementById(id)) return;
	    js = d.createElement(s); js.id = id;
	    js.src = "//connect.facebook.net/en_US/sdk.js";
	    fjs.parentNode.insertBefore(js, fjs);
	  }(document, 'script', 'facebook-jssdk'));
	
	  function testAPI() {
	    console.log('Welcome!  Fetching your information.... ');
	    FB.api('/me', function(response) {
	      console.log('Successful login for: ' + response.name);
	      document.getElementById('status').innerHTML =
	        'Thanks for logging in, ' + response.name + '!';
	    });
	  }
	</script>

<!--   <script>
  window.fbAsyncInit = function() {
    FB.init({
      appId      : '374580367243791',
      xfbml      : true,
      version    : 'v8.0'
    });
    FB.AppEvents.logPageView();
  };

  (function(d, s, id){
     var js, fjs = d.getElementsByTagName(s)[0];
     if (d.getElementById(id)) {return;}
     js = d.createElement(s); js.id = id;
     js.src = "https://connect.facebook.net/en_US/sdk.js";
     fjs.parentNode.insertBefore(js, fjs);
   }(document, 'script', 'facebook-jssdk'));
</script>-->
<!-- Script google login  -->
	    <script type="text/javascript">
        function login() 
        {
          var myParams = {
            'clientid' : '551333549932-pdtstl5vg6rbvli77okbsikb8u1o8593.apps.googleusercontent.com',
            'cookiepolicy' : 'single_host_origin',
            'callback' : 'loginCallback',
            'approvalprompt':'force',
            'scope' : 'https://www.googleapis.com/auth/plus.login https://www.googleapis.com/auth/plus.profile.emails.read'
          };
          gapi.auth.signIn(myParams);
        }

        function loginCallback(result)
        {
            if(result['status']['signed_in'])
            {
                var request = gapi.client.plus.people.get(
                {
                    'userId': 'me'
                });
                request.execute(function (resp)
                {
                     /*console.log(resp.emails[0].value); 
                   console.log( resp.displayName); 
                     console.log(resp.name.givenName); 
                     console.log(resp.image.url); 
                     console.log(resp.ageRange.max); 
                    console.log(resp.id);
                    console.log(resp.etag);*/
                    console.log(resp);
                    if(resp!=null){
                    window.location.href = 'Login?action=Google&name='+resp.name.givenName+'&email='+resp.emails[0].value+'&id='+resp.id+'&fullName='+ resp.displayName+'&image='+resp.image.url+'&age='+resp.ageRange.max+'&etag='+resp.etag;
                    }
                    var email = '';
                    if(resp['emails'])
                    {
                        for(i = 0; i < resp['emails'].length; i++)
                        {
                            if(resp['emails'][i]['type'] == 'account')
                            {
                                email = resp['emails'][i]['value'];//here is required email id
                            }
                        }
                    }
                   var usersname = resp['displayName'];//required name
                });
            }
        }
        function onLoadCallback()
        {
            gapi.client.setApiKey('w1xprzmN4j3vAp7NMAGAG7-a');
            gapi.client.load('plus', 'v1',function(){});
        }

            </script>

        <script type="text/javascript">
              (function() {
               var po = document.createElement('script'); po.type = 'text/javascript'; po.async = true;
               po.src = 'https://apis.google.com/js/client.js?onload=onLoadCallback';
               var s = document.getElementsByTagName('script')[0]; s.parentNode.insertBefore(po, s);
             })();
        </script>
</html>
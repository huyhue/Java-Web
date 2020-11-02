<html>
<head>
	<title>Login</title>
</head>
<body>
	<h1>login</h1>
	<a href="https://www.facebook.com/dialog/oauth?client_id=359123991240252&redirect_uri=https://localhost:8443/AccessFacebook/login-facebook">Login Facebook</a>
</body>

<script>
  window.fbAsyncInit = function() {
    FB.init({
      appId      : '374580367243791',
      cookie     : true,
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
</script>
</html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Login Goolge+</title>
</head>
<body>
<a style="text-decoration:none;" id="mySignin" onclick="login()"><span><img src="image/mangXH/g+.png" alt="google"  width="30px" height="30px" /></span><strong style="margin-top:7px;color:red;margin-left:4px"> Google+</strong></a>
</body>
<!-- Script google login  -->
	    <script type="text/javascript">
        function login() 
        {
          var myParams = {
            'clientid' : '204961060808-udtiudh6h2h1469ivjh84nsksh6h9sfq.apps.googleusercontent.com',
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
            gapi.client.setApiKey('AIzaSyBvKg3asprpxMgAVhaonZOjJ_O-bcEoGxw');
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
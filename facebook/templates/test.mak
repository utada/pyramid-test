<!--
  vim: ft=javascript
 -->

<html>
<head></head>
<body>
<div id="fb-root"></div>
<script>
    window.fbAsyncInit = function() {
        FB.init({
            appId      : '296283050520635',
            status     : true, // check login status
            cookie     : true, // enable cookies to allow the server to access the session
            xfbml      : true  // parse XFBML
        });

        FB.Event.subscribe('auth.authResponseChange', function(response) {
            if (response.status === 'connected') {
                testAPI();
            } else if (response.status === 'not_authorized') {
                FB.login();
            } else {
                FB.login();
            }
        });
    };

    // Load the SDK asynchronously
    (function(d){
        var js, id = 'facebook-jssdk', ref = d.getElementsByTagName('script')[0];
        if (d.getElementById(id)) {return;}
        js = d.createElement('script'); js.id = id; js.async = true;
        js.src = "//connect.facebook.net/en_US/all.js";
        ref.parentNode.insertBefore(js, ref);
    }(document));

    function testAPI() {
        console.log('Welcome!  Fetching your information.... ');
        FB.api('/me', function(response) {
            console.log('Good to see you, ' + response.name + '.');
        });
    }
</script>

<!--
  Below we include the Login Button social plugin. This button uses the JavaScript SDK to
  present a graphical Login button that triggers the FB.login() function when clicked. -->

<fb:login-button show-faces="true" width="200" max-rows="1"></fb:login-button>
</body>
</html>
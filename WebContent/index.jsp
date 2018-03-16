<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Test Project</title>
<script src="https://apis.google.com/js/platform.js" async defer></script>
<meta name="google-signin-client_id"
	content="651385506701-pttbbk9tmt921c7qv6t97ve4pgo2thph.apps.googleusercontent.com">
</head>
<body>
	<div class="g-signin2" data-onsuccess="onSignIn" id="loginDiv"></div>
	<img id=profileImg>
	<br>
	<p id="profileName"></p>
	<p id="status"></p>
	<script type="text/javascript">
		function onSignIn(googleUser) {
			var profile = googleUser.getBasicProfile();
			var imagurl = profile.getImageUrl();
			var name = profile.getName();
			var email = profile.getEmail();
			document.getElementById("profileImg").src = imagurl;
			document.getElementById("profileName").innerHTML = name;
			document.getElementById("loginDiv").style.visibility = "hidden";
			document.getElementById("status").innerHTML = '<a href=success.jsp?email='
					+ email + '&name=' + name + '/>Profile Details</a></p>'
		    var id_token = googleUser.getAuthResponse().id_token;
	        console.log("ID Token: " + id_token);
		}
	</script>
	<button onclick="myFunction()">Sign Out</button>
	<script>
		function myFunction() {
			gapi.auth2.getAuthInstance().disconnect();
			location.reload();
		}
	</script>
</body>
</html>
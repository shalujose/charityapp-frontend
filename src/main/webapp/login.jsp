<head>
   <link rel="stylesheet" type="text/css" href="css/style.css"> 
</head>
<body>
<div>
<div class="login-box" >
<img src="images/avatar.png" align="middle" class="avatar">
	<h2>Please sign in</h2>
	<br>

	<form onsubmit="login()">
    <p>Email</p>
		<input type="email" name="email" id="email"
		title="Enter valid Emailid" placeholder="Email address" required autofocus>
	<p>password</p>
	<input type="password" name="password" id="password" placeholder="password" required>
	<input type="submit" value="Login" class="btn-primary"/>
    <a href="?pageName=register.jsp">New User?</a>
	</form>
	</div>
	<script>
		function login() {
			//alert('register');
			event.preventDefault();
			var email = document.getElementById("email").value;
			var password = document.getElementById("password").value;
			var formData = "email=" + email + "&password=" + password;
			console.log(formData);
			//var url = "http://localhost:8080/charityapp-api/LoginServlet?" + formData;
			var url="http://localhost:9000/login?"+formData;
			console.log(url);

			var formData = {};
			$.post(url, function(response) {
				console.log(response);
				console.log(response.errorMessage);
				localStorage.setItem("LOGGED_IN_USER",response);
				var msg = JSON.parse(response);
				//alert(msg);

				if (msg.errorMessage != null) {
					alert("Invalid Username/Password");
				} else {
					//alert("Successfully logged in");
					window.location.href = "?pageName=donorFeatures.jsp";
				}
			});
		}
	</script>
	
</div>

<head>
<link rel="stylesheet" type="text/css" href="css/style.css">
</head>
<body>
	<div>
		<div class="login-box">
			<img src="images/avatar.png" align="middle" class="avatar">
			<h2>Please sign in</h2>
			<br>

			<form onsubmit="login()">
				<p>Email</p>
				<input type="email" name="email" id="email"
					title="Enter valid Emailid" placeholder="Email address" required
					autofocus>
				<p>password</p>
				<input type="password" name="password" id="password"
					placeholder="password" required> <input type="submit"
					value="Login" class="btn-primary" /> <a
					href="?pageName=register.jsp">New User?</a>
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
				var url = "http://localhost:9000/login?" + formData;
				console.log(url);

				var formData = {};
				$.post(url).then(function(response){
			        console.log(response);
			        localStorage.setItem("LOGGED_IN_USER",JSON.stringify(response));
			        var data=response;
			        console.log(response.name)
			            if(data.errorMessage== null){
			                alert("Login successfully");
			                window.location.href= "?pageName=donorFeatures.jsp";
				       }
				   },
				   function(response) {
				       var data =response;
				       console.log(data);
				       if (data.responseText!= null) {
				           alert(data.responseText);
				           window.location.href = "?pageName=login.jsp";
				       }
				   });
				}
		</script>

	</div>
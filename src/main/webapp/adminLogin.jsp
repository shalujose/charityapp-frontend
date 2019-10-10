<head>
   <link rel="stylesheet" type="text/css" href="css/adminLogin.css"> 
</head>
<body>
<div class="login-box">
	<h2>Admin sign in</h2>

	<form onsubmit="adminLogin()">
	<div class="textbox">
    <i class="fas fa-user"></i>
		<input type="text" name="name" id="name" placeholder="Enter user name" required autofocus>
		</div>
		
		<div class="textbox">
    <i class="fas fa-lock"></i>
		 <input type="password" name="password" id="password" placeholder="Password" required>
		</div> 
		<input type="submit" value="Sign in" class="btn" />

	</form>
	</div>
<script>
        function adminLogin() {
            //alert('register');
            event.preventDefault();
            var name = document.getElementById("name").value;
            var password = document.getElementById("password").value;
            var formData = "name=" + name + "&password=" + password;
            console.log(formData);
            //var url = "http://localhost:8080/charityapp-api/AdminLoginServlet?" + formData;
            var url="http://localhost:9000/adminLogin?"+formData;
            console.log(url);
            var formData = {};
            $.post(url, function(response) {
                console.log(response);
                console.log(response.errorMessage);
                var msg=JSON.parse(response);
                //alert(msg);
                
                if (msg.errorMessage!=null) {
                    alert("Invalid Username/Password");
                } else {
                    //alert("valid Username/Password");
                    window.location.href = "?pageName=adminFeatures.jsp";
                }
            });
        }
    </script>
 </body>


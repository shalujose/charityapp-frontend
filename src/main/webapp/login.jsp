<div>
<h2>Please sign in</h2>
<br>

<form onsubmit="login()">

<input type="email" name="email" id="email" pattern="[a-z0-9._%+-]+@[a-z0-9.-]+\.[a-z]{2,}$" title="Enter valid Emailid" placeholder="Email address" required autofocus><br><br>
<input type="password" name="password" id="password" placeholder="password" required><br>
<br>
<input type = "submit" value = "Sign in" class="btn-primary"/>

</form>
<br><a href="?pageName=register.jsp">New User?</a>
<script>
        function login() {
            //alert('register');
            event.preventDefault();
            var email = document.getElementById("email").value;
            var password = document.getElementById("password").value;
            var formData = "email=" + email + "&password=" + password;
            console.log(formData);
            alert(formData);
            var url = "http://localhost:8080/charityapp-api/LoginServlet?" + formData;
            console.log(url);
            
            var formData = {};
            $.get(url, function(response) {
                console.log(response);
                console.log(response.errorMessage);
                //localStorage.setItem("LOGGED_IN_USER",JSON.Stringify(response));
                var msg=JSON.parse(response);
                //alert(msg);
                
                if (msg.errorMessage!=null) {
                    alert("Invalid Username/Password");
                } else {
                    alert("Successfully loged in");
                    window.location.href = "?pageName=donorFeatures.jsp";
                }
            });
        }
    </script>
</div>

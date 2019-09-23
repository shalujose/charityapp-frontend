
<style>
.btn-primary {
    color: #fff;
    background-color: #0275d8;
    border-color: #0275d8;
    display: inline-block;
    padding: 3px 30px;
  font-size: 18px;
  margin: 2px 2px;
  cursor: pointer;
    
    </style>

<body style="text-align:center">
<jsp:include page="header.jsp"></jsp:include>
<br><br><br>
<h2>Admin sign in</h2>
<br>

<form onsubmit="adminLogin()">

<input type="text" name="name" id="name" placeholder="Enter user name" required><br><br>
<input type="password" name="password" id="password" placeholder="Password" required><br>
<br>
<input type = "submit" value = "Sign in" class="btn-primary"/>

</form>

<script>
        function adminLogin() {
            //alert('register');
            event.preventDefault();
            var name = document.getElementById("name").value;
            var password = document.getElementById("password").value;
            var formData = "name=" + name + "&password=" + password;
            console.log(formData);
            //alert(formData);
            var url = "http://localhost:8080/charityapp-api/AdminLoginServlet?" + formData;
            console.log(url);
            //alert(url);
            var formData = {};
            $.get(url, function(response) {
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


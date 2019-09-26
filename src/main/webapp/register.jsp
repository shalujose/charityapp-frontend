<html>
<head>

<script src="js/jquery.min.js"></script>
</head>
<div>
<h2>Register Now</h2>

<form onsubmit="register()">
<br><br>

Name <input type="text" name="name" id="name" placeholder="Enter your name" required autofocus><br><br>

Gender <input type="radio" name="gender" value="M" id="gender" required>Male
<input type="radio" name="gender" id="gender" value="F" required>Female <br><br>

Age <input type="number" min=18 max=80 name="age" id="age" required><br><br>
Email <input type="email" name="email" id="email" pattern="[a-z0-9._%+-]+@[a-z0-9.-]+\.[a-z]{2,}$" required><br><br>
Phone <input type="number" name="phone" id="phone" required><br><br>
Password <input type="password" name="password" id="password" pattern="(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{8,}" title="Must contain at least one number and one uppercase and lowercase letter, and at least 8 or more characters" placeholder="Please set your password" required><br><br>
<input type = "submit" value = "Submit" class="btn btn-success" />
&nbsp;&nbsp;<input type = "reset" value = "Reset" class="btn btn-success" onclick="window.location.href ='?pageName=register.jsp';"/>

</form>
<script type="text/javascript">

 function register()
{
	event.preventDefault();
	var name = document.getElementById("name").value;
	var gender = document.querySelector('input[name="gender"]:checked').value;
	var age = document.getElementById("age").value;
	var email = document.getElementById("email").value;
	var phone = document.getElementById("phone").value;
	var password=document.getElementById("password").value;
	
	var formData = "name=" +name + "&gender=" +gender+ "&age=" +age+ "&email=" +email+ "&phone="+ phone +"&password="+ password;
	var url = "http://localhost:8080/charityapp-api/RegisterServlet?"+ formData;
    console.log(url);
    $.get(url, function(response){
    console.log(response);
    var data= JSON.parse(response);
    if ( data.errorMessage != null) {
    	alert(data.errorMessage);
    }
    else
    	{
    	alert("successfully registered");
    	window.location.href= "?pageName=login.jsp";
    	}
       
    });
} 
</script>
</div>
</html>
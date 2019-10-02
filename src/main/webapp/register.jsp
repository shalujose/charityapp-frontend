<html>
<head>
<link rel="stylesheet" href="css/regstyle.css">
</head>
<div class="registration">
<h2>Register Now</h2>
<br>
<form onsubmit="register()">

<input type="text" name="name" id="name" placeholder="Enter your name" pattern="[A-Za-z]{1,32}" title="Name contains letters only" required autofocus><br><br>

<input type="radio" name="gender" value="M" id="gender" required><span id="gender">&nbsp;Male</span>&nbsp;
<input type="radio" name="gender" id="gender"  value="F" required><span id="gender">&nbsp;Female</span><br><br>

<input type="number" min=18 max=80 name="age" placeholder="Enter age" id="age"  required><br><br>

<input type="email" name="email" placeholder="Enter email id" id="email" pattern="[a-z0-9._%+-]+@[a-z0-9.-]+\.[a-z]{2,}$" title="Enter valid email id" required><br><br>

<input type="number" name="phone" placeholder="Enter phone number" id="phone" pattern="[0-9]{1,10}" title="Please enter exactly 10 digits" required><br><br>

<input type="password" name="password" id="password" pattern="(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{8,}" title="Must contain at least one number and one uppercase and lowercase letter, and at least 8 or more characters" placeholder="set your password" required><br><br>

<input type = "submit" value = "Submit" class="btn btn-success" />
&nbsp;&nbsp;<input type = "reset" value = "Reset" class="btn btn-success" onclick="window.location.href ='?pageName=register.jsp';"/>

</form>
</div>
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
</html>
<head>
<link rel="stylesheet" type="text/css" href="css/donor.css">
</head>
<jsp:include page="header1.jsp"></jsp:include>
<div id="name"></div>
<br>
<br>
<h2 style="color: purple">
	<b>CHARITY IS</b> WILLINGLY GIVEN <b>FROM HEART</b>
</h2>
<script>
	function displayName() {
		var user = JSON.parse(localStorage.getItem("LOGGED_IN_USER"));
		var name = user.name;
		document.getElementById("name").innerHTML = "Welcome ....." + name;
		return name;
	}

	displayName();
</script>
<script>
	function logout() {
		event.preventDefault();
		localStorage.clear();
		window.location.href = "?pageName=home.jsp";
	}
	
</script>
<div class="wrapper">

	<br>
	<br> <a href="?pageName=viewRequest.jsp" align="center"
		class="transparent_btn">View Fund Request</a><br>
	<br> <a href="?pageName=sendDonation.jsp" role="button"
		class="transparent_btn orange">Donate Now</a><br>
	<br>
	<!-- <a href="?pageName=viewTransaction.jsp" >View Donations</a><br>-->
	<a href="" onclick="logout()" class="transparent_btn blue">Logout</a><br>
</div>



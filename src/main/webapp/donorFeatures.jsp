<jsp:include page="header1.jsp"></jsp:include>
<div id="name"></div>
<script>
		function displayName() {
			var user = JSON.parse(localStorage.getItem("LOGGED_IN_USER"));
			var name = user.name;
			document.getElementById("name").innerHTML = "Welcome....." + name;
			return name;
		}
		displayName();
	</script>
<div>
<br>
<h2 style="color:purple"><b>CHARITY IS</b> WILLINGLY GIVEN <b>FROM HEART</b></h2>
<br><br>
<a href="?pageName=viewRequest.jsp">View Fund Request</a><br>
<a href="?pageName=sendDonation.jsp">Donate Now</a><br>
<!-- <a href="?pageName=viewTransaction.jsp">View Donations</a><br>-->
<a href="?pageName=home.jsp">Logout</a><br>
</div>
 


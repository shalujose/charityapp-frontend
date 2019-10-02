
<head>
<link rel="stylesheet" href="css/sendrequest.css">

</head>
<body style="text-align:center">
<jsp:include page="header1.jsp"></jsp:include>
<br><br>
<h2 style="color:#ff3300">GIVE A BIT. CHANGE A LOT</h2>
<br>

<script>
function sendResponse(){
    event.preventDefault();
    var fundrequest_id  = document.getElementById("fundrequest_id").value;
    var donor_id  = document.getElementById("donor_id").value;
    var amount = document.getElementById("amount").value;
    var formData = "fundrequest_id=" + fundrequest_id + "&donor_id="+ donor_id +"&amount="+ amount;
    console.log(formData);
    var url="http://localhost:8080/charityapp-api/DonateFundServlet?"+formData;
    	console.log(url);
    var formData = {};
    $.get(url, function(response){
            console.log(response);
            var msg = JSON.parse(response);
            if (msg.errorMessage!=null) {
                alert("Transaction failed");
            } else {
                alert("Your transaction successfully completed");
                window.location.href = "pageName=donorFeatures.jsp";
            }
            
    });
  }
</script>
<div class="registration">
<form onsubmit="sendResponse()">
<div>
<br>
<label>RequestId</label>
<select name="fundrequest_id" id="fundrequest_id">
	<option value="1">1<option>
	<option value="2">2</option>
	<option value="3">3</option>
	<option value="4">4</option>
	<option value="5">5</option>
	<option value="6">6</option>
</select>
<!-- <label>RequestId &nbsp;</label>
<input type="number" min="1" name="fundrequest_id" id="fundrequest_id" required autofocus /> -->
</div> 
<br>

<div>
<label>DonorId &nbsp;</label>
<input type="number" min="1" max="10" name="donor_id" id="donor_id" required/>
</div>
<br>

<div>
<label>Amount &nbsp;&nbsp;</label>
<input type="number" min="1" max="15000" name="amount" id="amount" required />
</div>
<br>
<div>
<button type="submit" class="button">Donate</button>&nbsp;&nbsp;
<button type="reset"  class="button">Clear</button>
</div>
<div class="headerContainerWrapper"></div>
<div class="bodyContainerWrapper">
<div class="bodyContainer">
<div class="padding">
<div align="right">
<a href="?pageName=donorFeatures.jsp" class="transparent_btn">Back</a>
</div>
</div>
</div>
</div>

</form>
</div>
</body>

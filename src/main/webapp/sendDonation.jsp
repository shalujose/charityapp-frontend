
<head>
<link rel="stylesheet" href="css/sendrequest.css">

</head>
<body style="text-align:center">
<jsp:include page="header1.jsp"></jsp:include>
<br><br>
<h2 style="color:#ff3300">GIVE A BIT. CHANGE A LOT</h2>
<br>

<script>
function listDonationRequests(){
    
	var url="http://localhost:8080/charityapp-api/ViewRequestServlet";
	$.getJSON(url,function(response){
	    var list = response;
	     document.getElementById("fundrequest_id").innerHTML="";
	    var content=" ";
		for(let ld of list){
		    console.log(list);
		    content += "<option value=" + ld.requestId + " style='background-color: black'>" +ld.requestId +"-" + ld.category_name +"( Rs."+ ld.amount +")" + "</option>";
		}
	console.log(content);
	document.getElementById("fundrequest_id").innerHTML =  content;
	});
	}
	
function sendResponse(){
    event.preventDefault();
    var fundrequest_id  = document.getElementById("fundrequest_id").value;

    var user = JSON.parse(localStorage.getItem("LOGGED_IN_USER"));
	var donor_id = user.id;
   // var donor_id  = document.getElementById("donor_id").value;
    var amount = document.getElementById("amount").value;
    var formData = "fundrequestId=" + fundrequest_id + "&donorId="+ donor_id +"&amount="+ amount;
    console.log(formData);
    //var url="http://localhost:8080/charityapp-api/DonateFundServlet?"+formData;
    var url="http://localhost:9000/donateFund?"+formData;
    	console.log(url);
    var formData = {};
    $.post(url, function(response){
            console.log(response);
            var msg = JSON.parse(response);
            if (msg.errorMessage!=null) {
                alert("Transaction failed");
            } else {
                alert("Your transaction successfully completed");
                window.location.href = "?pageName=donorFeatures.jsp";
            }
            
    });
  }
</script>
<div class="registration">
<form onsubmit="sendResponse()">
<div>
<br>
<label>Request&nbsp;</label>
<select name="fundrequest_id" id="fundrequest_id">
</select>
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
<script>
listDonationRequests();
</script>
</body>

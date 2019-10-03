<head>
<link rel="stylesheet" href="css/sendrequest.css">
</head>
<body style="text-align:center">
<jsp:include page="header2.jsp"></jsp:include>

<h3> Add Donations</h3>
<script>
function listcategoryDetails(){
    
	var url="http://localhost:8080/charityapp-api/ViewCategoryServlet";
	$.getJSON(url,function(response){
	    var list = response;
	     document.getElementById("category_Id").innerHTML="";
	    var content=" ";
	for(let ld of list){
	    console.log(list);
	  
	    content += "<option value=" + ld.category_id + " style='backgroud-color: Black'>" + ld.category_id + "-" + ld.category_name + "</option>";
	}
	console.log(content);
	document.getElementById("category_Id").innerHTML =  content;
	});
	}

function addRequest(){
    event.preventDefault();
    var category_Id  = document.getElementById("category_Id").value;
    var amount = document.getElementById("amount").value;
    var formData = "category_Id=" + category_Id + "&amount="+ amount;
    console.log(formData);
    var url="http://localhost:8080/charityapp-api/AddDonationRequestServlet?"+formData;
    	console.log(url);
    var formData = {};
    $.get(url, function(response){
            console.log(response);
            var msg = JSON.parse(response);
            if (msg.errorMessage!=null) {
                alert("Invalid request");
            } else {
                alert("Your request successfully completed");
                window.location.href = "?pageName=adminFeatures.jsp";
            }
            
    });
  }
</script>
<br><div  class="registration">
<form onsubmit="addRequest()">
<div>
<label>&nbsp;Category &nbsp;</label>
<select name="category_Id" id="category_Id">
</select>
</div>
<br/>
<div>
<label>&nbsp;Amount(Rs)&nbsp;</label>
<input type="number" min="50" max="15000" name="amount" id="amount"  required /></div>
<br/>
<div>
<button type="submit" class="button">Proceed</button>&nbsp;&nbsp;
<button type="reset" class="button">Clear</button>
</div>

<div class="headerContainerWrapper"></div>
<div class="bodyContainerWrapper">
<div class="bodyContainer">
<div class="padding">
<div align="right">
<a href="?pageName=adminFeatures.jsp" class="transparent_btn">Back</a>
</div>
</div>
</div>
</div>
</form>
</div>
<script>
listcategoryDetails();
</script>
</body>

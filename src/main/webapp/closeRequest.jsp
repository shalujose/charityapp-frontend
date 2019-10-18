
<head>
<script>
function listcategory(){
    
//var url="http://localhost:8080/charityapp-api/CloseRequestServlet";
var url="http://localhost:9000/list";
$.getJSON(url,function(response){
    var list = response;
     document.getElementById("tbody").innerHTML="";
    var content=" ";
for(let ld of list){
    console.log(list);
    content += "<tr>";
    content += "<td>" + ld.requestId + "</td>";
    content += "<td>" + ld.amount + "</td>";
    content += "<td>" + ld.totalAmount + "</td>";
    
    content += "</tr>";
}
console.log(content);
document.getElementById("tbody").innerHTML =  content;
});
}
</script>
</head>
<body style="text-align:center">
<jsp:include page="header2.jsp"></jsp:include>
<br><br>
<h5>Donation Details</h5>

<form onsubmit = "listcategory()"> </form> 
<div class="container-fluid">
   <div class="row">
       <div class="col">
           
           <table border="1" class="table table-condensed" id="tbl">
               <thead>
                   <tr>
                       <th>RequestId</th>
                       <th>Target Amount</th>
                       <th>Donated Amount</th>
                   </tr>
               </thead>
               <tbody id="tbody">
               </tbody>
           </table>
       </div>
   </div>
</div>
<script>
listcategory();

</script>
<div><br>
<form onsubmit="closeRequest()">
<label><b>Select the Request Id You want to close</b></label>
<select name="request_id" id="request_id">
</select>
&nbsp;
<input type="submit" value="Close Request">
</form>
</div>
<br><br>
<a href="?pageName=adminFeatures.jsp">Home</a>&nbsp;&nbsp;&nbsp;
<a href="?pageName=addCategory.jsp">New Category</a>

<script>
function listClose(){
    
	//var url="http://localhost:8080/charityapp-api/ViewRequestServlet";
	var url="http://localhost:9000/list";
	$.getJSON(url,function(response){
	    var list = response;
	     document.getElementById("request_id").innerHTML="";
	    var content=" ";
		for(let ld of list){
		    console.log(list);
		    content += "<option value=" + ld.requestId + " style='color: black'>" +ld.requestId +"-" +"( Rs."+ ld.amount +")" + "</option>";
		}
	console.log(content);
	document.getElementById("request_id").innerHTML =  content;
	});
	}

function closeRequest(){
    event.preventDefault();
    var request_id  = document.getElementById("request_id").value;

    var formData = "requestId=" + request_id;
    console.log(formData);
    //var url="http://localhost:8080/charityapp-api/DonateFundServlet?"+formData;
    var url="http://localhost:9000/CloseRequest?"+formData;
    	console.log(url);
    	var formData = {};
    $.post(url).then ( function(response) { 
        console.log("success");
        console.log(response);
        var msg=response;
      if(msg!=null) {
            alert(" Request Closed!!!");
            window.location.href = "?pageName=adminFeatures.jsp";
     }
    },
    function(response) {
        console.log("error");
        console.log(response);
        var msg=response.errorMessage;
      console.log(msg);
       if (msg.errorMessage!=null) {
            alert("Unable to close request!!!")
   
        } else if(msg!=null) {
            alert("Unable to Close request");
            window.location.href = "?pageName=closeRequest.jsp";
     }
    });
    }

	</script>
	<script>
	listClose();
	</script>
</body>

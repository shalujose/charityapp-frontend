
<head>
<script>
function listcategory(){
    
//var url="http://localhost:8080/charityapp-api/CloseRequestServlet";
var url="http://localhost:9000/closeRequest?";
$.getJSON(url,function(response){
    var list = response;
     document.getElementById("tbody").innerHTML="";
    var content=" ";
for(let ld of list){
    console.log(list);
    content += "<tr>";
    content += "<td>" + ld.requestId + "</td>";
    content += "<td>" + ld.requestAmount + "</td>";
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
<div><br><br>
<label><b>Enter the Request Id You want to close</b></label>
<input type="number" name="requestId" >
<input type="button" value="Close Request">
</div>
<br><br>
<a href="?pageName=adminFeatures.jsp">Home</a>&nbsp;&nbsp;&nbsp;
<a href="?pageName=addCategory.jsp">New Category</a>
</body>

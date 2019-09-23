  
<div>
<script>
function listDonation(){
    
var url="http://localhost:8080/charityapp-api/ViewRequestServlet";
$.getJSON(url,function(response){
    var list = response;
     document.getElementById("tbody").innerHTML="";
    var content=" ";
for(let ld of list){
    console.log(list);
    content += "<tr>";
    content += "<td>" + ld.requestId + "</td>";
    content += "<td>" + ld.category_id + "</td>";
    content += "<td>" + ld.category_name + "</td>";
    content += "<td>" + ld.dateOfRequest + "</td>";
    content += "<td>" + ld.amount + "</td>";
    content += "<td>" + ld.status + "</td>";
    content += "</tr>";
}
console.log(content);
document.getElementById("tbody").innerHTML =  content;
});
}
</script>

<jsp:include page="header1.jsp"></jsp:include>

<h3>GIVE A BIT. CHANGE A LOT</h3>
<br>
<form onsubmit = "listDonation()"> </form> 
<div class="container-fluid">
   <div class="row">
       <div class="col">
           
           <table border="1" class="table table-condensed" id="tbl">
               <thead>
                   <tr>
                       <th>RequestId</th>
                       <th>CategoryId</th>
                       <th>CategoryName</th>
                       <th>Date-Of-Request</th>
                       <th>Amount</th>
                       <th>Status</th>
                   </tr>
               </thead>
               <tbody id="tbody">
               </tbody>
           </table>
       </div>
   </div>
</div>
<script>
listDonation();
</script>
<br>
<div style="text-align:center">
<a href="?pageName=donorFeatures.jsp">Home</a>&nbsp;&nbsp;&nbsp;&nbsp;
<a href="?pageName=sendDonation.jsp">Donate Now</a>
</div>
</div>
<div>
<script>
function listDonation(){
    
var url="http://localhost:8080/charityapp-api/ViewDonationResponseServlet";
$.getJSON(url,function(response){
    var list = response;
     document.getElementById("tbody").innerHTML="";
    var content=" ";
for(let ld of list){
    console.log(list);
    content += "<tr>";
    content += "<td>" + ld.transaction_id + "</td>";
    content += "<td>" + ld.date_of_transaction + "</td>";
    content += "<td>" + ld.fundrequest_id + "</td>";
    content += "<td>" + ld.cate_id + "</td>";
    content += "<td>" + ld.donor_id + "</td>";
    content += "<td>" + ld.name + "</td>";
    content += "<td>" + ld.amount + "</td>";
    
    content += "</tr>";
}
console.log(content);
document.getElementById("tbody").innerHTML =  content;
});
}
</script>
<jsp:include page="header2.jsp"></jsp:include>

<h3>Donation Details</h3>
<br>
<form onsubmit = "listDonation()"> </form> 
<div class="container-fluid">
   <div class="row">
       <div class="col">
           
           <table border="1" class="table table-condensed" id="tbl">
               <thead>
                   <tr>
                       <th>TransactionId</th>
                       <th>Date-of-transaction</th>
                       <th>FundRequestId</th>
                       <th>CategoryId</th>
                       <th>DonorId</th>
                       <th>Donor-Name</th>
                       <th>Amount</th>
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
<a href="?pageName=adminFeatures.jsp">Home</a>&nbsp;&nbsp;&nbsp;
<a href="?pageName=sendRequest.jsp">New Fund Request</a>
</div>

<div>
<script>
function listcategory(){
    
//var url="http://localhost:8080/charityapp-api/ViewCategoryServlet";
var url="http://localhost:9000/viewCategory";
$.getJSON(url,function(response){
    var list = response;
     document.getElementById("tbody").innerHTML="";
    var content=" ";
for(let ld of list){
    console.log(list);
    content += "<tr>";
    content += "<td>" + ld.categoryId + "</td>";
    content += "<td>" + ld.categoryName + "</td>";
    
    content += "</tr>";
}
console.log(content);
document.getElementById("tbody").innerHTML =  content;
});
}
</script>

<jsp:include page="header2.jsp"></jsp:include>
<br><br><br>
<h5>Category Details</h5>

<form onsubmit = "listcategory()"> </form> 
<div class="container-fluid">
   <div class="row">
       <div class="col">
           
           <table border="1" class="table table-condensed" id="tbl">
               <thead>
                   <tr>
                       <th>CategoryId</th>
                       <th>Category-Name</th>
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

<a href="?pageName=adminFeatures.jsp">Home</a>&nbsp;&nbsp;&nbsp;
<a href="?pageName=addCategory.jsp">New Category</a>
</div>

<head>
<style>
.button {
  border: none;
  color: white;
  padding: 8px 20px;
  text-align: center;
  text-decoration: none;
  display: inline-block;
  font-size: 16px;
  margin: 4px 2px;
  cursor: pointer;
  background-color: #4CAF50;
}
</style>
</head>
<body background="images/cl1.jpg" style="text-align:center">
<jsp:include page="header2.jsp"></jsp:include>
<br>
<h3> Add Donation Categories</h3>
<script>
function addCategory(){
    event.preventDefault();
    var category_name  = document.getElementById("category_name").value;
    var formData = "category_name=" + category_name;
    console.log(formData);
    //var url="http://localhost:8080/charityapp-api/AddCategoryServlet?"+formData;
    var url="http://localhost:9000/addCategory?"+formData;
    	console.log(url);
    var formData = {};
    $.post(url).then ( function(response) {
        console.log("success");
        console.log(response);
        var msg=response;
      if(msg!=null) {
            alert(" Category Added Successfully");
            window.location.href = "?pageName=viewCategory.jsp";
     }
    },
    function(response) {
        console.log("error");
        console.log(response);
        var msg=response;
      console.log(msg);
       if (msg.errorMessage!=null) {
            alert("Invalid Category!!!")
   
        } else if(msg!=null) {
            alert("Category Added Successfully");
            window.location.href = "?pageName=viewCategory.jsp";
     }
    });
    }
</script>
<br><br>
<form onsubmit="addCategory()">

<label><b>Category Type: &nbsp;</b></label>
<input type="text" name="category_name" id="category_name" pattern="[A-Za-z]{1,32}" title="Category Name contains letters only" required autofocus />


&nbsp;&nbsp;&nbsp;<button type="submit" class="button">Add Category</button>
</form>
<br/>
</body>

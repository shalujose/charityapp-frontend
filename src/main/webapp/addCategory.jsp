
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
    $.post(url, function(response){
            console.log(response);
            var msg = JSON.parse(response);
            if (msg.errorMessage!=null) {
                alert("Invalid Category");
            } else {
                alert("Your category added successfully");
                window.location.href = "?pageName=viewCategory.jsp";
            }
            
    });
  }
</script>
<br><br>
<form onsubmit="addCategory()">

<label><b>Category Type: &nbsp;</b></label>
<input type="text" name="category_name" id="category_name" required autofocus />


&nbsp;&nbsp;&nbsp;<button type="submit" class="button">Add Category</button>
</form>
<br/>
</body>

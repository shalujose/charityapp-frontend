<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="css/bootsrap.min.css">
<script type="css/bootstrap.min.js"></script>
<script src="js/jquery.min.js"></script>
<style>
.btn-primary {
    color: #fff;
    background-color: #0275d8;
    border-color: #0275d8;
    display: inline-block;
    padding: 3px 30px;
  font-size: 18px;
  margin: 2px 2px;
  cursor: pointer;
    </style>

</head>
<body style="text-align:center">
<br><br>

<jsp:include page="header.jsp"></jsp:include>

<br>

 <div class="view" id="view">
        <%
            String pageName = request.getParameter("pageName");

            if (pageName == null || "".equals(pageName)) {
                pageName = "home.jsp";
            }
            // out.println(pageName);
        %>

        <jsp:include page="<%=pageName%>"></jsp:include>
    </div>
 
 
</body>
</html>

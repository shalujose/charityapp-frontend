<!DOCTYPE html>
<head>
 <title>Charity</title>
  <link rel="stylesheet" href="css/bootstrap.min.css">
 <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script src = "js/bootstrap.min.js"></script>
<script src="js/jquery.min.js"></script>
<style>
body {background-color: #F5F5DC;}
</style>
 </head>
<body>
<div class="container">
  <!-- Fixed navbar -->
  <nav class="navbar navbar-expand-md navbar-dark fixed-top bg-dark" style="background-color:#050942">
    <a class="navbar-brand" href="#">Charity</a>
    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarCollapse" aria-controls="navbarCollapse" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarCollapse">
      <ul class="navbar-nav mr-auto">
        <li class="nav-item">
          <a class="nav-link" href="?pageName=donorFeatures.jsp">Home <span class="sr-only">(current)</span></a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="?pageName=viewRequest.jsp">View Fund Request</a>
        </li>
         <li class="nav-item">
          <a class="nav-link" href="?pageName=sendDonation.jsp">Donate Now</a>
        </li>
         <li class="nav-item">
          <a class="nav-link" href="" onclick="logout()">Logout</a>
        </li>      
      </ul>
    </div>
     </nav>
    </div>
    <script>
    function logout()
    {
        event.preventDefault();
        localStorage.clear();
        window.location.href="?pageName=home.jsp";
    }
    </script>
</body>
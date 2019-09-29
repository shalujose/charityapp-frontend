
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<script type="text/javascript">
function logout(){
localStorage.clear();
window.location.href = "?pageName=home.jsp";
}
logout();
</script>
</body>
</html>
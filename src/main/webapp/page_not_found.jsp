
<%@ page isErrorPage="true"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Error Page</title>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-4bw+/aepP/YC94hEpVNVgiZdgIC5+VKNBQNGCHeKRQN+PtmoHDEXuppvnDJzQIu9"
	crossorigin="anonymous">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/js/bootstrap.bundle.min.js"
	integrity="sha384-HwwvtgBNo3bZJJLYd8oVXjrBZt8cqVSpeBNS5n7C8IVInixGAoxmnlMuBnhbgrkm"
	crossorigin="anonymous"></script>

<style>
@import url('https://fonts.googleapis.com/css?family=Montserrat:300');
body{
  background: #3498DB;
  color: #fff;
  font-family: 'Montserrat', sans-serif;
  font-size: 16px;
}
h1{
  font-size: 30vh;
}
h2 span{
  font-size: 4rem;
  font-weight: 600;
}
a:link, a:visited{
  text-decoration: none;
  color: #fff;
}
h3 a:hover{
  text-decoration: none;
  background: #fff;
  color: #3498DB;
  cursor: pointer;
}
</style>
</head>
<body>

	<div class="container">
<h1>:(</h1><br>
<h2>A <span>404</span> error occured, Page not found, check the URL and try again.</h2><br><br>
  <h3><a href="index.jsp">Return to home</a>&nbsp;|&nbsp;<a href="javascript:history.back()">Go Back</a></h3>
</div>
</body>
</html>
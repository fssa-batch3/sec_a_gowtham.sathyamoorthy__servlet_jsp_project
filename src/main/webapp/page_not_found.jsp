
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
body {
	font-family: Arial, sans-serif;
	background-color: #F0F0F0;
	display: flex;
	justify-content: center;
	align-items: center;
	height: 100vh;
	margin: 0;
}

.card {
	background-color: white;
	border-radius: 10px;
	box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2);
	padding: 20px;
	text-align: center;
	height: 100px
}

h1 {
	color: #333;
}

p {
	color: #777;
}

a {
	color: #007BFF;
	text-decoration: none;
}

a:hover {
	text-decoration: underline;
}
</style>
</head>
<body>

	<div class=card>
		<jsp:include page="header.jsp"></jsp:include>
		<h1>Error Page</h1>
		<i class="glyphicon glyphicon-remove"
			style="font-size: 48px; color: red;"></i>
		<p>Page doesn't exist</p>
		<p>
			Please go to <a href="home.jsp">home</a> page
		</p>
	</div>
</body>
</html>
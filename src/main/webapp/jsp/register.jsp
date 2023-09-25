<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>

<link rel="stylesheet"
	href="<%=request.getContextPath()%>/assets/css/style.css" />
<link
	href="https://fonts.googleapis.com/css2?family=Roboto&display=swap"
	rel="stylesheet" />
</head>
<style>
form {
	max-width: 400px;
	margin: 0 auto;
	padding: 20px;
	border: 1px solid #ccc;
	border-radius: 5px;
	box-shadow: 0px 0px 10px rgba(0, 0, 0, 0.1);
	background-color: #f9f9f9;
	margin-top: 20px
}

label {
	display: block;
	margin-bottom: 5px;
	font-weight: bold;
}

input[type="text"], input[type="email"], input[type="tel"], input[type="password"]
	{
	width: 100%;
	padding: 10px;
	margin-bottom: 10px;
	border: 1px solid #ccc;
	border-radius: 3px;
	font-size: 16px;
}

input[type="submit"] {
	background-color: #007bff;
	color: #fff;
	border: none;
	padding: 10px 20px;
	border-radius: 3px;
	font-size: 18px;
	cursor: pointer;
	height: 50px;
	margin-top: 18px
}

a button {
	background-color: #555;
	color: #fff;
	border: none;
	padding: 10px 20px;
	border-radius: 3px;
	font-size: 18px;
	text-decoration: none;
	margin-left: 150px;
	width: 100px;
}

br {
	clear: both;
}

h1 {
	text-align: center;
	color: #333;
	margin-top: 60px;
}

a {
	text-align: center;
	display: block;
	margin-top: 20px;
}

input[type="submit"]:hover, a button:hover {
	background-color: #0056b3;
}

.pass {
	display: flex;
}

.error {
	color: red;
	width: 40%;
	padding: 10px;
	margin: auto;
	text-align: center;
	position: absolute;
	top: 93%;
	left: 50%;
	transform: translate(-50%, -50%);
}
</style>
<body>

	<jsp:include page="header.jsp"></jsp:include>
	<h1>User Registration Form</h1>
	<%
	String errorMessage = (String) request.getAttribute("errorMessage");
	if (errorMessage != null) {
	%>
	<p class='error'><%=errorMessage%></p>
	<%
	}
	%>
	<form action="<%=request.getContextPath()%>/register" method="post">
		<label for="name">User name:</label> <input type="text" id="name"
			name="name" value="${name}" required><br> <br> <label
			for="email">Email:</label> <input type="email" id="email"
			name="email" value="${email}" required><br> <br> <label
			for="phone">Phone:</label> <input type="tel" id="phone" name="phone"
			value="${phone}" required><br> <br> <label
			for="password">Password:</label> <input type="password" id="password"
			name="password" value="${password}" required><br>
		<div class="pass">
			<input type="submit" value="Register">
		</div>
	</form>
	<div class="pass">
		<a href="<%=request.getContextPath()%>/jsp/loggin.jsp"><button onclick="login()">Login</button></a>
	</div>

</body>

</html>
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
	width: 350px;
	margin: 0 auto;
	padding: 20px;
	border: 1px solid #ccc;
	border-radius: 5px;
	box-shadow: 0px 0px 10px rgba(0, 0, 0, 0.1);
	background-color: #f9f9f9;
	margin-top: 180px;
	margin-left:150px;
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
	margin-top:100px;
	
}

a {
	text-align: center;
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

.small-text {
	text-align: center; /* Center the text horizontally */
	margin-top: 20px; /* Add some top margin for spacing */
}

.small-text a {
	color: #007bff; /* Link color */
	text-decoration: none; /* Remove underline from the link */
	font-weight: bold; /* Make the link text bold */
	transition: color 0.3s ease; /* Smooth color transition on hover */
	/* Optional: Add some padding and background color to the link for better visibility on hover */
	padding: 2px 5px;
	background-color: #f7f7f7;
	border-radius: 5px;
}

.small-text a:hover {
	color: #0056b3; /* Change link color on hover */
}

.para {
	margin-left: 655px;

}
.users{
display:flex;
}
.user3{
height:600px;
width:650px;

}
</style>
<body>

	<jsp:include page="header.jsp"></jsp:include>
	<div class=users>
	<div class = user1>
	<h1>User Registration Form</h1>
	<img src = "<%=request.getContextPath()%>/assets/images/user_img.jpg" class ="user3">
	</div>
	<div class=user2>
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
		</div>
		<%
	String errorMessage = (String) request.getAttribute("errorMessage");
	if (errorMessage != null) {
	%>
	<p class='error'><%=errorMessage%></p>
	<%
	}
	%>
	</form>
	</div>
	
	<small><p class="para">
			If you already sign in! Please <a href="loggin.jsp">login..</a>
		</p></small>

</body>

</html>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
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
}

label {
	display: block;
	margin-bottom: 5px;
	font-weight: bold;
}

input[type="email"], 
input[type="password"] {
	width: 100%;
	padding: 10px;
	margin-bottom: 15px;
	border: 1px solid #ccc;
	border-radius: 3px;
	font-size: 16px;
}

button[type="submit"] {
	background-color: #007bff;
	color: #fff;
	border: none;
	padding: 10px 20px;
	border-radius: 3px;
	font-size: 18px;
	cursor: pointer;
	
}
#password{

	border: none;
	padding: 10px 20px;
	border-radius: 3px;
	font-size: 18px;
	width: 100%;
	padding: 10px;
	
}


/* Style for the heading */
h1 {
	text-align: center;
	color: #333;
	margin-bottom: 20px;
}

p {
	color: #ff0000;
	text-align: center;
	margin-bottom: 10px;
}

button[type="submit"]:hover {
	background-color: #0056b3;
}

.pass {
	display: flex;
}
</style>

<body>
	<jsp:include page="header.jsp"></jsp:include>

	<h1>Login Page</h1>
	<%
	String errorMessage = request.getParameter("errorMessage");
	if (errorMessage != null) {
		out.println("<p>" + errorMessage + "</p>");
	}
	%>
	<form action="login" method="post">

		<label>Email: </label> <input type="email" name="email"
			placeholder="Enter email"> <br /> 

	<label>Password </label><br> <input type="password" name="password"	id="password"
			placeholder="Enter password"> <br /> 
		 <br /> <input type="checkbox"
			onclick="myFunction()"> Show Password<br><br>

		<button type="submit">Submit</button>
	</form>


	<script>
		function myFunction() {
			var x = document.getElementById("password");
			if (x.type === "password") {
				x.type = "text";
			} else {
				x.type = "password";
			}
		}
	</script>
</body>
</html>


























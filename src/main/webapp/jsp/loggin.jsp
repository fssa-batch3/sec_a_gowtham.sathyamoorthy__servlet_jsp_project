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
	margin-top: 100px
}

label {
	display: block;
	margin-bottom: 5px;
	font-weight: bold;
}

input[type="email"], input[type="password"] {
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

#password {
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
	margin-top: 100px;
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

.snip * {
  box-sizing: border-box;
  -webkit-transition: all 0.35s ease;
  transition: all 0.35s ease;
}
.snip li {
  display: inline-block;
  list-style: outside none none;
  margin: 0 1.5em;
  overflow: hidden;
}
.snip a {
  padding: 0.3em 0;
  color: rgba(255, 255, 255, 0.5);
  position: relative;
  display: inline-block;
  letter-spacing: 1px;
  margin: 0;
  text-decoration: none;
}
.snip a:before,
.snip a:after {
  position: absolute;
  -webkit-transition: all 0.35s ease;
  transition: all 0.35s ease;
}
.snip a:before {
  top: 100%;
  display: block;
  height: 3px;
  width: 100%;
  content: "";
  background-color: #cfcccc;
}
.snip a:after {
  padding: 0.3em 0;
  position: absolute;
  top: 100%;
  left: 0;
  content: attr(data-hover);
  color: white;
  white-space: nowrap;
}
.snip li:hover a,
.snip .current a {
  transform: translateY(-100%);
}
.navbar {
  /* margin-right: 50px; */
  padding-right: 40px;
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
	<form action="<%=request.getContextPath()%>/login" method="post">

		<label>Email: </label> <input type="email" name="email"
			placeholder="Enter email"> <br /> <label>Password </label><br>
		<input type="password" name="password" id="password"
			placeholder="Enter password"> <br /> <br /> <input
			type="checkbox" onclick="myFunction()"> Show Password<br>
		<br>

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


























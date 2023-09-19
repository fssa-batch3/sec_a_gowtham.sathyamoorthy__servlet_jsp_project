<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<h1>Driver Registration Form</h1>
	<form action="<%=request.getContextPath()%>/DriverRegistrationServlet" method="post">
		<label for="name">User name:</label> <input type="text" id="name"
			name="name" required><br>
		<br> <label for="email">Email:</label> <input type="email"
			id="email" name="email" required><br>
			<br> <label for="phone">Phone:</label> <input type="phone"
			id="phone" name="phone" required><br>
		<br> <label for="password">Password:</label> <input
			type="password" id="password" name="password" required><br><br>
			<label for="password">license number</label> <input
			type="text" id="password" name="license" required><br>
			
		<br> <input type="submit" value="Register">
	</form>
</body>
</html>
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

/* Style for form labels */
label {
  display: block;
  margin-bottom: 5px;
  font-weight: bold;
}

/* Style for form inputs */
input[type="text"],
input[type="email"],
input[type="phone"],
input[type="password"] {
  width: 100%;
  padding: 10px;
  margin-bottom: 15px;
  border: 1px solid #ccc;
  border-radius: 3px;
  font-size: 16px;
}

/* Style for the submit button */
input[type="submit"] {
  background-color: #007bff;
  color: #fff;
  border: none;
  padding: 10px 20px;
  border-radius: 3px;
  font-size: 18px;
  cursor: pointer;
}

/* Style for the login button */
a button {
  background-color: #555;
  color: #fff;
  border: none;
  padding: 10px 20px;
  border-radius: 3px;
  font-size: 18px;
  text-decoration: none;
}

/* Add some spacing between form elements */
br {
  clear: both;
}

/* Style for the heading */
h1 {
  text-align: center;
  color: #333;
  margin-bottom: 20px;
}

/* Style for the login button container */
a {
  text-align: center;
  display: block;
  margin-top: 20px;
}

/* Hover effect for buttons */
input[type="submit"]:hover,
a button:hover {
  background-color: #0056b3;
}
</style>
<body>
	<h1>User Registration Form</h1>
	<form action="register" method="post">
		<label for="name">User name:</label> <input type="text" id="name"
			name="name" required><br> <br> <label for="email">Email:</label>
		<input type="email" id="email" name="email" required><br>
		<br> <label for="phone">Phone:</label> <input type="phone"
			id="phone" name="phone" required><br> <br> <label
			for="password">Password:</label> <input type="password" id="password"
			name="password" required><br> <input type="submit"
			value="Register">
	</form>

	<a href="loggin.jsp"><button onclick="login()">Login</button></a>

</body>

</html>
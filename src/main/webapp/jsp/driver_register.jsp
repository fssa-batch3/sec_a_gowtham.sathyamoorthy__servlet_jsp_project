<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<style>
  @import url("https://fonts.googleapis.com/css2?family=Barlow&family=Barlow+Condensed:wght@600;700&family=Chivo:ital,wght@0,600;1,600&family=Outfit:wght@500&family=Space+Mono:wght@700&display=swap");

    

/* Form container */
form {
  background-color: #fff;
  max-width: 400px;
  margin: 20px auto;
  margin-top:70px;
  margin-left:100px;
  padding: 20px;
  border-radius: 5px;
  box-shadow: 0px 0px 10px rgba(0, 0, 0, 0.2);
}

/* Heading styles */
h1 {
  text-align: center;
  color: #333;
  margin-left:20px;
  margin-top:130px;
}
h2{
text-align: center;
  color: #333;
  margin-right:50px;
}
/* Label styles */
label {
  display: block;
  margin-bottom: 5px;
  font-weight: bold;
  color: #555;
}

/* Input styles */

input[type="text"], input[type="email"], input[type="tel"], input[type="password"]
	{
	width: 100%;
	padding: 10px;
	margin-bottom: 10px;
	border: 1px solid #ccc;
	border-radius: 5px;
	font-size: 16px;
}
/* Submit button styles */
input[type="submit"] {
  background-color: #007bff;
  color: #fff;
  padding: 10px 20px;
  border: none;
  border-radius: 4px;
  cursor: pointer;
  font-weight: bold;
}

input[type="submit"]:hover {
  background-color: #0056b3;
}


.para {
	margin-left: 200px;
	margin-top: 25px;
}
.drivers1{


        height: 500px;
        width: 800px;
        margin-left:100px;
        margin-top:100px;
}
.drove{

display: flex;
}
</style>
<body>
   <jsp:include page="DriverHeader.jsp"></jsp:include>
   <div class="drove">
<div class= drivers>
<h1>Hii Partner !</h1>
<img src="<%=request.getContextPath()%>/assets/images/driverreg.jpg"  class ="drivers1">

</div>
<div class="driver_id">
	<form action="<%=request.getContextPath()%>/DriverRegistrationServlet" method="post">
	
<h2>Driver Registration Form</h2>
		<label for="name">User name :</label> <input type="text" id="name"
			name="name" required><br>
		<br> <label for="email">Email :</label> <input type="email"
			id="email" name="email" required><br>
			<br> <label for="phone">Phone :</label> <input type="tel"
			id="phone" name="phone" required><br>
		<br> <label for="password">Password :</label> <input
			type="password" id="password" name="password" required><br><br>
			<label for="password">license number :</label> <input
			type="text" id="password" name="license" required><br>
			
		<br> <input type="submit" value="Register">
		<%
	String errorMessage = (String) request.getAttribute("errorMessage");
	if (errorMessage != null) {
	%>
	<p  style='color: red;'  class='error'><%=errorMessage%></p>
	<%
	}
	%>
	</form>
	<small><p class="para">
			If you already sign in! Please <a href="loggin.jsp">login..</a>
		</p></small>
	</div>
	</div>
</body>
</html>
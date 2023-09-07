<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<style>
#cars_detail {
	max-width: 400px;
	margin: 0 auto;
	padding: 20px;
	border: 1px solid #ccc;
	border-radius: 5px;
	box-shadow: 0px 0px 10px rgba(0, 0, 0, 0.1);
	background-color: #f9f9f9;
	margin-top:100px
}

label {
	display: block;
	margin-bottom: 5px;
	font-weight: bold;
}

input[type="url"], input[type="text"], input[type="textarea"] {
	width: 100%;
	padding: 10px;
	margin-bottom: 15px;
	border: 1px solid #ccc;
	border-radius: 3px;
	font-size: 16px;
}

#ca_r4 {
	background-color: #007bff;
	color: #fff;
	border: none;
	padding: 10px 20px;
	border-radius: 3px;
	font-size: 18px;
	cursor: pointer;
}

h1 {
	text-align: center;
	color: #333;
	margin-bottom: 20px;
}

.l_1, .l_2, .l_3, .l_4 {
	margin-bottom: 15px;
}

#ca_r4:hover {
	background-color: #0056b3;
}
</style>

<body>
	<jsp:include page="header.jsp"></jsp:include><div class="list_1">
		<form action="CarRegister" method="post" id="cars_detail">
			<div class="l_1">
				<label>Car-Image:</label> <input type="url" id="ca_r" name="ca_r"
					required /><br />
			</div>
			<div class="l_2">
				<label>Car-Reg-No:</label> <input type="text" id="ca_r1"
					name="ca_r1" value="TN 07 BD 1234" required /><br />
			</div>
			<div class="l_3">
				<label>Car-Model:</label> <input type="text" id="ca_r2" name="ca_r2"
					required /><br>
			</div>
			<div class="l_4">
				<label>Car-Details: </label> <input type="text" id="ca_r3"
					name="ca_r3" required /><br />
			</div>
			<input type="submit" id="ca_r4" />
		</form>
	</div>
</body>
</html>
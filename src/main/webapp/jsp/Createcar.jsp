<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8" />
<meta http-equiv="X-UA-Compatible" content="IE=edge" />
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<link rel="stylesheet" href="../assets/css/car_list.css" />
<link
	href="https://fonts.googleapis.com/css2?family=Roboto&display=swap"
	rel="stylesheet" />
<title>Document</title>
</head>
<body>
	   <jsp:include page="DriverHeader.jsp"></jsp:include>


	<div class="list_1">
		<form action="<%=request.getContextPath()%>/CarRegister" method="post"
			id="cars_detail">
			<%
			String errorMessage = request.getParameter("errorMessage");
			if (errorMessage != null) {
				out.println("<p>" + errorMessage + "</p>");
			}
			%>
			<div class="l_1">
				<label>Car-Image:</label> <input type="url" id="ca_r" name="ca_r"
					required /><br />
			</div>
			<div class="l_2">
				<label>Car-Reg-No:</label> <input type="text" id="ca_r1"
					name="ca_r1" placeholder="Tn 07 bd 1234" required /><br />
			</div>
			<div class="l_3">
				<label>Car-Model:</label> <input type="text" id="ca_r2" name="ca_r2"
					pattern="[A-Za-z0-9 ]{1,18}" required /><br />
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

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="<%=request.getContextPath()%>/assets/css/list_editcar.css" />
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<nav id="js_header">
		<!-- header part -->
		<div class="logo">
			<img src="../assets/images/Turbo trip.png" alt="logo" />
		</div>
		<ul class="snip1143">
			<li class="current"><a href="#" data-hover="Home">Home</a></li>
			<li><a href="../pages/About us.html" data-hover="About Us">About
					Us</a></li>
			<li><a href="../pages/dri_notify.html" data-hover="Notification">Notification</a>
			</li>
			<li><a href="../pages/contact us.html" data-hover="Contact">Contact</a>
			</li>
		</ul>

		<div class="user_profile">
			<a href="../pages/dri_profile.html"> <img
				src="../assets/images/gpro.png" alt="use_pro" class="user_profile1" /></a>
		</div>
	</nav>
	<div class="list_1">
		<form method="post"
			action="<%=request.getContextPath()%>/UpdateCarServlet"
			id="cars_detail">
			<h1>Change Your Car details here :</h1>
			 <div class="l_2">
          <label>Car-Reg-No:</label>
          <input
            type="text"
            id="ca_r1"
            name="carNo"
            required
            pattern="^[A-Za-z]{2}[-][0-9]{1,2}[-][A-Za-z]{1,2}[-][0-9]{3,4}$"
          /><br />
			<div class="l_1">
				<label>Car-Image:</label> <input type="text" id="ca_r"
					name="carImage" required /><br />
			</div>
			<label id=lab>Car-Details: </label>
			<div class="l_4">

				<input type="text" id="ca_r3" name="description" required
					 /><br />
			</div>
			<div class="btn">
				<input type="submit" value="Update Car" id="hello4" /> <input
					type="submit" value="Delete" id="hello5" />
			</div>
		</form>
	</div>
</body>
</html>
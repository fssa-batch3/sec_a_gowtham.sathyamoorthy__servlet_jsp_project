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
	<nav id="js_header">
		<header>
			<!-- header part -->
			<div class="logo">
				<img src="../assets/images/Turbo trip.png" alt="logo" />
			</div>
			<ul class="snip1143">
				<li class="current"><a href="../pages/drive_with_us.html"
					data-hover="Home">Home</a></li>
				<li><a href="../pages/About us.html" data-hover="About Us">About
						Us</a></li>
				<li><a href="../pages/dri_notify.html"
					data-hover="Notification">Notification</a></li>
				<li><a href="../pages/contact us.html" data-hover="Contact">Contact</a>
				</li>
			</ul>

			<div class="user_profile">
				<a href="../pages/dri_profile.html"> <img
					src="../assets/images/gpro.png" alt="use_pro" class="user_profile1" /></a>
			</div>
		</header>
	</nav>

	<div class="list_1">
		<form action="../CarRegister" method="post" id="cars_detail">
			<div class="l_1">
				<label>Car-Image:</label> <input type="url" id="ca_r" name="ca_r"
					required /><br />
			</div>
			<div class="l_2">
				<label>Car-Reg-No:</label> <input type="text" id="ca_r1"
					name="ca_r1"
					pattern="^[A-Za-z]{2}[-][0-9]{1,2}[-][A-Za-z]{1,2}[-][0-9]{3,4}$"
					value="Tn 07 bd 1234" required /><br />
			</div>
			<div class="l_3">
				<label>Car-Model:</label> <input type="text" id="ca_r2" name="ca_r2"
					pattern="[A-Za-z0-9 ]{1,18}" required /><br />
			</div>
			<div class="l_4">
				<label>Car-Details: </label> <input type="text" id="ca_r3"
					name="ca_r3" pattern="[A-Za-z ]{1,20}" required /><br />
			</div>
			<input type="submit" id="ca_r4" />
		</form>
	</div>
</body>
</html>

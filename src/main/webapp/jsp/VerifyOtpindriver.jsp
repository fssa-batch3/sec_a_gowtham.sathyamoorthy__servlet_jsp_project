<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<head>
<title>OTP Verification</title>
<style>
element.style {
	
}

.notifi {
	display: flex;
	margin-bottom: 2px;
	margin-top:100px;
}

/* Card container */
.card {
	width: 360px;
	height: 350px;
	margin-top: 200px;
	margin-left: 200px;
	padding: 20px;
	border: 1px solid #ccc;
	border-radius: 5px;
	box-shadow: 0 2px 5px rgba(0, 0, 0, 0.1);
}

/* OTP input fields */
.otp-input {
	width: 240px;
	height: 40px;
	font-size: 18px;
	text-align: center;
	margin-top: 50px;
	border: 1px solid #ccc;
	border-radius: 5px;
}
h1{
margin-bottom:20px;
margin-left: 60px;
}
/* Submit button */
.submit-button {
  width: 70%;
  padding: 10px;
  
 
margin-top: 40px;
  margin-left: 50px;
  border-radius: 10%;
  background-color: #007bff;
  
 
color: #fff;
  
 
border: none;
  border-radius: 5px;
  cursor: pointer;
  transition: background-color 0.1s ease; /* Smooth transition for background color */
}

/* Hover state */
.submit-button:hover {
  background-color: #007bff; /* Change the background color on hover */
  color: #fff;

}
/* Center align text */
.center-text {
	text-align: center;
}

.img_notifi {
	background-image: url('<%=request.getContextPath()%>/assets/images/notificationOTP.png');
	background-size: cover;
	/* or 'contain', depending on your preference */
	margin-top: 100px;
	margin-left: 100px;
	height: 500px;
	width: 600px;
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
</head>
<body>
    <% String errorMessage = (String) request.getAttribute("errorMessage"); %>
<% if (errorMessage != null) { %>
<script type="text/javascript">
    alert("<%= errorMessage %>");
</script>
<% } %>

	<jsp:include page="DriverHeader.jsp"></jsp:include>

	<form action="<%=request.getContextPath()%>/VerifyOTPServlet"
		method="post">
		<div class="notifi">
			<div class="img_notifi">
				<h1>"Eco-Friendly Travels Start with OTP."</h1>
			</div>
			<div class="card">

				<h2 class="center-text">OTP Verification</h2>
				<p class="center-text">Enter the OTP sent to your email or SMS
					or phone.</p>

				<div class="center-text">
					<input type="tel" class="otp-input" name="otp" 
						id="otp">

				</div>

				<button class="submit-button center-text" type="submit">Verify
					OTP</button>
					<a href ="DriverHomepage.jsp"><button class="submit-button center-text" >
					Back</button></a>
			</div>
		</div>
	</form>


	<c:if test="${not empty msg}">
		<p>${msg}</p>
	</c:if>
</body>
</html>
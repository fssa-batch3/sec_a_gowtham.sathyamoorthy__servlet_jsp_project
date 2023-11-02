<%@page import="com.fssa.turbotrip.service.exception.ServiceException"%>
<%@page import="com.fssa.turbotrip.model.User"%>
<%@page import="com.fssa.turbotrip.model.Booking"%>
<%@page import="com.fssa.turbotrip.service.UserService"%>
<%@page import="com.fssa.turbotrip.service.BookingService"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page import="com.fssa.turbotrip.model.User"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<style>
.location {
	background-color: none;
}

.loc_2 {
	display: flex;
}

.loc_1 {
	color: black;
	font-size: 2rem;
	margin-top: 20px;
	margin-left: 50px;
}

.location {
	margin-left: 0px;
	height: 20rem;
	width: 20rem;
	margin-top: -20px;
}

.find {
	height: 500px;
	width: 500px;
	margin-top: 10rem;
	border: 2px solid black;
	border-radius: 10px;
	margin-left: 500px;
}

.loc_3 {
	margin-top: 130px;
	color: black;
	font-size: 30px;
}

.can_1 {
	height: 50px;
	margin-left: 50px;
	width: 150px;
	background-color: red;
	color: white;
	margin-top: -100rem;
	font-size: 20px;
	cursor: pointer;
	transition: 0.5s;
	border-radius: 10px;
}

.can_1:hover {
	transform: scale(1.1);
	transition: 0.5s;
	background-color: red;
	color: white;
	
}

.card {
	width: 300px;
	margin: 0 auto;
	padding: 20px;
	border: 1px solid #ccc;
	border-radius: 5px;
	box-shadow: 0 2px 5px rgba(0, 0, 0, 0.1);
}

/* OTP message */
.otp-message {
	font-size: 18px;
}

/* OTP display */
.otp-display {
	font-size: 24px;
	font-weight: bold;
	color: #007bff; /* Blue color for OTP */
}

/* Error message */
.error-message {
	color: red;
}

/* Center align text */
.center-text {
	text-align: center;
}

.card {
	border: 1px solid #ccc;
	border-radius: 5px;
	padding: 10px;
	margin: 10px;
	box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2);
	background-color: #f8f8f8;
	max-width: 300px;
}

.h2 {
	font-size: 35px;
	margin: 0;
	margin-left: 20px;
}

.card p {
	font-size: 18px;
	margin: 5px 0;
	margin-top: 20px;
	margin-bottom: 20px;
}

.cards {
	display: flex;
	margin-top: 150px;
	margin-left: 250px
}

.dis {
	background-image:
		url('<%=request.getContextPath()%>/assets/images/Confirmed-bro.png');
	background-size: cover;
	/* or 'contain', depending on your preference */
	background-position: center center;
	height: 500px;
	width: 600px;
}

</style>
<body>
	<jsp:include page="header.jsp"></jsp:include>

	<%
	String otp = null;
	Booking book = null;
	User users = null;

	int loggedInuserId = (int) session.getAttribute("userId");
	System.out.println("otp no1 : " + loggedInuserId);
	BookingService booking = new BookingService();
	UserService user = new UserService();
	try {
		book = booking.findObjectByUserIds(loggedInuserId);
		users = user.getUserById(book.getDriver_id());
		System.out.println(book.getBooking_id());
		System.out.println(users);
		otp = book.getOtp();

	} catch (ServiceException e) {
		e.printStackTrace();
	}

	if (otp == null) {
	%>

	<div class="find">
		<h1 class="loc_1">
			Request sent to the <br />near by Driver !!!
		</h1>
		<div class="loc_2">
			<img src="<%=request.getContextPath()%>/assets/search-unscreen.gif"
				class="location" alt="loc" />
			<h2 class="loc_3">Finding driver</h2>
		</div>
		<a href="<%=request.getContextPath()%>/cancelride?bookingid=<%= book.getBooking_id() %>" ><button type="submit" class="can_1">Cancel</button></a>
	</div>


	<%
	} else {
	%>

	<div class="cards">
		<div class="dis">
			<h2 class="h2">OTP Verification And Driver details</h2>
		</div>
		<div class="card center-text">

			<p class="paragraph">
				Driver Name:
				<%=users.getUsername()%></p>
			<p>
				Driver Email:
				<%=users.getEmail()%></p>
			<p>
				Driver Contact no:
				<%=users.getPhone()%></p>

			<p class="otp-message">Your OTP:</p>
			<p class="otp-display"><%=book.getOtp()%></p>
		</div>
	</div>

	<%
	}
	%>

</body>
</html>
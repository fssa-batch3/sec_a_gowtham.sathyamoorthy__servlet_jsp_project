<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<%@ page import="com.fssa.turbotrip.model.User"%>
<%
User user = (User) pageContext.getAttribute("user");
// Use the user object as needed in your JSP code
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<title>OTP Verification</title>
<style>
/* Card container */
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

.card h2 {
	font-size: 18px;
	margin: 0;
}

.card p {
	font-size: 14px;
	margin: 5px 0;
}

.cards {
	display: flex;
}
</style>
</head>
<body>
	<div class="cards">
		<div class="card center-text">
			<h2>OTP Verification And Driver details</h2>

<c:if test="${not empty driver}">
        <p>Driver Name: ${driver.username}</p>
        <p>Driver Email: ${driver.email}</p>
        <p>Driver Contact no :${driver.phone}</p>
        
  
</c:if>
			<c:choose>
				<c:when test="${not empty otp}">
					<p class="otp-message">Your OTP:</p>
					<p class="otp-display">${otp}</p>
				</c:when>
				<c:otherwise>
					<p class="error-message">OTP not found or empty.</p>
				</c:otherwise>
			</c:choose>
		</div>
	</div>
</body>
</html>

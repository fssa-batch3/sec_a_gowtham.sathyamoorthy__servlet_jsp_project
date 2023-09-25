<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page import="java.util.*"%>
<%@ page import="com.fssa.turbotrip.model.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<style>
body {
	font-family: Arial, sans-serif;
	background-color: #f4f4f4;
	padding: 20px;
}

.container {
	display: flex;
	flex-wrap: wrap;
	justify-content: center;
	gap: 20px;
}

.card {
	border: 1px solid #ccc;
	box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2);
	max-width: 300px;
	padding: 10px;
	background-color: #fff;
}

.card img {
	max-width: 100%;
	height: auto;
}

.card h2 {
	font-size: 20px;
	margin: 0;
}

.card p {
	font-size: 14px;
}

.btn-container {
	display: flex;
	justify-content: space-between;
	margin-top: 10px;
}

.btn {
	padding: 10px 20px;
	background-color: #007bff;
	color: #fff;
	border: none;
	cursor: pointer;
	flex: 1;
	margin: 0 5px;
}

.btn.update {
	background-color: #28a745;
}

.btn.delete {
	background-color: #dc3545;
}

.btn:hover {
	opacity: 0.8;
}
</style>
</head>
<body>
	<h1>New Arrivals!!!</h1>
	<div class="container">
		<%
		List<Booking> book = (List<Booking>) session.getAttribute("book");
		if (book != null) {
			for (Booking booking : book) {
		%>

		<div class="card">

			<h2>
				Pickup :<%=booking.getPickup_location()%></h2>
			<h2>
				Destination :<%=booking.getDrop_location()%></h2>
			<p>
				Time :<%=booking.getBooking_time()%></p>
			<p>
				Date :<%=booking.getBooking_date()%></p>
			<p>
				No.of.Seats :<%=booking.getNo_of_seat()%></p>
			<div class="btn-container">
				<a href="AcceptBookingServlet?id=<%=booking.getBooking_id()%>">
					<button class="btn update">Accept</button>
				</a> <a href="javascript:void(0);" onclick="confirmDelete())">
					<button class="btn delete">Cancel</button>
				</a>
			</div>
		</div>
		<%
		}
		} else {
		%>
		<p>No Bookings available.</p>
		<%
		}
		%>
	</div>
	<script>
function confirmDelete(carNo) {
    if (confirm("Are you sure you want to Cancel the ride +"?")) {
        
        window.location.href = "#";
    } else {
        
    }
}
</script>
</body>

</html>
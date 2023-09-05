<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<%@ page import="java.util.*"%>
<%@ page import="com.fssa.turbotrip.model.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>All CarList</title>
</head>
<style>
table {
	border-collapse: collapse;
	width: 100%;
}

th, td {
	border: 1px solid black;
	padding: 8px;
	text-align: left;
}

th {
	background-color: #f2f2f2;
}
</style>
<body>
	<h1>All Attached CarList</h1>
	<%
	List<Car> cars = (List<Car>) session.getAttribute("cars");
	%>
	<table>
		<tr>
			<th>CarId</th>
			<th>DriverId</th>
			<th>CarRegistration</th>
			<th>CarModel</th>
			<th>CarImage</th>
			<th>CarDescription</th>
			<th>Update</th>
			<th>Delete</th>
		</tr>

		<%
for (Car car : cars) {
%>
		<tr>
			<td><%= car.getUserId() %></td>
			<td><%= car.getUserId() %></td>
			<td><%= car.getCarNo() %></td>
			<td><%= car.getCarmodel() %></td>
			<td><%= car.getCarImage() %></td>
			<td><%= car.getDescription() %></td>
			<td><a href="#"><button>Update</button></a>
			<td><a href="DeleteCarServlet?id=<%= car.getCarId() %>"><button>Delete</button></a>
			</td>
			
			</td>
		</tr>
		<%
}
%>


	</table>
</body>
</html>
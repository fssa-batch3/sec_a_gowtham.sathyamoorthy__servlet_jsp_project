<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<%@ page import="java.util.*"%>
<%@ page import="com.fssa.turbotrip.model.*"%>
<!DOCTYPE html>
<html>
<head>
<title>All Users</title>
<style>
table {
	border-collapse: collapse;3
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
</head>
<body>
	<h1>All Registered Users</h1>
	<%
	@SuppressWarnings("unchecked")
	List<User> users = (List<User>) session.getAttribute("users");
	%>
	<table>
		<tr>
			<th>ID</th>
			<th>UserName</th>
			<th>Email</th>
			<th>Phone</th>
			<th>Is_deleted</th>
			<th>Is_driver</th>
		</tr>

		<%
		for (User user : users) {
		%>
		<tr>
			<td><%=user.getUser_id()%></td>
			<td><%=user.getUsername()%></td>
			<td><%=user.getEmail()%></td>
			<td><%=user.getPhone()%></td>
			<td><%=user.getIsdeleted()%></td>
			<td><%=user.getIsdriver()%></td>
		</tr>

		<%
		}
		%>





	</table>
</body>
</html>
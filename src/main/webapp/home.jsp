<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Home Page</title>
</head>
<body>
<jsp:include page="header.jsp"></jsp:include>

<h1>Welcome to TurbotTrip Web App</h1>

<%
	String loggedInEmail = (String) session.getAttribute("loggedInEmail");
	
	if(loggedInEmail == null) {
		response.sendRedirect("loggin.jsp");
	}
	
%>

<p>Logged In user: <%=loggedInEmail%> </p>
<a href="GetAllUsersServlet">Get all Users</a><br>
<a href="AttachCar.jsp">Add your car</a><br>
<a href="LogoutServlet">logout</a><br>

</body>
</html>
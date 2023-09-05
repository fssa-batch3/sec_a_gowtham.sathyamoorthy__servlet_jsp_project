
<html>
<head>

<body>
	<jsp:include page="header.jsp"></jsp:include>

<h1>TurboTrip</h1>
	<!-- This is how you write comments in JSP -->

	<!--  Example of JSP Declaration -->
	<%!public String getMessage() {
		return "Success";
	}%>

	<!--  Example of Scriptlet -->
	<%
	String message = "Success";
	%>

	<!-- Expressions -->
	<%=message%>
	<%=getMessage()%>
</body>
</html>
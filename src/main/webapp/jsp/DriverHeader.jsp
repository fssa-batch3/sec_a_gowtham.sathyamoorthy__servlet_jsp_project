<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>

<link rel="stylesheet" href="<%=request.getContextPath()%>/assets/css/style.css" />
<link
	href="https://fonts.googleapis.com/css2?family=Roboto&display=swap"
	rel="stylesheet" />

</head>
<style>
.h12{
color: white;
}
h1.h12 {
    font-size: 25px;
    font-weight: bold;
}
ul {
    margin-top: 20px;
    margin-bottom: 1rem;
}
</style>
<body>
	 


	
	<%
	String loggedInEmail = (String) session.getAttribute("loggedInEmail");
	if (loggedInEmail == null) {
	%>
	<nav id="js_header">
		<!-- header part -->
		<div class="logo">
			<a href ="<%=request.getContextPath()%>/index.jsp"><img src="<%=request.getContextPath()%>/assets/turbostrip.png" alt="logo" /></a>
		</div>
		<ul class="snip">
			<li><a href="<%=request.getContextPath()%>/jsp/AboutUs.jsp" data-hover="About Us">About
					Us</a></li>

			<li><a href="<%=request.getContextPath()%>jsp/contact us.jsp" data-hover="Contact">Contact</a>
			</li>
		</ul>
	</nav>
	<%
	} else {
	%>

 <nav id="js_header">
      <!-- header part -->
      <div class="logo">
      <a href ="<%=request.getContextPath()%>/index.jsp">  <img src="<%=request.getContextPath()%>/assets/turbostrip.png" alt="logo" /></a>
      </div>
      <div class="head"><h1 class="h12">Turbo trip</h1></div>
      <ul class="snip">
        <li class="current"><a href="<%=request.getContextPath()%>/jsp/DriverHomepage.jsp" data-hover="Home">Home</a></li>
        <li>
          <a href="<%=request.getContextPath()%>/jsp/AboutUs.jsp" data-hover="About Us">About Us</a>
        </li>
        <li>
          <a href="/turbotripweb/GetAllBookings" data-hover="Notification"
            >Notification</a
          >
        </li>
        <li>
          <a href="<%=request.getContextPath()%>/jsp/contact us.jsp" data-hover="Contact">Contact</a>
        </li>
       
	
	<li><a class="nav-link" href="<%=request.getContextPath()%>/LogoutServlet" data-hover = "Logout">Logout</a>

	</li>
	
		<%
		}
		%>
      </ul>

      
    </nav>

</body>
</html>
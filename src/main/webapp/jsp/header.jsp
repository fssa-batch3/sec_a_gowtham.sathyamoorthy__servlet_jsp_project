<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>

<link rel="stylesheet" href="<%=request.getContextPath()%>/assets/css/style.css"/>
<link
	href="https://fonts.googleapis.com/css2?family=Roboto&display=swap"
	rel="stylesheet" />

</head>
<style>
.h12{
color:white;
font-size:25px;
font-weight:bold;
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
			<a href= "<%=request.getContextPath()%>/index.jsp"><img src="<%=request.getContextPath()%>/assets/turbostrip.png" alt="logo" /></a>
		</div>
		<ul class="snip">
			<li><a href="<%=request.getContextPath()%>/jsp/AboutUs.jsp" data-hover="About Us">About
					Us</a></li>

			<li><a href="<%=request.getContextPath()%>/jsp/contact us.jsp" data-hover="Contact">Contact</a>
			</li>
		</ul>
	</nav>
	<%
	} else {
	%>

 <nav id="js_header">
      <!-- header part -->
      <div class="logo">
      <a href= "<%=request.getContextPath()%>/index.jsp">  <img src="<%=request.getContextPath()%>/assets/turbostrip.png" alt="logo" /></a>
      </div>
      <div class="head"><p class="h12">Turbo trip</p></div>
      <ul class="snip">
        <li class="current"><a href="<%=request.getContextPath()%>/jsp/homepage.jsp" data-hover="Home">Home</a></li>
        <li>
          <a href="<%=request.getContextPath()%>/jsp/AboutUs.jsp" data-hover="About Us">About Us</a>
        </li>
        <li>
          <a href="../ShowOtpServlet" data-hover="Notification"
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
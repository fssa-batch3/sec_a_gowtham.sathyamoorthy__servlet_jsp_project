<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>

<link rel="stylesheet" href="../assets/css/style.css" />
<link
	href="https://fonts.googleapis.com/css2?family=Roboto&display=swap"
	rel="stylesheet" />

</head>
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
		<ul class="snip1143">
			<li><a href="<%=request.getContextPath()%>/jsp/About us.jsp" data-hover="About Us">About
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
      <ul class="snip1143">
        <li class="current"><a href="<%=request.getContextPath()%>/homepage.jsp" data-hover="Home">Home</a></li>
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
 <li>
    <a class="nav-link" href="#" data-hover="<%=loggedInEmail%>"><%=loggedInEmail%></a>
</li>
	<li><a class="nav-link" href="<%=request.getContextPath()%>/LogoutServlet" data-hover = "Logout">Logout</a>

	</li>
	
		<%
		}
		%>
      </ul>

      <div class="user_profile">
        <a href="./profilepage-1.html">
          <img
            src="<%=request.getContextPath()%>/assets/gpro.png"
            alt="use_pro"
            class="user_profile1"
        /></a>
      </div>
    </nav>


</body>
</html>
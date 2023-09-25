<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="<%=request.getContextPath()%>/assets/css/list_editcar.css" />
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	 <jsp:include page="DriverHeader.jsp"></jsp:include>
	<div class="list_1">
		<form method="post"
				action="<%=request.getContextPath()%>/UpdateCarServlet"
			id="cars_detail">
			<h1>Change Your Car details here :</h1>
			<%
			String errorMessage = request.getParameter("errorMessage");
			if (errorMessage != null) {
				out.println("<p>" + errorMessage + "</p>");
			}
			%>
			 <div class="l_2">
          <label>Car-Reg-No:</label>
          <input
            type="text"
            id="ca_r1"
            name="carNo"
            required
            pattern="^[A-Za-z]{2}[-][0-9]{1,2}[-][A-Za-z]{1,2}[-][0-9]{3,4}$"
          /><br />
			<div class="l_1">
				<label>Car-Image:</label> <input type="text" id="ca_r"
					name="carImage" required /><br />
			</div>
			<label id=lab>Car-Details: </label>
			<div class="l_4">

				<input type="text" id="ca_r3" name="description" required
					 /><br />
			</div>
			<div class="btn1">
				<input type="submit" value="Update Car" id="hello4" /> <input
					type="submit" value="Delete" id="hello5" />
			</div>
		</form>
	</div>
	<script>
	 const updateButton = document.getElementById("hello4");

	    // Add a click event listener to the button
	    updateButton.addEventListener("click", function () {
	        // Display a confirmation dialog and store the result in a variable
	        const confirmation = confirm("Are you sure you want to update your car details?");

	        // Check the result of the confirmation dialog
	        if (confirmation) {
	            // The user clicked "OK," so proceed with the update
	            alert("Car details updated!");
	        } else {
	            
	        }
	    });
	
	</script>
</body>
</html>
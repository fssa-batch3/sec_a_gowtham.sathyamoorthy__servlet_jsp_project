<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
  <h1>Update Car</h1>
    <form method="post" action="<%=request.getContextPath()%>/UpdateCarServlet">
        <label for="carmodel">Car Model:</label>
        <input type="text" id="carmodel" name="carmodel">
        <br>
        <label for="carImage">Car Image URL:</label>
        <input type="text" id="carImage" name="carImage">
        <br>
        <label for="carNo">Car Number:</label>
        <input type="text" id="carNo" name="carNo">
        <br>
        <label for="description">Description:</label>
        <textarea id="description" name="description"></textarea>
        <br>
        <input type="submit" value="Update Car">
    </form>
</body>
</html>
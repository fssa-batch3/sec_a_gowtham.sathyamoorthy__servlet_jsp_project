<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<style>
.location {
  background-color: none;
}

.loc_2 {
  display: flex;
}
.loc_1 {
  color: black;
  font-size: 2rem;
  margin-top: 20px;
  margin-left: 50px;
}
.location {
  margin-left: 0px;
  height: 20rem;
  width: 20rem;
  margin-top: -20px;
}
.find {
  height: 500px;
  width: 500px;
  margin-top: 10rem;
  border: 2px solid black;
  border-radius: 10px;
  margin-left:500px;
}
.loc_3 {
  margin-top: 130px;
  color: black;
  font-size: 30px;
}
.can_1 {
  height: 50px;
  margin-left: 50px;
  width: 150px;
  background-color: red;
  color: white;
  margin-top: -100rem;
  font-size: 20px;
  cursor: pointer;
  transition: 0.5s;
  border-radius: 10px;
}
.can_1:hover {
  transform: scale(1.1);
  transition: 0.5s;
}
</style>
<body>
<jsp:include page="header.jsp"></jsp:include>

<div class="find">
        <h1 class="loc_1">Request sent to the <br />near by Driver !!!</h1>
        <div class="loc_2">
          <img src="<%=request.getContextPath()%>/assets/search-unscreen.gif" class="location" alt="loc" />
          <h2 class="loc_3">Finding driver</h2>
        </div>
        <button class="can_1">Cancel</button>
      </div>

</body>
</html>
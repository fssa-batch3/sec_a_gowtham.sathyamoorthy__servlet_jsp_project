<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/assets/css/style.css" />
<link
	href="https://fonts.googleapis.com/css2?family=Roboto&display=swap"
	rel="stylesheet" />
<title>Insert title here</title>
</head>
<style>
body{
background-color:lightgray;
}
.car_card {
      
          background-image: url('<%=request.getContextPath()%>/assets/images/backgroundforaddedcar.png');
        background-size:center
        ;
        font-family: "Roboto", sans-serif;
        height:750px;
        width:950px;
        margin-top:85px;
       margin-left:280px;
      }
.butn{
margin-top:370px;
margin-left:180px;

height: 40px;
    width: 220px;
    font-size: 20px;
    font-weight: bold;
    border-radius: 20px;
    cursor:pointer;

}      
      
  .butn1{
  margin-top: 50px;
    margin-left: 180px;
    height: 40px;
    width: 200px;
    font-size: 20px;
    font-weight: bold;
    border-radius: 20px;
    cursor: pointer;
  
  }    
      </style>
<body>
<div class= car_card>
 <jsp:include page="DriverHeader.jsp"></jsp:include>
<a href="<%=request.getContextPath()%>/GetAllCarListServlet"><button class=butn>See your Car Details</button></a><br>
<a href="Createcar.jsp"><button class= "butn1">Back</button></a><br>
</div>
</body>
</html>
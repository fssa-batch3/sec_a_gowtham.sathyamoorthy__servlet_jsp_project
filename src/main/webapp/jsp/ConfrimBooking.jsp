<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
 <link rel="stylesheet" href="<%=request.getContextPath()%>/assets/css/confim.css" />
<title>Insert title here</title>
<style>
.back{
width:100px;
height:40px;
color:white;
background-color:black;
border-radius:50px;
 transform: scale(1.1);
  transition: 0.5s;
  cursor:pointer;
}
.back:hover{
 transform: scale(1.1);
  transition: 0.5s;
  background-color: white;
  color: black;
}
</style>

</head>
<body>

    </nav>
    <!-- this is the map embeded by google maps -->
    <div class="body">
      <iframe
        src="https://www.google.com/maps/embed?pb=!1m28!1m12!1m3!1d15551.651088073026!2d80.24246863251048!3d12.97743070363192!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!4m13!3e6!4m5!1s0x3a525d6d804e0793%3A0xf310a6ebd244b2d0!2sGlobal%20Infocity%20Park%2C%20Ambedkar%20Nagar%2C%20Perungudi%2C%20Chennai%2C%20Tamil%20Nadu!3m2!1d12.9702928!2d80.24260869999999!4m5!1s0x3a525d5b9b3bfc6f%3A0x6959f97669f90baa!2sThiruvanmiyur%2C%20Chennai%2C%20Tamil%20Nadu!3m2!1d12.983026899999999!2d80.2594001!5e0!3m2!1sen!2sin!4v1670929622782!5m2!1sen!2sin"
        width="800"
        height="840"
        style="border: 0"
        allowfullscreen=""
        loading="lazy"
        referrerpolicy="no-referrer-when-downgrade"
      ></iframe>
      <div>
        <img
          src="<%=request.getContextPath()%>/assets/images/vinit sir.jpg"
          alt="customer"
          class="customer"
        />
        <div>
          <img
            src="<%=request.getContextPath()%>/assets/images/valerie-kaarna-YsutjEqmLWo-unsplash.jpg"
            alt="driver"
            class="driver"
          />
        </div>
      </div>
      <!-- booking confrimed -->
      <div class="jonny">
        <div class="quick">
          Booking<br />
          confirmed !
          <div class = "black"> 
        <a href="<%=request.getContextPath()%>/jsp/DriverHomepage.jsp"  ><button class = "back">Go Back</button></a></div>
        </div>
</body>
</html>
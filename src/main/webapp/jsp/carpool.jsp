<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel="stylesheet" href="<%=request.getContextPath()%>/assets/css/carpool.css" />
<title>Carpooling Booking</title>
</head>
<body>
<jsp:include page="header.jsp"></jsp:include>
 <div class="back">
      <div>
        <a href="homepage.jsp"><button class="container">Back</button></a>
      </div>
      <!-- this part is embeded by google maps -->
      <div class="first">
        <iframe
          src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d15551.75866629963!2d80.24239903251019!3d12.975710753649992!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3a525d6d804e0793%3A0xf310a6ebd244b2d0!2sGlobal%20Infocity%20Park%2C%20Ambedkar%20Nagar%2C%20Perungudi%2C%20Chennai%2C%20Tamil%20Nadu%20600096!5e0!3m2!1sen!2sin!4v1670767794796!5m2!1sen!2sin"
          width="500"
          height="500"
          style="border: 0"
          allowfullscreen=""
          loading="lazy"
          referrerpolicy="no-referrer-when-downgrade"
          >Choose your place</iframe
        >
        <!-- section-1 -->
        <div>
          <h1>Turbo-Trip is India's largest <br />Carpooling network</h1>
          <h2>
            Download Turbo-Trip App to manage your ride with better experience
          </h2>
        </div>
      </div>
      <!-- this section is booking a taxi  -->
      <div class="honda">
        <!-- <div class="btn">
          <button class="btn1">find ride</button>
          <button class="btn2">offer ride</button>
        </div> -->
        
         <form id="get_address_information" action="<%=request.getContextPath()%>/CreateBookingServlet" method="post">
        <div>
            <img src="../assets/images/hd-green-dot-circle-icon-11642066802ysgbn4cpvp-removebg-preview.png" alt="green dot" class="green" />
          
            <input class="pickup" placeholder="Enter pickup address" id="pickup" type="text" name="pickup" required /><br />
        </div>

        <div>
            <img src="../assets/images/r_circle-removebg-preview.png" alt="red dot" class="red" />
           
            <input class="drop" placeholder="Enter drop address" id="drop" type="text" name="drop" required /><br />
        </div>
        
        <div>
            <img src="../assets/images/clock-removebg-preview.png" alt="clock" class="clock" />
            
            <input type="date" id="date" onchange="checkDate()" name="date" placeholder="Select pickup date" />
            
           
            <input type="time" id="time" name="time" min="" placeholder="Select pickup time" />
        </div>
        
        <div class="seated">
            <img src="../assets/images/ic_seat.png" alt="seat" class="seat" />
           
            <select class="value" id="seating" name="seating">
                <option value="1">1</option>
                <option value="2">2</option>
                <option value="3">3</option>
                <option value="4">4</option>
                <option value="5">5</option>
            </select>
        </div>
        
        <div>
            <button class="find" type="submit" id="find">Find Ride</button>
        </div>
    </form>
</body>
<script>
    function checkDate() {
      let selectedText = document.getElementById("date").value;
      let selectedDate = new Date(selectedText);
      let now = new Date();
      if (selectedDate < now) {
        alert("Date must be in the future");
      }
    }

    const timeInput = document.getElementById("time");
    // Add event listener to the time input
    timeInput.addEventListener("input", function () {
      const selectedTime = this.value;
      const currentTime = new Date().toLocaleTimeString([], {
        hour: "2-digit",
        minute: "2-digit",
      });
      // Compare selected time with current time
      if (selectedTime < currentTime) {
        alert("You cannot select a past time.");
        this.value = ""; // Clear the input value
      }
    });
  </script>
</html>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
   <link
      rel="stylesheet"
      href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css"
      integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm"
      crossorigin="anonymous"
    />
    <link rel="stylesheet" href="<%=request.getContextPath()%>/assets/css/drive with us.css" />
<title>Insert title here</title>
</head>
<body>

    <jsp:include page="DriverHeader.jsp"></jsp:include>
    <section>
      <div
        id="carouselExampleIndicators"
        class="carousel slide"
        data-ride="carousel"
      >
        <ol class="carousel-indicators">
          <li
            data-target="#carouselExampleIndicators"
            data-slide-to="0"
            class="active"
          ></li>
          <li data-target="#carouselExampleIndicators" data-slide-to="1"></li>
          <li data-target="#carouselExampleIndicators" data-slide-to="2"></li>
        </ol>
        <div class="carousel-inner">
          <div class="carousel-item active">
            <img
              class="d-block w-100 img-slide"
              src="<%=request.getContextPath()%>/assets/blog-organization-can-benefit-immensely-from-car-leasing-companies.jpeg"
              alt="First slide"
            />
          </div>
          <div class="carousel-item">
            <img
              src="<%=request.getContextPath()%>/assets/blog-organization-can-benefit-immensely-from-car-leasing-companies.jpeg"
              alt="..."
            />
            <div class="carousel-caption d-none d-md-block">
              <h5>Shettu</h5>
              <p>From</p>
            </div>
          </div>
          <div class="carousel-item">
            <img
              class="d-block w-100 img-slide"
              src="<%=request.getContextPath()%>/assets/drive.jpg"
              alt="Third slide"
            />
          </div>
        </div>
        <a
          class="carousel-control-prev"
          href="#carouselExampleIndicators"
          role="button"
          data-slide="prev"
        >
          <span class="carousel-control-prev-icon" aria-hidden="true"></span>
          <span class="sr-only">Previous</span>
        </a>
        <a
          class="carousel-control-next"
          href="#carouselExampleIndicators"
          role="button"
          data-slide="next"
        >
          <span class="carousel-control-next-icon" aria-hidden="true"></span>
          <span class="sr-only">Next</span>
        </a>
      </div>
      <div class="partner">
        <h1 class="p_1">Make Money. Earn Respect. Secure Your Future.</h1>
        <p class="part_1">
          Apply now to become an Turbo-Trip driver-partner. Start earning in 24
          hours!
        </p>
      </div>
      <div class="partner_1">
        <div class="p_2">
          <img
            src="<%=request.getContextPath()%>/assets/images/part-2.jpg"
            alt="car_giver"
            class="giver"
          />
          <p class="part_2">Join Turbo-Trip as a</p>
          <h2 class="part_3">Partner with a Car</h2>
          <a href="<%=request.getContextPath()%>/jsp/Createcar.jsp" class="form_btn">Attach my Car</a>
        </div>

        <div class="p_2">
          <img
            src="<%=request.getContextPath()%>/assets/images/partner.png"
            alt="car_giver1"
            class="giver1"
          />
          <p class="part_4">Know driving?</p>
          <h2 class="part_6">We've a car for you!</h2>
          <a href="./driver_form.html" class="form_btn1">I need a Car</a>
        </div>

        <div class="p_2">
          <img
            src="<%=request.getContextPath()%>/assets/images/charismatic-man-smile-his-face-car-dealership-dreams-buying-new-243290471.jpg"
            alt="car_giver2"
            class="giver2"
          />
          <p class="part_5">Become a</p>
          <h2 class="part_7">Fleet Operator</h2>
          <a href="" class="form_btn2">Attach a Fleet</a>
        </div>
      </div>
      <div class="sec_2">
        <div class="p_3">
          <p class="con_2">Attach your Car or Bike with Turbo Trip</p>
          <p class="con_3">
            Know about more ways of partnering with Turbo-Trip & how each
            category can help you earn more.
          </p>
        </div>
        <div class="p_4">
          <a href=""><button class="send_1">Send your Enquiry</button></a>
        </div>
      </div>
    </section>
</body>
</html>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    
    <link rel="stylesheet" href="<%=request.getContextPath()%>/assets/css/style.css" />
    <link
      href="https://fonts.googleapis.com/css2?family=Roboto&display=swap"
      rel="stylesheet"
    />
    <title>100 day project</title>
  </head>
  <body>
<jsp:include page="header.jsp"></jsp:include>
    

    <!-- section-1 -->
    <div class="head2">
      <div class="car">
        <img src="<%=request.getContextPath()%>/assets/images/scorpio.png" alt="car" class="img1" />
        <p class="carpool">Carpool</p>
      </div>
      <div class="bike">
        <img
          src="<%=request.getContextPath()%>/assets/images/rohan-Fiq-gmcq_V8-unsplash-removebg-preview.png"
          alt="bike"
          class="img"
        />
        <p class="bikepool">Bikepool</p>
      </div>
      <div class="taxi">
        <a href="/pages/book taxi.html"
          ><img
            src="<%=request.getContextPath()%>/assets/images/17629097_ThanitJuly_42-removebg-preview.png"
            alt="taxi"
            class="img"
        /></a>
        <p class="taxipool">Taxi</p>
      </div>
      <div class="porter">
        <img
          src="<%=request.getContextPath()%>/assets/images/tru2-removebg-preview.png"
          alt="truck"
          class="img4"
        />
        <p class="porterpool">Mini truck</p>
      </div>
    </div>
    <!-- section-2 -->
    <div class="section">
      <div class="h1">
        <h1>Share your daily commute with Carpool/Bikepool</h1>
        <br />
        <p class="sec1">Reduce Co2 . Save Money . Grow network</p>
        <a href="carpool.jsp"
          ><button class="btn">Book now !</button></a
        >
      </div>
      <div>
        <iframe
          class="video"
          width="500"
          height="300"
          src="https://www.youtube.com/embed/jwaKRhPY4Zo"
          title="YouTube video player"
          frameborder="0"
          allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture"
          allowfullscreen
        ></iframe>
      </div>
    </div>
    <!-- section-2.1(content) -->
    <div class="first">
      <video
        src="<%=request.getContextPath()%>/assets/turbotrip video.mp4"
        class="first-video"
        autoplay
        loop
      ></video>
      <div>
        <p class="ride-1">
          Book your Taxi,<br />
          make your travel Easy !
        </p>
        <div class="calling">
          <a href="tel:9551555231" class="href">
            <button class="call">
              <img
                src="<%=request.getContextPath()%>/assets\images\phone-unscreen.gif"
                class="gif-phone"
                alt="gif"
              />
              <p class="ph">call now !</p>
            </button></a
          >
        </div>
      </div>
    </div>

    <!-- section-2.2(content) -->
    <div class="section2">
      <h2>What is Turbo trip ? - Carpool and Bikepool</h2>
      <br />
      <p class="sec2">
        We all like going together Turbo trip will help you to connect with
        other like-minded professionals who are traveling on the same route and
        same time. Turbo trip helps commuters to start sharing the ride instead
        of traveling alone. Innovative technology to discover, connect, route
        match, coordinate and cost-share in a seamless manner. Turbo trip
        automates end to end process of carpooling & bikepooling and makes
        pooling safe, comfortable and affordable for the urban commuters
      </p>
    </div>
    <!-- section-3 -->
    <div class="carpooling">
      <div>
        <img
          src="<%=request.getContextPath()%>/assets/images/why-kei-8e2gal_GIE8-unsplash.jpg"
          alt="carpooling"
          class="travel"
        />
      </div>
      <div class="travel1">
        <h3 class="h4">What is carpool ?</h3>
        <h4 class="h3">Easy to travel . Go everywere</h4>
        <p class="middle">
          When two more individuals share a car ride together,<br />
          it is known as carpooling. Carpooling is a good solution <br />to
          fight air pollution as it reduces the number of cars on major roads.
        </p>
      </div>
    </div>
    <div class="carpooling1">
      <div class="route1">
        <h3 class="h5">Offer carpool</h3>
        <h4 class="h7">Your Route. Your Time. Your Fare</h4>
        <p class="middle1">
          Share your empty car seats in carpool and cut down your commute
          costs.<br />
          Enjoy meeting amazing new people every day in carpool,<br />
          grow your network and make your boring rides a fun ride.
        </p>
      </div>

      <div>
        <img src="<%=request.getContextPath()%>/assets/images/car2.jpg" alt="carpooling1" class="route" />
      </div>
    </div>
    <div class="carpooling2">
      <div>
        <img
          src="<%=request.getContextPath()%>/assets/images/prasad-panchakshari-FxiCrJTzt0w-unsplash.jpg"
          class="travel"
          alt="carpooling2"
        />
      </div>

      <div class="faster1">
        <h3 class="h8">Find carpool</h3>
        <h4 class="h9">Convenient. Faster. Affordable</h4>
        <p class="middle2">
          Join with like minded people and get a comfortable car,<br />
          ride at the cost of bus fare. Travel safe<br />
          with known and verified professionals
        </p>
      </div>
    </div>
    <!-- section-4 (facility of customer)-->
    <div class="class">
      <h5>What's in it for you</h5>
      <button class="button1">Client</button>
      <button class="button2">Automobilist</button>
      <div class="facility">
        <div>
          <img
            src="<%=request.getContextPath()%>/assets/images/customer-1.webp"
            class="cus-1"
            alt="customer"
          />
          <h1 class="client-1">Doorstep-pickup</h1>
          <p class="detail">
            We will pick you up from where <br />you are and drop you exactly<br />
            where you need to be.
          </p>
        </div>
        <div>
          <img
            src="<%=request.getContextPath()%>/assets/images/customer-2.webp"
            alt="customer"
            class="cus-2"
          />
          <h1 class="client-2">Affordability</h1>
          <p class="detail">
            No more latent prices and shocked reactions<br />
            after seeing the final ride cost. We're here <br />with the most
            affordable rides for all.
          </p>
        </div>
        <div>
          <img
            src="<%=request.getContextPath()%>/assets/images/customer-3.webp"
            alt="customer"
            class="cus-3"
          />
          <h1 class="client-3">Start Ride</h1>
          <p class="detail">
            No more latent prices and shocked reactions <br />after seeing the
            final ride cost. We're here <br />with the most affordable rides for
            all.
          </p>
        </div>
      </div>
    </div>
    <!-- section-5 (working of turbo trip) -->
    <div class="working">
      <h6>How it Works</h6>
      <p class="work">Simple . Secure . Share</p>
      <div class="map">
        <div>
          <img src="<%=request.getContextPath()%>/assets/images/map1.png" alt="map1" class="map1" />
          <p class="working1">one click to create a ride</p>
        </div>
        <div>
          <img src="<%=request.getContextPath()%>/assets/images/map2.png" alt="map2" class="map1" />
          <p class="working2">Select ride and Connect</p>
        </div>
        <div>
          <img src="<%=request.getContextPath()%>/assets/images/map3.png" alt="map3" class="map1" />
          <p class="working3">Start your ride</p>
        </div>
      </div>
    </div>
    <!-- section part of fare of the places in chennai -->
    <div class="fare">
      <p class="fare_list">Turbo trip carpooling fares in Chennai</p>
    </div>
    <div class="fares">
      <div class="fare_chennai">
        <table class="fare_table">
          <thead>
            <tr>
              <th class="fa_1">FROM</th>
              <th class="fa_1">DESTINATION</th>
              <th class="fa_1">FARE</th>
            </tr>
            <tr>
              <td class="fa_2">Adambakkam</td>
              <td class="fa_2">Anna Nagar</td>
              <td class="fa_2">57</td>
            </tr>
            <tr>
              <td class="fa_2">Kodambakkam</td>
              <td class="fa_2">Guindy</td>
              <td class="fa_2">36</td>
            </tr>
            <tr>
              <td class="fa_2">Chromepet</td>
              <td class="fa_2">Madipakkam</td>
              <td class="fa_2">36</td>
            </tr>
            <tr>
              <td class="fa_2">Ashok Nagar</td>
              <td class="fa_2">Adyar</td>
              <td class="fa_2">40</td>
            </tr>
            <tr>
              <td class="fa_2">Ambattur</td>
              <td class="fa_2">Mylapore</td>
              <td class="fa_2">57</td>
            </tr>
            <tr>
              <td class="fa_2">Perambur</td>
              <td class="fa_2">Perungudi</td>
              <td class="fa_2">71</td>
            </tr>
          </thead>
          <tbody></tbody>
        </table>
      </div>
      <p class="fa_3">
        <b>Note : </b>
        Fares may fluctuate depending on the ride giver/taker.(1 point = 1
        rupee)
      </p>
    </div>

    <!-- section-6 (impact of turbotrip) -->
    <h6 class="h6">Impact of Turbo trip</h6>

    <div class="impact">
      <div class="impact1">
        <img
          src="<%=request.getContextPath()%>/assets/images/person-removebg-preview.png"
          alt="men"
          class="men"
        />
        <p class="customer">
          Our customers<br />
          3.5 million+
        </p>
      </div>
      <div class="impact2">
        <img
          src="<%=request.getContextPath()%>/assets/images/benjamin-child-7Cdw956mZ4w-unsplash-removebg-preview.png"
          alt="bmw"
          class="audi"
        />
        <p class="ride">
          Rides shared<br />
          20 million+
        </p>
      </div>
      <div class="impact3">
        <img
          src="<%=request.getContextPath()%>/assets/images/smoke-removebg-preview (1).png "
          alt="smoke"
          class="benz"
        />
        <p class="carbon">
          Controlled co2<br />
          45,850 tons
        </p>
      </div>
      <!-- section-7( turbo trip located places ) -->
    </div>
    <p class="place">
      Tamil nadu . Rajasthan . Kerala . Goa . Delhi . ladakh . Pune . kolkatta .
      Mumbai . Andrapradesh
    </p>
    <!-- section-8 (download information) -->
    <div class="download">
      <div data-aos="fade-left" data-aos-duration="800">
        <img
          src="<%=request.getContextPath()%>/assets/images/17868816_5932505-removebg-preview.png"
          alt="phone"
          class="phone"
        />
      </div>
      <div class="download1">
        <p class="app">Join now and get your first ride with 75% offers.</p>
        <p class="app1">
          Refer your friends and be a<br />
          partner of Turbo trip
        </p>

        <img src="<%=request.getContextPath()%>/assets/images/store1.png" alt="playstore" class="store1" />
        <img
          src="<%=request.getContextPath()%>/assets/images/Download_on_the_App_Store_Badge.svg.png "
          alt="appstore"
          class="store2"
        />

        <p class="app2">In case of any question of query , please write to</p>
        <p class="app3">support@Turbo-trip.in</p>
      </div>
    </div>
    <!-- footer part of turbo trip -->
    <footer>
      <div class="footer">
        <img src="<%=request.getContextPath()%>/assets/turbostrip.png " alt="logo" class="t2" />
        <div class="footer3">
          <p class="footer2">Turbo-Trip</p>
          <p class="footer7">Carpool . Bikepool . Taxi</p>
        </div>
      </div>

      <div class="address">
        <p>
          Turbo Trip, Carpool,Taxi,Mini truck <br />are developed by Settu
          info.Pvt.Ltd
        </p>
      </div>

      <div class="footer6">
        <div class="footer4">
          <ul>
            Offers
          </ul>
          <ul>
            Book a cab
          </ul>
          <ul>
            Rental
          </ul>
          <ul>
            outstation
          </ul>
          <ul>
            Corporate
          </ul>
        </div>

        <div class="footer5">
          <ul>
            About us
          </ul>
          <ul>
            Contact us
          </ul>
          <ul>
            media
          </ul>
          <ul>
            career
          </ul>
          <ul>
            support
          </ul>
        </div>
        <div class="icon">
          <p class="icon2">Follow us :</p>
          <img
            src="<%=request.getContextPath()%>/assets/images/facebook.png"
            alt="facebook"
            class="icon1"
          />
          <img
            src="<%=request.getContextPath()%>/assets/images/instagram.png"
            alt="instagram"
            class="icon3"
          />
          <img src="<%=request.getContextPath()%>/assets/images/twitter.png" alt="twitter" class="icon1" />
          <img
            src="<%=request.getContextPath()%>/assets/images/telegram.png"
            alt="telegram"
            class="icon1"
          />
          <img
            src="<%=request.getContextPath()%>/assets/images/whatsapp-111.png"
            alt="linkedin"
            class="icon1"
          />
        </div>
      </div>
      <div class="footer8">
        © 2022 Turbo Transportation. All rights reserved.
      </div>
    </footer>
  </body>

 
</html>

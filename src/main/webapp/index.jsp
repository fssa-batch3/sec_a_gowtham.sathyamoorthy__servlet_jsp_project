
<html>
<head>
<style>

* {
    margin: 0;
    padding: 0;
    box-sizing: border-box;
}


body {
    font-family: Arial, sans-serif;
}


header {
    background-color: #333;
    color: #fff;
    padding: 1rem 0;
}

nav {
    display: flex;
    justify-content: space-between;
    align-items: center;
    max-width: 1200px;
    margin: 0 auto;
    padding: 0 1rem;
}

.logo {
    font-size: 24px;
}

.nav-links {
    list-style: none;
    display: flex;
}

.nav-links li {
    margin-right: 20px;
}

.nav-links a {
    color: #fff;
    text-decoration: none;
}


.hero {
    background-image: url('your-hero-image.jpg');
    background-size: cover;
    background-position: center;
    color: #fff;
    text-align: center;
    padding: 4rem 0;
}

.hero h2 {
    font-size: 36px;
    margin-bottom: 20px;
}

.hero p {
    font-size: 18px;
    margin-bottom: 40px;
}

.btn {
    display: inline-block;
    background-color: #ff6600;
    color: #fff;
    padding: 10px 20px;
    border: none;
    border-radius: 5px;
    text-decoration: none;
    font-weight: bold;
    transition: background-color 0.3s ease;
}

.btn:hover {
    background-color: #ff4500;
}

/* Features section styles */
.features {
    display: flex;
    justify-content: space-around;
    max-width: 1200px;
    margin: 0 auto;
   
}

.feature {
    text-align: center;
}

.feature h3 {
    font-size: 24px;
    margin-bottom: 10px;
}

footer {
    background-color: #333;
    color: #fff;
    text-align: center;
    padding: 1rem 0;
}
.feature img {
    max-width: 100%;
    height: auto;
    max-height: 150px; /* Adjust the height as needed */
}
.banner {
 
    display: flex;
    justify-content: center;
    align-items: center;
    margin:auto;
    background-color: white;
    color: #fff;
    padding: 4rem;
}


.banner-content {
    flex: 1;
    padding-right: 4rem;
    color: black;
    margin-right: 20px;
    margin-top:100px
    
}

.banner h2 {
    font-size: 35px;
    margin-bottom: 20px;
}

.banner p {
    font-size: 18px;
    margin-bottom: 30px;
}


.banner-image {
    border-radius: 5px;
     max-width: 30%;
     margin-left:100px
    height: auto;
    
}
.div{
display : flex;
width: 1000px

}

</style>
<body>
	<jsp:include page="header.jsp"></jsp:include>

	<section class="banner">
	<div class = div>
    <div class="banner-content">
        <h2>Join Turbo Trip for Convenient Carpooling</h2>
        <p>Your destination is just a ride away with Turbo Trip. Share rides, reduce costs, and contribute to a greener environment.</p>
        <a href="#" class="btn">Learn More</a>
    </div>
    

        <img src="https://static.vecteezy.com/system/resources/previews/010/751/447/non_2x/car-sharing-icon-on-white-background-carsharing-sign-carpooling-symbol-flat-style-vector.jpg" alt="Carpooling Banner"class="banner-image">
    </div>
</section>

    <section class="features">
        <div class="feature">
            <img src="https://cdn-icons-png.flaticon.com/512/4727/4727194.png" class="feature"  alt="Find Rides">
            <h3>Find Rides</h3>
            <p>Discover available rides to your destination and join carpooling journeys.</p>
        </div>
        <div class="feature">
            <img src="https://uploads.mesym.com/wp-content/uploads/mesym/2014/09/tripda-icon-1.png" class="feature" alt="Offer Rides">
            <h3>Offer Rides</h3>
            <p>Share your ride and reduce travel costs by offering rides to others.</p>
        </div>
        <div class="feature">
            <img src="https://cdn-icons-png.flaticon.com/512/5044/5044445.png" class="feature" alt="Safe & Secure">
            <h3>Safe & Secure</h3>
            <p>We prioritize safety and ensure trustworthiness with our carpooling community.</p>
        </div>
    </section>

    <footer>
        <p>&copy; 2023 Turbo Trip</p>
    </footer>
</body>
</html>
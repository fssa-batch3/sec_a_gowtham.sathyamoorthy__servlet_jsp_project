<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link
	href="https://fonts.googleapis.com/css2?family=Roboto&display=swap"
	rel="stylesheet" />
    
    <title>Your Turbo Trip</title>
    <style>
    /* Basic styles for the navbar */
    body{
     font-family: "Roboto", sans-serif;
    }

nav {
  justify-content: space-between;
  align-items: center;
  height: 80px;
  display: flex;
  box-shadow: 0px 1px 20px rgb(45, 44, 44);
  position: fixed;
  right: 0;
  left: 0;
  top: 0;
  background-color: black;
  z-index: 50;
}

/* Styles for the logo */
.logo img {
    max-width: 100px;
    height: auto;
}

/* Styles for the "Turbo Trip" title */
.navbar-center h1 {
    font-size: 24px;
    margin: 0;
    color:white;
}

/* Styles for the "Back" button */
.btn-back {
    background-color: #fff;
    color: #007bff;
    padding: 8px 16px;
    border: none;
    border-radius: 4px;
    text-decoration: none;
    transition: background-color 0.3s, color 0.3s;
}

.btn-back:hover {
    background-color: #007bff;
    color: #fff;
}
   .logo img {
  width: 83px;
  height: 083px;
  border-radius: 50px;
  margin-left: 10px;
} 
.snip1143 {
  font-family: "Raleway", Arial, sans-serif;
  text-align: center;
  text-transform: uppercase;
  font-weight: 500;
}
.snip1143 * {
  box-sizing: border-box;
  -webkit-transition: all 0.35s ease;
  transition: all 0.35s ease;
}
.snip1143 li {
  display: inline-block;
  list-style: outside none none;
  margin: 0 1.5em;
  overflow: hidden;
}
.snip1143 a {
  padding: 0.3em 0;
  color: rgba(255, 255, 255, 0.5);
  position: relative;
  display: inline-block;
  letter-spacing: 1px;
  margin: 0;
  text-decoration: none;
}
.snip1143 a:before,
.snip1143 a:after {
  position: absolute;
  -webkit-transition: all 0.35s ease;
  transition: all 0.35s ease;
}
.snip1143 a:before {
  top: 100%;
  display: block;
  height: 3px;
  width: 100%;
  content: "";
  background-color: #cfcccc;
}
.snip1143 a:after {
  padding: 0.3em 0;
  position: absolute;
  top: 100%;
  left: 0;
  content: attr(data-hover);
  color: white;
  white-space: nowrap;
}
.snip1143 li:hover a,
.snip1143 .current a {
  transform: translateY(-100%);
}
    </style>
</head>
<body>
    <nav class="navbar">
        <div class="logo">
           <a href= "<%=request.getContextPath()%>/index.jsp"><img src="<%=request.getContextPath()%>/assets/turbostrip.png" alt="logo" /></a>
        </div>
        <div class="navbar-center">
            <h1>Turbo Trip</h1>
        </div>
        <div class="navbar-right">
        <ul class="snip1143">
       <li>
            <a href="javascript:history.back()" data-hover="Back">Back</a>
            </li>
            </ul>
        </div>
    </nav>
    <!-- Your page content goes here -->
</body>
</html>

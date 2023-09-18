<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<%@ page import="java.util.*"%>
<%@ page import="com.fssa.turbotrip.model.*"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f4f4f4;
            padding: 20px;
        }

        .container {
            display: flex;
            flex-wrap: wrap;
            justify-content: center;
            gap: 20px;
        }

        .card {
            border: 1px solid #ccc;
            box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2);
            max-width: 300px;
            padding: 10px;
            background-color: #fff;
        }

        .card img {
            max-width: 100%;
            height: auto;
        }

        .card h2 {
            font-size: 20px;
            margin: 0;
        }

        .card p {
            font-size: 14px;
        }

        .btn-container {
            display: flex;
            justify-content: space-between;
            margin-top: 10px;
        }

        .btn {
            padding: 10px 20px;
            background-color: #007bff;
            color: #fff;
            border: none;
            cursor: pointer;
            flex: 1;
            margin: 0 5px;
        }

        .btn.update {
            background-color: #28a745;
        }

        .btn.delete {
            background-color: #dc3545;
        }

        .btn:hover {
            opacity: 0.8;
        }
    </style>
</head>
<body>
    <h1>All Attached CarList</h1>
    <div class="container">
        <%
            List<Car> cars = (List<Car>) session.getAttribute("cars");
            for (Car car : cars) {
        %>
        <div class="card">
            <img src="<%= car.getCarImage() %>" alt="Car Image">
            <h2><%= car.getCarmodel() %></h2>
            <p>User ID: <%= car.getUserId() %></p>
            <p>Car Registration: <%= car.getCarNo() %></p>
            <p><%= car.getDescription() %></p>
            <div class="btn-container">
                <a href="jsp/UpdateCar1.jsp"><button class="btn update">Update</button></a>
                <a href="DeleteCarServlet?id=<%= car.getCarId() %>"><button class="btn delete">Delete</button></a>
            </div>
        </div>
        <%
            }
        %>
    </div>
</body>
</html>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Turbotrip</title>
</head>
<body>
<% 
    String name = null;
    if (name != null) {
        out.println("Hello, " + name + "!");
    } else {
        out.println("Hello, User!");
    }
%>
</body>
</html>
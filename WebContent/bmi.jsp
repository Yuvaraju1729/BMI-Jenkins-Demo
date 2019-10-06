<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>BMI Calculator</title>
</head>
<body>
<center><h3>Your BMI is <%=request.getAttribute("bmi")%></h3>
<h5>BMI < 18.5 = Underweight</h5>
<h5>BMI 18.5 - 24.9 = Normal</h5>
<h5>BMI > 25.0 = Overweight</h5></center>
</body>
</html>
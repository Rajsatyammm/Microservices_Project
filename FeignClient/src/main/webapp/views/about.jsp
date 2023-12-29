<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>About Us</title>
<style>
body {
	font-family: Arial, sans-serif;
	margin: 0;
	padding: 0;
	background-color: #f4f4f4;
}

.navbar {
	background-color: #333;
	overflow: hidden;
}

.navbar a {
	float: left;
	display: block;
	color: white;
	text-align: center;
	padding: 14px 16px;
	text-decoration: none;
}

.navbar a:hover {
	background-color: #ddd;
	color: black;
}

.about-container {
	max-width: 800px;
	margin: 50px auto;
	padding: 20px;
	background-color: #fff;
	border-radius: 5px;
	box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
}

.about-container h2 {
	text-align: center;
}

.about-content {
	text-align: justify;
}

footer {
	background-color: #333;
	color: #fff;
	padding: 10px;
	text-align: center;
	position: fixed;
	bottom: 0;
	width: 100%;
}
</style>
</head>
<body>

	<div class="navbar">
		<a href="/">Home</a>
		<a href="contact">Contact Us</a>
		<a href="employee-login">Employee Login</a>
		<a href="admin-login">Admin Login</a>
	</div>

	<div class="about-container">
		<h2>About Us</h2>
		<div class="about-content">
			<p>Welcome to our Employee Management System, your comprehensive solution for efficient workforce management. Our system is designed to streamline the process of managing employees, from recruitment to retirement.</p>
    
            <h2>Our Mission</h2>
            <p>Our mission is to provide organizations with a user-friendly and reliable Employee Management System that enhances efficiency, promotes transparency, and contributes to the overall success of the business.</p>
    
		</div>
	</div>
	
	<footer>
		<p>&copy; 2023 @Satyam-Raj Employee Management System. All rights reserved.</p>
	</footer>

</body>
</html>
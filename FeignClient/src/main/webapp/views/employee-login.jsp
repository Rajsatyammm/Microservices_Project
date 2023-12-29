<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Employee Login</title>
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

.login-container {
	max-width: 400px;
	margin: 100px auto;
	padding: 20px;
	background-color: #fff;
	border-radius: 5px;
	box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
}

.login-container h2 {
	text-align: center;
}

.login-form input {
	width: 100%;
	padding: 10px;
	margin-bottom: 15px;
	border: 1px solid #ccc;
	border-radius: 3px;
}

.login-form button {
	background-color: #333;
	color: #fff;
	padding: 10px;
	border: none;
	border-radius: 3px;
	cursor: pointer;
	width: 100%;
}

.login-form button:hover {
	background-color: #ddd;
	color: black;
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
		<a href="/">Home</a> <a href="contact">Contact Us</a> <a href="about">About
			Us</a> <a href="admin-login">Admin Login</a>
	</div>

	<div class="login-container">
		<h2>Employee Login</h2>
		<form class="login-form" action="/login-controller" method="post">
			<input type="number" name="eid" placeholder="Employee ID" required>
			<input type="text" name="ename" placeholder="Name" required>
			<input type="email" name="email" placeholder="Email" required>
			<button type="submit">Login</button>
		</form>
	</div>

	<footer>
		<p>&copy; 2023 @Satyam-Raj. All rights reserved.</p>
	</footer>

</body>
</html>
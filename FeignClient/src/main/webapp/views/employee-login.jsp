<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Employee Login</title>

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
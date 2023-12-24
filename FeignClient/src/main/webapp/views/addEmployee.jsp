<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Your Website</title>

</head>

<body>
	<header>
		<img
			src="NEC_Corporation_India2022061412400620220614124939-removebg-preview.png"
			alt="Company Logo" class="logo">
		<nav>
			<a href="/">Home</a> <a href="/employees/add">Add Employee</a> <a
				href="/employees/update">Update Employee Detail</a> <a href="/employees/delete">Delete
				Employee </a> <a href="/employees/list-all">Display all Employee</a>
		</nav>
	</header>
	<div class="hero">
		<section>
			<h2>Employee Addition</h2>
			<p>Welcome back! Please enter Employee detail to register the
				Employee.</p>
		</section>
		<section>
			<form action="/employees/add-emp" method="post">
				<label for="name">Name:</label> <input type="text" id="name"
					name="name" required> <label for="email">Email:</label> <input
					type="email" id="email" name="email" required> <label
					for="addr">Address:</label> <input type="text" id="addr"
					name="addr" required> <label for="sal">Salary:</label> <input
					type="number" id="sal" name="sal" required>
				<button type="submit">Add Employee</button>
			</form>
		</section>
	</div>
	<footer> &copy; 2023 Your Website. All rights reserved. </footer>
</body>

</html>
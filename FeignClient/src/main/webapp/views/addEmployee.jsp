<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Your Website</title>
<style>
body {
	font-family: Arial, sans-serif;
	margin: 0;
	padding: 0;
	background-color: #f4f4f4;
}

header {
	/* background-color: #333; */
	background-color: rgb(212, 238, 248);
	/* background-color: white; */
	/* color: black; */
	color: white;
	padding: 15px;
	text-align: center;
}

header {
	display: flex;
	justify-content: space-around;
}

header img {
	height: 80px;
	width: 300px;
}

nav {
	display: flex;
	justify-content: center;
	/* background-color: #444; */
	padding: 10px;
}

nav a {
	color: black;
	font-size: 20px;
	text-decoration: none;
	padding: 10px 20px;
	margin: 0 10px;
	margin: auto;
	border-radius: 5px;
	transition: background-color 0.3s;
}

nav a:hover {
	background-color: rgb(43, 42, 42);
	color: white;
}

footer {
	background-color: #333;
	color: white;
	text-align: center;
	padding: 10px;
	position: fixed;
	bottom: 0;
	width: 100%;
}

.hero {
	position: relative;
	height: 80vh;
	width: 100%;
	display: flex;
	align-items: center;
	justify-content: center;
	flex-direction: column;
}

.hero::before {
	content: "";
	background-image: url('bg2.jpg');
	background-size: cover;
	position: absolute;
	filter: blur(6px);
	top: 0px;
	right: 0px;
	bottom: 0px;
	left: 0px;
	z-index: -10;
}

section {
	color: white;
	padding: 10px;
	margin: 0px;
	text-align: center;
}

section h2 {
	text-align: center;
	font-size: 30px;
	color: rgb(247, 205, 205);
	/* color:rgb(212, 238, 248); */
}

form {
	display: flex;
	flex-direction: column;
	align-items: center;
}

input {
	margin: 10px;
	padding: 10px;
	width: 25vw;
}

button {
	width: 30%;
	padding: 5px;
}
</style>
</head>

<body>
	<header>
		<img
			src="NEC_Corporation_India2022061412400620220614124939-removebg-preview.png"
			alt="Company Logo" class="logo">
		<nav>
			<a href="home.html">Home</a> <a href="#add">Add Employee</a> <a
				href="#update">Update Employee Detail</a> <a href="#delete">Delete
				Employee </a> <a href="#alldisplay">Display all Employee</a>
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
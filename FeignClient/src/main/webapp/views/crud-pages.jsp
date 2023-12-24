<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="com.example.demo.model.Employee"%>
<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Admin-Dashboard</title>

</head>

<body>

	<%
	Employee employee = (Employee) request.getAttribute("employee");
	%>

	<header>
		<h1>
			Welcome
			<%=employee.getEname()%></h1>
	</header>

	<nav>
		<a href="/">Home</a> <a href="/admin/add">Add Employee</a> <a
			href="/admin/delete">Delete Employee</a> <a href="/admin/update">Update
			Employee</a> <a href="/admin/list-emp">Get Employee</a> <a
			href="/admin/list-all">Get All Employees</a> <a href="/logout">Logout</a>
	</nav>


	<h2>Admin Details:</h2>
	<p>
		<strong>Name:</strong>
		<%=employee.getEname()%></p>
	<p>
		<strong>Email:</strong>
		<%=employee.getEmail()%></p>
	<p>
		<strong>Address:</strong>
		<%=employee.getEadd()%></p>





	<footer>
		<p>&copy; 2023 Employee Management System. All rights reserved.</p>
	</footer>

</body>

</html>

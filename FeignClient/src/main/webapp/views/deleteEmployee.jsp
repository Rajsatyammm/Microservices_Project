<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Delete Employee</title>


</head>
<body>

<nav>
    <a href="/">Home</a>
    <a href="/admin/add">Add Emp</a>
    <a href="/admin/update">Update Emp</a>
    <a href="/admin/list-emp">List by ID</a>
    <a href="/admin/list-all">List Emp</a>
</nav>
    
<form action="/employees/del-emp" method="post">
	<h2>Delete Employee</h2>
	<label for="eid">Employee ID:</label> 
	<input type="number" id="eid" name="eid" required>
	<button type="submit">Delete</button>
</form>
</body>
</html>
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
	<form action="/admin/list" method="post">
		<h2>Get Employee by ID</h2>
		<label for="eid">Employee ID:</label> 
		<input type="number" id="eid" name="eid" required>
		<button type="submit">Get</button>
	</form>
</body>
</html>
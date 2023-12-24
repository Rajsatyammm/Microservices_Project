<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Update Employee</title>
    
</head>
<body>

<nav>
    <a href="/">Home</a> 
    <a href="/admin/add">Add Emp</a>
    <a href="/admin/delete">Delete Emp</a>
    <a href="/admin/list-emp">List by ID</a>
    <a href="/admin/list-all">List All</a>
</nav>

<form action="/employees/upd-emp" method="post">
    <h2>Update Employee</h2>
    
    <label for="eid">Employee ID:</label>
    <input type="number" id="eid" name="eid" required>

    <label for="ename">Employee Name:</label>
    <input type="text" id="ename" name="name" required>
    
    <label for="email">Email:</label>
    <input type="email" id="email" name="email" required>

    <label for="esal">Employee Salary:</label>
    <input type="number" id="esal" name="sal" required>

    <label for="eadd">Employee Address:</label>
    <input type="text" id="eadd" name="addr" required>
    
    <button type="submit">Update Employee</button>
</form>
</body>
</html>

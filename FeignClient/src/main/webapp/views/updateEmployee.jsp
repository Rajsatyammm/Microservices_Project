<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Update Employee</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f4f4f4;
            margin: 0;
            padding: 0;
            display: flex;
            flex-direction: column;
            align-items: center;
            justify-content: center;
            height: 100vh;
        }

        nav {
            background-color: #555;
            overflow: hidden;
            width: 100%;
            position: fixed;
            top: 0;
            z-index: 1000; /* Added z-index to ensure the navbar stays on top */
        }

        nav a {
            float: left;
            display: block;
            color: white;
            text-align: center;
            padding: 14px 16px;
            text-decoration: none;
        }

        nav a:hover {
            background-color: #ddd;
            color: black;
        }

        form {
            background-color: #fff;
            padding: 20px;
            border-radius: 8px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
            width: 300px;
        }

        h2 {
            text-align: center;
            color: #333;
        }

        label {
            display: block;
            margin-bottom: 8px;
            color: #555;
        }

        input {
            width: 100%;
            padding: 8px;
            margin-bottom: 16px;
            box-sizing: border-box;
            border: 1px solid #ccc;
            border-radius: 4px;
        }

        button {
            background-color: #4caf50;
            color: #fff;
            padding: 10px;
            border: none;
            border-radius: 4px;
            cursor: pointer;
            width: 100%;
        }

        button:hover {
            background-color: #45a049;
        }
    </style>
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

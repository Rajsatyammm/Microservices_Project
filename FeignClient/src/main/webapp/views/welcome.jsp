<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="com.example.demo.model.Employee"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Welcome Employee</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
            background-color: #f2f2f2;
        }

        header {
            background-color: #333;
            color: #fff;
            padding: 15px;
            text-align: center;
        }

        nav {
            background-color: #555;
            overflow: hidden;
        }

        nav a {
            float: right;
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

        section {
            background-color: #fff;
            padding: 20px;
            border-radius: 8px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
            margin-top: 20px;
            width: 40%;
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
        
        .flex {
        	display: flex;
        	justify-content: center;
        	align-items: center;
        }
    </style>
</head>

<body>

    <%
    // Retrieve the "employee" attribute from the request
    Employee employee = (Employee) request.getAttribute("employee");
    %>

    <header>
        <h1>Welcome, <%= employee.getEname() %></h1>
    </header>

    <nav>
        <a href="/">Home</a>
        <a href="/logout">Logout</a>
    </nav>

	<div class="flex">
	    <section>
	        <h2>Employee Details:</h2>
	        <p><strong>ID:</strong> <%= employee.getEid() %></p>
	        <p><strong>Name:</strong> <%= employee.getEname() %></p>
	        <p><strong>Email:</strong> <%= employee.getEmail() %></p>
	        <p><strong>Salary:</strong> <%= employee.getEsal() %></p>
	        <p><strong>Address:</strong> <%= employee.getEadd() %></p>
	        <p><strong>Role:</strong> <%= employee.getRole() %></p>
	    </section>
    </div>

    <footer>
        <p>&copy; 2023 @Satyam-Raj Employee Portal. All rights reserved.</p>
    </footer>

</body>

</html>

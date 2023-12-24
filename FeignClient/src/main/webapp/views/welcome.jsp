<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="com.example.demo.model.Employee"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Welcome Employee</title>
   
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

	
	    <section>
	        <h2>Employee Details:</h2>
	        <p><strong>ID:</strong> <%= employee.getEid() %></p>
	        <p><strong>Name:</strong> <%= employee.getEname() %></p>
	        <p><strong>Email:</strong> <%= employee.getEmail() %></p>
	        <p><strong>Salary:</strong> <%= employee.getEsal() %></p>
	        <p><strong>Address:</strong> <%= employee.getEadd() %></p>
	        <p><strong>Role:</strong> <%= employee.getRole() %></p>
	    </section>
    

    <footer>
        <p>&copy; 2023 @Satyam-Raj Employee Portal. All rights reserved.</p>
    </footer>

</body>

</html>

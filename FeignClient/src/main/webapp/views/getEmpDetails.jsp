<%@ page import="java.util.List"%>
<%@ page import="com.example.demo.model.Employee"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>All Employees</title>
<style>
body {
    font-family: 'Arial', sans-serif;
    background-color: #f5f5f5;
    margin: 60px 20px 20px 20px;
}

h2 {
    color: #333;
}

table {
    width: 100%;
    border-collapse: collapse;
    margin-top: 20px;
}

th, td {
    border: 1px solid #ddd;
    padding: 8px;
    text-align: left;
}

th {
    background-color: #333;
    color: #fff;
}

p {
    color: #888;
}

nav {
    background-color: #555;
    overflow: hidden;
    width: 100%;
    position: fixed;
    top: 0;
    z-index: 1000;
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

.content-container {
	margin-top: 60px; 
}
</style>
</head>
<body>

	<h2>All Employees</h2>
	
	<nav>
        <a href="/">Home</a>
        <a href="/admin/add">Add Emp</a>
        <a href="/admin/update">Update Emp</a>
        <a href="/admin/delete">Delete Emp</a>
        <a href="/admin/list-emp">List Emp by ID</a>
        <a href="/admin/list-all">List Emp</a>
    </nav>

	<div class="content-container">
	<%
	List<Employee> employeeList = (List<Employee>) request.getAttribute("employeeList");

	if (employeeList != null && !employeeList.isEmpty()) {
	%>
	<table>
		<tr>
			<th>Employee ID</th>
			<th>Name</th>
			<th>Email</th>
			<th>Salary</th>
			<th>Address</th>
			<th>Role</th>
		</tr>
		<%
		for (Employee employee : employeeList) {
		%>
		<tr>
			<td><%=employee.getEid()%></td>
			<td><%=employee.getEname()%></td>
			<td><%=employee.getEmail()%></td>
			<td><%=employee.getEsal()%></td>
			<td><%=employee.getEadd()%></td>
			<td><%=employee.getRole()%></td>
		</tr>
		<%
		}
		%>
	</table>
	<%
	} else {
	%>
	<p>No employee information available.</p>
	<%
	}
	%>
	</div>

</body>
</html>

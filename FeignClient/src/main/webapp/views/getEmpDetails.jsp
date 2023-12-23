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
	margin: 20px;
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
	background-color: #4CAF50;
	color: white;
}

p {
	color: #888;
}
</style>
</head>
<body>

	<h2>All Employees</h2>

	<%
	List<Employee> employeeList = (List<Employee>) request.getAttribute("employeeList");

	if (employeeList != null && !employeeList.isEmpty()) {
	%>
	<table>
		<tr>
			<th>Employee ID</th>
			<th>Name</th>
			<th>Salary</th>
			<th>Address</th>
		</tr>
		<%
		for (Employee employee : employeeList) {
		%>
		<tr>
			<td><%=employee.getEid()%></td>
			<td><%=employee.getEname()%></td>
			<td><%=employee.getEsal()%></td>
			<td><%=employee.getEadd()%></td>
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

</body>
</html>

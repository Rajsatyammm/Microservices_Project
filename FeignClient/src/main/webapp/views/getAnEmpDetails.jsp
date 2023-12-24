<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="com.example.demo.model.Employee"%>
<!DOCTYPE html>
<html>
<head>
<title>Employee Details</title>

</head>
<body>

	<h2>Employee Details</h2>

	<%
	// Retrieve the "employee" attribute from the request
	Employee employee = (Employee) request.getAttribute("employee");

	if (employee != null) {
	%>
	<table border="1">
		<tr>
			<th>Employee ID</th>
			<th>Name</th>
			<th>Salary</th>
			<th>Address</th>
		</tr>
		<tr>
			<td><%=employee.getEid()%></td>
			<td><%=employee.getEname()%></td>
			<td><%=employee.getEsal()%></td>
			<td><%=employee.getEadd()%></td>
		</tr>
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

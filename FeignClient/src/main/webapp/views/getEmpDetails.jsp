<%@ page import="java.util.List"%>
<%@ page import="com.example.demo.model.Employee"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>All Employees</title>

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

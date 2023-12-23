<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<html>
<head>
<title>Employee List</title>
</head>
<body>
	<h2>Employee List</h2>
	<table>
		<thead>
			<tr>
				<th>ID</th>
				<th>Name</th>
				<!-- Add more columns as needed -->
			</tr>
		</thead>
		<tbody>
			<c:forEach var="employees" items="${employeeList}">
				<tr>
					<td>${employee.id}</td>
					<td>${employee.name}</td>
					<!-- Add more columns as needed -->
				</tr>
			</c:forEach>
		</tbody>
	</table>
</body>
</html>

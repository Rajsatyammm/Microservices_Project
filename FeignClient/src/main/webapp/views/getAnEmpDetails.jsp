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
        // Retrieve the "employee" attribute from the request
        Employee employee = (Employee) request.getAttribute("employee");

        if (employee != null) {
        %>
        <table border="1">
            <tr>
                <th>Employee ID</th>
                <th>Name</th>
                <th>Email</th>
                <th>Salary</th>
                <th>Address</th>
                <th>Role</th>
            </tr>
            <tr>
                <td><%=employee.getEid()%></td>
                <td><%=employee.getEname()%></td>
                <td><%=employee.getEmail()%></td>
                <td><%=employee.getEsal()%></td>
                <td><%=employee.getEadd()%></td>
                <td><%=employee.getRole()%></td>
            </tr>
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

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Employee Management System</title>

</head>

<body>

    <nav>
        <a href="/">Home</a>
        <a href="/admin/add">Add Emp</a>
        <a href="/admin/update">Update Emp</a>
        <a href="/admin/delete">Delete Emp</a>
        <a href="/admin/list-emp">List Emp by ID</a>
        <a href="/admin/list-all">List Emp</a>
    </nav>

    <section>
    
    <% String status = (String) request.getAttribute("status"); %>
    <% if("successAdd".equals(status)) {%>
        <h2>Success!</h2>
        <p>Employee added successfully</p>
    <%} %>
    <% if("failureAdd".equals(status)) {%>
        <h2>Failure!</h2>
        <p>Employee failed to add</p>
    <%} %>
    <% if("successDelete".equals(status)) {%>
        <h2>Success!</h2>
        <p>Employee deleted successfully</p>
    <%} %>
    <% if("failureDelete".equals(status)) {%>
        <h2>Failure!</h2>
        <p>Employee failed to delete</p>
    <%} %>
    <% if("successUpdate".equals(status)) {%>
        <h2>Success!</h2>
        <p>Employee updated successfully</p>
    <%} %>
    <% if("failureUpdate".equals(status)) {%>
        <h2>Failure!</h2>
        <p>Employee failed to update</p>
    <%} %>
    </section>

    <footer>
        <p>&copy; 2023 @Satyam-Raj Employee Management System. All rights reserved.</p>
    </footer>

</body>

</html>

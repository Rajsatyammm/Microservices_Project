<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Employee Management System</title>
<style>
    body {
        font-family: Arial, sans-serif;
        margin: 0;
        padding: 0;
        background-color: #f2f2f2;
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

    section {
        text-align: center;
        margin-top: 20px;
    }

    h2 {
        color: #333;
    }

    p {
        color: #666;
    }

    success-message {
        background-color: #4caf50;
        color: #fff;
        padding: 10px;
        border-radius: 5px;
        margin-top: 20px;
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
</style>
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

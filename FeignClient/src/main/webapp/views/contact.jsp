<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Contact Us</title>
    
</head>
<body>

<div >
    <a href="/">Home</a>
    <a href="about">About Us</a>
    <a href="employee-login">Employee Login</a>
    <a href="admin-login">Admin Login</a>
</div>

<div>
    <h2>Contact Us</h2>
    <form class="contact-form" action="/getintouch" method="post">
        <input type="text" name="name" placeholder="Your Name" required>
        <input type="email" name="email" placeholder="Your Email" required>
        <textarea name="message" placeholder="Your Message" rows="5" required></textarea>
        <button type="submit">Submit</button>
    </form>
</div>

</body>
</html>
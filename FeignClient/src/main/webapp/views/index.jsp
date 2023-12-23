<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Your Website</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
            background-color: #f4f4f4;
        }

        header {
            /* background-color: #333; */
            background-color:rgb(212, 238, 248);
            /* background-color: white; */
            /* color: black; */
            color:white;
            padding: 15px;
            text-align: center;
        }
        header{
            display:flex;
            justify-content: space-around;
        }
        header img{
            height:80px;
            width:300px;
        }
        nav {
            display: flex;
            justify-content: center;
            /* background-color: #444; */
            padding: 10px;
        }

        nav a {
            color: black;
            font-size: 20px;
            text-decoration: none;
            padding: 10px 20px;
            margin: 0 10px;
            margin:auto;
            border-radius: 5px;
            transition: background-color 0.3s;
        }

        nav a:hover {
            background-color: rgb(43, 42, 42);
            color:white;
        }
        
        footer {
            background-color: #333;
            color: white;
            text-align: center;
            padding: 10px;
            position: fixed;
            bottom: 0;
            width: 100%;
        }
.hero {
    position: relative; 
    height: 80vh;
    width: 100%;
    display: flex;
    align-items: center;
    justify-content: center;
    flex-direction: column;
}

  .hero::before {    
      content: "";
      background-image: url('back.avif');
      background-size: cover;
      position: absolute;
      top: 0px;
      right: 0px;
      bottom: 0px;
      left: 0px;
       filter:blur(6px);
     z-index:-10;
}
section{
       color:white;
       padding:10px;
       margin:0px;
       text-align: center;
       width:70%
}
li{
    list-style: none;
    text-align: center;
}
section h2{
    text-align: center;
    font-size: 30px;
    color:rgb(247, 205, 205);
       /* color:rgb(212, 238, 248); */
}
    </style>
</head>

<body>
    <header>
        <img src="NEC_Corporation_India2022061412400620220614124939-removebg-preview.png" alt="Company Logo" class="logo">
        <nav>
            <a href="/">Home</a>
            <a href="about">About Us</a>
            <a href="contact">Contact Us</a>
            <a href="employee-login">Employee Login</a>
            <a href="admin-login">Administration Login</a>
        </nav>
    </header>
    <div class="hero">
        <section>
            <h2>Welcome to our Employee Management System!</h2>
            <p>
                Streamline your workforce management with our comprehensive Employee Management System. Whether you are a small business or a large enterprise, our platform is designed to help you efficiently manage your employees, their information, and their tasks.
            </p>
        </section>
        <section>
            <h2>Key Features:</h2>
            <ul>
                <li>Efficient Employee Data Management</li>
                <li>Secure Access and Permissions</li>
                <li>Provide Administration Access to maintain the Database and Access for Employee</li>
                <li>Full Information can be acheived by Administrator</li>
            </ul>
        </section>
        <section>
            <h2>How It Works:</h2>
            <p>
                Our Employee Management System simplifies the process of handling employee data and tasks. You can easily navigate through the system to input, update, and track information. Whether you're an HR professional or a team manager, our user-friendly interface ensures a seamless experience.
            </p>
        </section>  
    </div>
    <footer>
        &copy; 2023 Your Website. All rights reserved.
    </footer>
</body>

</html>

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
      filter:blur(6px);
      top: 0px;
      right: 0px;
      bottom: 0px;
      left: 0px;
       z-index:-10;
}
section{
       color:white;
       padding:10px;
       margin:0px;
       text-align: center;
}

section h2{
    text-align: center;
    font-size: 30px;
    color:rgb(247, 205, 205);
       /* color:rgb(212, 238, 248); */
}
form{
    display:flex;
    flex-direction: column;
    align-items: center;
}
input{
    width:50%;
 margin:10px;
 padding:10px;
}

 #submit input{
   width:100%;
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
            <h2>Employee Login</h2>
            <p>
                Welcome back! Please enter your credentials to access your account.
            </p>
             <form action="/login-controller" method="post">
                 Employee ID: <input type="number" name="eid">
                 Employee Name : <input type="text" name="ename">
                 Employee email : <input type="text" name="email">
                 <div id="submit">
                     <input type="submit">
                 </div>
             </form>
               <h3>Security Notice:</h3>
              <p>
                For security reasons, please ensure that you are logging in from a trusted device. If you encounter any issues, contact Us </p>
                <p>By logging in, you agree to abide by the company's [Terms of Service] and [Privacy Policy].</p>
        </section>
    </div>

    <footer>
        &copy; 2023 Your Website. All rights reserved.
    </footer>
</body>

</html>

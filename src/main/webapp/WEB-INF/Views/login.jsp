<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page isELIgnored="false" %>
 <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Login Form</title>
    <link rel="icon" type="image/png" href="https://img.lovepik.com/element/45004/4989.png_860.png">
    <style>
        /* Apply a background gradient to the body */
        body {
            margin: 0;
            padding: 0;
            font-family: Arial, sans-serif;
            background:  linear-gradient(135deg, #00C9FF, #A770EF, #92FE9D);
            height: 100vh;
            display: flex;
            justify-content: center;
            align-items: center;
        }

        /* Style for the login form */
        .login-container {
            background-color: white;
            padding: 40px;
            border-radius: 12px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
            max-width: 350px;
            width: 100%;
            text-align: center;
            height:300px;
        }

        h2 {
            margin-bottom: 20px;
            color: #333;
        }

        .input-field {
            width: 95%;
            padding: 10px;
            margin: 10px 0;
            border-radius: 8px;
            border: 1px solid #ccc;
            font-size: 16px;
        }

        .submit-btn {
            width: 100%;
            padding: 12px;
            background-color: #2575fc;
            border: none;
            color: white;
            border-radius: 8px;
            font-size: 18px;
            cursor: pointer;
            transition: background-color 0.3s;
        }

        .submit-btn:hover {
            background-color: #1d61c2;
        }

        .register-link {
            display: block;
            margin-top: 15px;
            font-size: 14px;
            color: #666;
            text-decoration: none;
        }
        .register-word{
        	color:blue;
			 text-decoration: none;
        }
        .register-word:hover{
        	text-decoration: underline;
        }

    </style>
</head>
<body>
    <div class="login-container">
        <h2>Login</h2>
        <form action="handle_form" method="post">
            <input type="email" class="input-field" placeholder="Email" name="email" required>
            <input type="password" class="input-field" placeholder="Password" name="password" required>
            <button type="submit" class="submit-btn">Login</button>
            <div class="register-link">
            <label>Don't have an account? </label>
            <a href="register" class="register-word">Register here</a>
            </div>
        </form>
    </div>
</body>
</html>


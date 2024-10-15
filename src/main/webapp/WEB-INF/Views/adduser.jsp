<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Add an User</title>
    <link rel="icon" type="image/png" href="https://img.lovepik.com/element/45004/4989.png_860.png">
    <style>
        body {
            background: linear-gradient(135deg, #f8a5c2, #786fa6);
            font-family: Arial, sans-serif;
            display: flex;
            justify-content: center;
            align-items: center;
            min-height: 100vh;
            margin: 0;
        }

        .register-container {
            background-color: white;
            padding: 40px;
            padding-top:20px;
            border-radius: 10px;
            box-shadow: 0px 4px 10px rgba(0, 0, 0, 0.1);
            max-width: 600px;
            width: 100%;
            margin-top:60px;
        }

        .register-container h2 {
            text-align: center;
            margin-bottom: 20px;
            color: #333;
        }

        .form-group {
            margin-bottom: 15px;
        }

        .form-group label {
            display: block;
            margin-bottom: 5px;
            color: #555;
        }

        .form-group input, .form-group select, .form-group textarea {
            width: 100%;
            padding: 10px;
            border: 1px solid #ccc;
            border-radius: 5px;
            font-size: 16px;
        }

        .form-group input[type="submit"] {
            background-color: #786fa6;
            color: white;
            border: none;
            cursor: pointer;
            font-size: 18px;
            width: 100%;
        }

        .form-group input[type="submit"]:hover {
            background-color: #574b90;
        }

        .form-group .gender-options {
            display: flex;
            align-items: center;
        }



        .register-container p {
            text-align: center;
        }

        .register-container p a {
            color: #786fa6;
            text-decoration: none;
        }

        .register-container p a:hover {
            text-decoration: underline;
        }
        
        .error-message {
            color: red;
            font-size: 14px;
            display: none; /* Hide the error message initially */
            margin-top: 5px; /* Adds some space above the error message */
        }
        
    </style>
    
     <script>
        function validateForm(event) {
            // Get the password and confirm password values
            var password = document.getElementById("password").value;
            var confirmPassword = document.getElementById("confirm-password").value;
            var errorMessage = document.getElementById("error-message");

            // Check if the passwords match
            if (password !== confirmPassword) {
                // Prevent form submission
                event.preventDefault();
                errorMessage.style.display = "block"; // Show error message
            } else {
                errorMessage.style.display = "none"; // Hide error message
            }
        }
    </script>
    
</head>
<body>

<div class="register-container">
    <h2> Add an User </h2>
    <form action="add_user_form" method="POST" onsubmit="validateForm(event)">
        <div class="form-group">
            <label for="name">Name</label>
            <input type="text" id="name" name="name" required>
        </div>

        <div class="form-group">
            <label for="email">Email</label>
            <input type="email" id="email" name="email" required>
        </div>

        <div class="form-group">
            <label>Gender</label>
            <div class="gender-options">
                <input type="radio" id="male" name="gender" value="Male">Male

                <input type="radio" id="female" name="gender" value="Female">Female

                <input type="radio" id="other" name="gender" value="Other">Other
            </div>
        </div>

        <div class="form-group">
            <label for="city">City</label>
            <input type="text" id="city" name="city" required>
        </div>

        <div class="form-group">
            <label for="address">Address</label>
            <textarea id="address" name="address" rows="4" required></textarea>
        </div>
        
        <div class="form-group">
            <label for="password">Password</label>
            <input type="password" id="password" name="password" required>
        </div>

        <div class="form-group">
            <label for="confirm-password">Confirm Password</label>
            <input type="password" id="confirm-password" name="confirmPassword" required>
            <div id="error-message" class="error-message">Passwords do not match.</div>
        </div>

        <div class="form-group">
            <input type="submit" value="ADD">
        </div>

    </form>
</div>

</body>
</html>

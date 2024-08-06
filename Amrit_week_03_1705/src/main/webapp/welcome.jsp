<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<style>
    body {
        font-family: Arial, sans-serif;
        background-color: #f4f4f4;
        text-align: center;
        padding: 50px;
    }

    .welcome-message {
        font-size: 24px;
        margin-bottom: 20px;
    }

    .intro-text {
        font-size: 18px;
        margin-bottom: 30px;
    }

    .btn {
        background-color: #4CAF50; 
        border: none;
        color: white;
        padding: 15px 32px;
        text-align: center;
        text-decoration: none;
        display: inline-block;
        font-size: 16px;
        margin: 10px 20px;
        cursor: pointer;
        border-radius: 4px;
        transition: background-color 0.3s;
    }

    .btn:hover {
        background-color: #45a049;
    }
</style>
</head>
<body>
    <div class="welcome-message">Welcome</div>
    <button class="btn" onclick="redirectToSignup()">Sign up</button>
    <button class="btn" onclick="redirectToLogin()">Login</button>
    <script>
        function redirectToSignup(){
            window.location.href = 'signup.jsp';
        }
        function redirectToLogin(){
            window.location.href = 'login.jsp';
        }
    </script>
</body>
</html>

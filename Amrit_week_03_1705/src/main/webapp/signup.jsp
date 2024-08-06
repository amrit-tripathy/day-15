<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Login and Signup Form</title>
    <link rel="stylesheet" href="credstyle.css"> <!-- Link your CSS file -->
    <style>
        body{
    margin-top: 5rem;
    display: flex;
    justify-content: center;
    align-items: center;
}
h2{
    text-align: center;
}
input{
    width:400px;
    padding: 10px 20px;
    font-size: 1rem;
    border: 1px solid #ccc;
    border-radius: 4px;
    box-sizing: border-box;
}
.form-group{
    display: flex;
    flex-direction: column;
    align-items: center;
    margin-bottom: 0.5rem;
}
.container{
    display: flex;
    flex-direction: column;
    align-items: center;
    width: 400px;
    background-color: #fff;
    padding: 20px;
    border-radius: 8px;
    box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
    width: 400px;
}
button[type="submit"]{
    color: white;
    background-color: #007bff;
    padding: 10px 30px;
    border-radius: 10px;
    border: 1px solid  #9cc6f2;
    width: 100%;
    margin-top: 0.5rem;
    font-size: medium;
    font-family: 'Times New Roman', Times, serif;
    font-weight:500;
    transition:  0.3s ease;
}
button[type="submit"]:hover {
    background-color: #0056b3;
}
.form-group label {
    display: block;
    font-weight: bold;
    margin-bottom: 5px;
}
    </style>
</head>
<body>
<form action="signupServelet">
    <div class="container">
            <!-- Signup Form -->
                <h2>Sign up</h2>
                <div class="form-group">
                    <label for="signup-name">id</label>
                    <input type="number" id="id" name="id" required>
                </div>
                <div class="form-group">
                    <label for="name">Name</label>
                    <input type="text" id="name" name="name" required>
                </div>
               
                <div class="form-group">
                    <label for="mobile">mobile no.</label>
                    <input type="text" id="mobile" name="mobile" required>
                </div>
                 <div class="form-group">
                    <label for="signup-password">Email</label>
                    <input type="email" id="email" name="email" required>
                </div>
                <div class="form-group">
                    <label for="password">Password</label>
                    <input type="password" id="password" name="password" required>
                </div>
                <div class="form-group">
                    <label for="confirmpassword">Confirm Password</label>
                    <input type="password" id="confirmpassword" name="confirmpassword" required>
                </div>
                
                <button type="submit" >Sign up</button>
        </div>
    </form>

</body>
</html>

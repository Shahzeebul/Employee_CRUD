<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Login</title>
<style>
    body {
        background-image: url('bg.jpg');
        background-size: cover;
        background-position: center;
        display: flex;
        justify-content: center;
        align-items: center;
        height: 100vh;
        margin: 0;
        padding: 0;
        flex-direction: column;
    }
    form {
        background-color: rgba(255, 255, 255, 0.8); /* Adjust the opacity as needed */
        padding: 40px;
        border-radius: 10px;
        box-shadow: 0 0 10px rgba(0, 0, 0, 0.3);
    }
    input[type="text"],
    input[type="password"],
    input[type="submit"] {
        width: 93%;
        padding: 13px;
        margin-bottom: 10px;
        border-radius: 5px;
        border: 1px solid #ccc;
    }
    input[type="submit"] {
        background-color: #4CAF50;
        color: white;
        border: none;
        cursor: pointer;
    }
    input[type="submit"]:hover {
        background-color: #45a049;
    }
</style>
</head>
<body>
    <h1 style="text-align: center;">Employee Login Page</h1>
    <form action="employeeLogin" method="post">
        Email: <input type="text" name="email" /><br/><br/>
        Password: <input type="password" name="password" /><br/><br/>
        <input type="submit" value="Login"/>
    </form>
</body>
</html>

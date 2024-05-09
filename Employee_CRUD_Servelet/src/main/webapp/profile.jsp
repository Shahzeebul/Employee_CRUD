<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Profile</title>
<style>
    /* Add your CSS styles here */
    body {
        font-family: Arial, sans-serif;
		background-image: url('bg.jpg');        
		background-size: cover;
        background-position: center;
        display: flex;
        justify-content: center;
        align-items: center;
        height: 100vh; /* Make sure the body takes up the full viewport height */
        margin: 0;
        flex-direction: column;
    }
    .content {
        background-color: rgba(255, 255, 255, 0.8); /* Background color with opacity */
        padding: 20px;
        border-radius: 10px;
        box-shadow: 0 0 10px rgba(0, 0, 0, 0.3);
        text-align: center; /* Center the content horizontally */
    }
    h3 {
        color: #6868e3;
    }
    .btn {
        display: inline-block;
        padding: 10px 20px;
        margin: 10px;
        border-radius: 5px;
        background-color: #6868e3;
        color: #fff;
        text-decoration: none;
        border: none;
        cursor: pointer;
    }
    .btn:hover {
        background-color: #5a5ad8;
    }
</style>
</head>
<body>

	<div class="content">
        <h3>Welcome : ${session_name}</h3>
        <a href="update.jsp" class="btn">Update Profile</a>
        <a href="delete.jsp" class="btn">Delete Account</a>
    </div>
</body>
</html>

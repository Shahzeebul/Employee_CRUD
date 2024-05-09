<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Delete Employee</title>
<style>
    /* Add your CSS styles here */
    body {
        background-image: url('bg.jpg');
        background-color: #f0f0f0;
        display: flex;
        justify-content: center;
        align-items: center;
        height: 100vh;
        margin: 0;
        flex-direction: column;
    }
    form {
        background-color: #fff;
        padding: 30px;
        border-radius: 8px;
        box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
    }
    
    input[type="text"],
    input[type="password"],
    input[type="submit"] {
        width: 90%;
        padding: 10px;
        margin-bottom: 10px;
        border-radius: 4px;
        border: 1px solid #ccc;
    }
    input[type="submit"] {
        background-color: #007bff;
        color: #fff;
        border: none;
        cursor: pointer;
    }
    input[type="submit"]:hover {
        background-color: #0056b3;
    }
</style>
</head>
<body>
    <div style="text-align: center;">
        <h1>Delete Employee</h1>
    </div>
    <form action="DeleteEmployeeServlet" method="post">
        EmpID: <input type="text" name="empID" /><br/><br/>
        <input type="submit" value="Delete"/>
    </form>
</body>
</html>

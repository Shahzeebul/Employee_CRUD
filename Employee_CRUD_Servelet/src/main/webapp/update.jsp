<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Update Employee</title>
<style>
    /* Add your CSS styles here */
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
    .container {
        background-color: rgba(255, 255, 255, 0.8);
        padding: 50px;
        border-radius: 10px;
        box-shadow: 0 0 10px rgba(0, 0, 0, 0.3);
        text-align: center;
        margin-bottom: 20px; /* Add some margin to separate from the h1 */
    }
    h1 {
        color: #333;
        margin-top: 20px;
    }
    form {
        width: 90%;
        margin: 0 auto;
    }
    input[type="text"],
    input[type="password"] {
        width: 100%;
        padding: 10px;
        margin-bottom: 10px;
        border-radius: 4px;
        border: 1px solid #ccc;
    }
    input[type="submit"] {
        width: 100%;
        padding: 10px;
        border: none;
        border-radius: 4px;
        background-color: #007bff;
        color: #fff;
        cursor: pointer;
    }
    input[type="submit"]:hover {
        background-color: #0056b3;
    }
</style>
</head>
<body>
    <h1>Update Employee</h1> <!-- Move the h1 tag outside the .container div -->
    <div class="container">
        <form action="UpdateEmployeeServlet" method="post">
            EmpID: <input type="text" name="empID" /><br/><br/>
            Name: <input type="text" name="name" /><br/><br/>
            Age: <input type="text" name="age" /><br/><br/>
            Position: <input type="text" name="position" /><br/><br/>
            Salary: <input type="text" name="salary" /><br/><br/>
            <input type="submit" value="Update"/>
        </form>
    </div>
</body>
</html>

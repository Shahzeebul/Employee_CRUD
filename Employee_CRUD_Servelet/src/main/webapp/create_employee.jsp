<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Employee Registration Form</title>
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
    form {
        background-color: rgba(255, 255, 255, 0.8);
        padding: 40px;
        border-radius: 10px;
        box-shadow: 0 0 10px rgba(0, 0, 0, 0.3);
        width: 90%;
        max-width: 400px;
        text-align: justify; /* Center align the form content */
    }
    input[type="text"],
    input[type="password"],
    input[type="number"],
    select {
        width: 93%;
        padding: 13px;
        margin-bottom: 10px;
        border-radius: 5px;
        border: 1px solid #ccc;
    }
    input[type="radio"] {
        margin-right: 10px;
    }
    input[type="submit"] 
    {
        width: 35%; /* Set button width to 35% */
        padding: 13px;
        border: none;
        border-radius: 5px;
        background-color: #4CAF50;
        color: white;
        cursor: pointer;
        margin: 0 auto; /* Center the button */
    }
    input[type="submit"]:hover {
        background-color: #45a049;
    }
    h2 {
        color: #333;
        margin-top: 20px;
    }
    .but {
    	text-align: center;
    }
    .login-link {
        margin-top: 20px;
        text-align: center;
    }
    .login-link a {
        color: #6868e3;
        text-decoration: none;
    }
    .login-link a:hover {
        text-decoration: underline;
    }
</style>
</head>
<body>
    <h1>Employee Registration Page</h1>
    <form action="employeeRegistration" method="post">
        Name: <input type="text" name="name" /><br/><br/>
        Age: <input type="number" name="age" /><br/><br/>
        Position: <input type="text" name="position" /><br/><br/>
        Salary: <input type="number" name="salary" /><br/><br/>
        Email: <input type="text" name="email" /><br/><br/>
        Password: <input type="password" name="password" /><br/><br/>
        <div class="but">
        	<input type="submit" value="Register" />
		</div>
    </form>
    <div class="login-link">
        Already have an account? <a href="login.jsp">Login</a>
    </div>
</body>
</html>

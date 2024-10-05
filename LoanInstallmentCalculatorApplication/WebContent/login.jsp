<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
    <title>Login</title>
    <link rel="stylesheet" type="text/css" href="./css/login.css">
</head>
<body>
    <div class="form-container">
        <h2>Login</h2>
        <form action="" method="">
            <label for="username">Username:</label> 
            <input type="text" id="username" name="username" required>
            
            <label for="password">Password:</label> 
            <input type="password" id="password" name="password" required>
            
            <input type="submit" value="Login">
        </form>
        <div class="signup-link">
            <p>Don't have an account? <a href="register.jsp">Sign up here</a></p>
        </div>
    </div>
</body>
</html>

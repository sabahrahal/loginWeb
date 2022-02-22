<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="https://fonts.googleapis.com/css2?family=Inter&family=Source+Sans+Pro:wght@200&display=swap" rel="stylesheet">
        <link rel="stylesheet" href="styles/style.css" />
        <title>Log In</title>
    </head>
    <body>  
        <div class="form">
            <h1>Login Error</h1>
            <h2 class="log-error">${error}</h2>
            <p>You do not have an account? <a href="register.jsp" class="link">Sign Up</a> or <a href="login.jsp" class="link">Try Again</a></p>
        </div>
    </body>
</html>

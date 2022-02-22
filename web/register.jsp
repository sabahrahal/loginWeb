<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <script src="https://kit.fontawesome.com/93f4c89fd3.js" crossorigin="anonymous"></script>
        <link href="https://fonts.googleapis.com/css2?family=Inter&family=Source+Sans+Pro:wght@200&display=swap" rel="stylesheet">
        <link rel="stylesheet" href="styles/style.css" />
        <title>Sign Up</title>
    </head>
    <body>
        <form class="form" action="${pageContext.request.contextPath}/UsersController?action=insert" method="POST" id="user-form">
            <h1>Sign Up</h1>
            <div class="container" >
                <div class="input-container bg-white">
                    <i class="fas fa-user-alt icon bg-white"></i>
                    <input type="text" placeholder="Username" class="input-field bg-white" name="username" id="input_username"/>
                    <p id="p-username" class="p-hidden p-style">The username must have a minimum length of 4 characters and cannot contain special symbols except " _ , - " example: albert_182</p>
                </div>
                
                <div class="input-container">
                    <i class="fas fa-envelope icon bg-white"></i>
                    <input type="text" placeholder="Email" class="input-field" name="email" id="input_email"/>
                    <p id="p-email" class="p-hidden p-style">Your email must contain an "@" and a domain</p>
                </div>
                
                <div class="input-container">
                    <i class="fas fa-key icon bg-white"></i>
                    <input type="password" placeholder="Password" class="input-field" name="password" id="input_password"/>
                    <p id="p-password" class="p-hidden p-style">Your password must contain more than 3 characters and can use special characters</p>
                </div>
                
                <div>
                    <input type="submit" value="Sign Up" class="button"/>
                    <p>By registering you are accepting our terms of use and privacy policies.</p>
                    <p>Do you already have an account? <a href="login.jsp" class="link">Log In</a></p>
                </div>
            </div>
        </form>
        <script src="js/main.js" charset="utf-8"></script>
    </body>
</html>

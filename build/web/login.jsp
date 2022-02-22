<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <script src="https://kit.fontawesome.com/93f4c89fd3.js" crossorigin="anonymous"></script>
        <link href="https://fonts.googleapis.com/css2?family=Inter&family=Source+Sans+Pro:wght@200&display=swap" rel="stylesheet">
        <link rel="stylesheet" href="styles/style.css" />
        <title>Log In</title>
    </head>
    <body>
        <form action="${pageContext.request.contextPath}/UsersController?action=select" class="form" method="POST">
            <h1>Log In</h1>
            <div class="container" >
                <div class="input-container bg-white">
                    <i class="fas fa-user-alt icon bg-white"></i>
                    <input type="text" placeholder="Username" class="input-field bg-white" name="username"/>
                </div>

                <div class="input-container">
                    <i class="fas fa-key icon bg-white"></i>
                    <input type="password" placeholder="Password" class="input-field" name="password"/>
                </div>

                <div>
                    <input type="submit" value="Log In" class="button"/>
                    <p>You do not have an account? <a href="register.jsp" class="link">Sign Up</a></p>
                </div>
            </div>
        </form>
    </body>
</html>

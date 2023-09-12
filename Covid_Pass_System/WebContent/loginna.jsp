<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Login Form</title>
    <link href="https://fonts.googleapis.com/css?family=ZCOOL+XiaoWei" rel="stylesheet">
        <link href="css/style.css" rel="stylesheet" type="text/css"/>
    
   <style>
   body{
    margin: 0;
    padding: 0;
    background: url("G:\Mubin\Covid_Pass_System\covid_img\image4.jpg");
    background-size: 200%;
    background-repeat: no-repeat;
    background-position: center;
    font-family: sans-serif;
}

.loginbox{
    width: 320px;
    height: 460px;
    background: #000;
    color: #fff;
    top: 50%;
    left: 50%;
    position: absolute;
    transform: translate(-50%,-50%);
    box-sizing: border-box;
    padding: 70px 30px;
}

.avatar{
    width: 100px;
    height: 100px;
    border-radius: 50%;
    position: absolute;
    top: -50px;
    left: calc(50% - 50px);
}

h1{
    margin: 0;
    padding: 0 0 20px;
    text-align: center;
    font-size: 22px;
}

.loginbox p{
    margin: 0;
    padding: 0;
    font-weight: bold;
}

.loginbox input{
    width: 100%;
    margin-bottom: 20px;
}

.loginbox input[type="text"], input[type="password"]
{
    border: none;
    border-bottom: 1px solid #fff;
    background: transparent;
    outline: none;
    height: 40px;
    color: #fff;
    font-size: 16px;
}
.loginbox input[type="submit"]
{
    border: none;
    outline: none;
    height: 40px;
    background: #98FF98;
    color: #fff;
    font-size: 18px;
    border-radius: 20px;
}
.loginbox input[type="submit"]:hover
{
    cursor: pointer;
    background:#ffc107;
    color: #000;
}
.loginbox a{
    text-decoration: none;
    font-size: 18px;
    line-height: 20px;
    color: darkgrey;
}

.loginbox a:hover
{
    color: #ffc107;
}
</style>
<body>

        <div class="loginbox">
            <form action="loginactionna.jsp" method="post">
   <img src="https://coffeelogin.netlify.app/assets/person.jpg" class="avatar" alt="img">
        <h1>Login </h1>
            <p>username</p>
            <input type="text" name="username" placeholder="Enter username">
            <p>Password</p>
            <input type="password" name="password" placeholder="Enter Password">
            <input type="submit" name="" value="Login">
            
            
            
            
            <a href="#">Lost your password?</a><br>
            <a href="na.jsp">Don't have an account?</a>
        </form>
    </div>

</body>

</head>

</html>

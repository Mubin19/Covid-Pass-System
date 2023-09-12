<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">

<link href="https://fonts.googleapis.com/css?family=ZCOOL+XiaoWei" rel="stylesheet">
        <link href="css/style.css" rel="stylesheet" type="text/css"/>
<title>Registration</title>
 <jsp:include page="header.jsp"/>


<style>
body {
    background-image: url("G:\Mubin\Covid_Pass_System\covid_img\image1.jpg");
    background-size: cover;
    background-repeat: no-repeat;
    font-family: 'Arimo', sans-serif;
    margin: 0;
    padding: 0;
    height: 100%;
    box-sizing: border-box;
}

.container {
    width: 80%;
    height: 100%;
    margin: 0 auto;
}


/***********************************************
       Account Registartiona and Login
***********************************************/
.box,
.regbox{
    width: 320px;
    height: 420px;
    background: #2f3542;
    margin: 0;
    padding: 30px;
    top: 55%;
    left: 50%;
    color: #fff;
    border-radius: 15px;
    position: absolute;
    transform: translate(-50%, -50%);
    box-sizing: border-box;
}

.avatar {
    margin: 0;
    padding: 0;
    width: 150px;
    height: 150px;
    top: -22%;
    position: absolute;
    left: calc(50% - 75px);
    border-radius: 50%;
}

.box h1{
    margin: 0;
    padding: 30px;
    text-align: center;
    font-size: 30px;
}

.box p{
    margin: 0;
    padding: 0;
    font-weight: bold;
}

.box input {
    width: 100%;
    margin-bottom: 15px;
    border-radius: 5px;
}

.box input[type="text"],
.box input[type="password"] {
    border: none;
    background: transparent;
    border-bottom: 1px solid #fff;
    outline: none;
    height: 35px;
    color: #fff;
    font-size: 15px;
}

.box input[type="submit"] {
    display: block;
    border: none;
    outline: none;
    height: 35px;
    background: #eccc68;
    color: #000;
    font-size: 20px;
    border-radius: 20px;
}

.box input[type="submit"]:hover {
    border: none;
    outline: none;
    height: 35px;
    background: #ff6348;
    color: #fff;
    font-size: 20px;
    border-radius: 20px;
    cursor: pointer;
    transition: .3s ease-out;
}

.box a {
    text-decoration: none;
    color: #fff;
    font-size: 16px;
    line-height: 20px;
}

.box a:hover {
    color: #eccc68;
}




.regbox .avatar {
    margin: 0;
    padding: 0;
    width: 150px;
    height: 150px;
    top: -19%;
    position: absolute;
    left: calc(50% - 75px);
    border-radius: 50%;
}

.regbox h1 {
    margin-top: 30px;
    padding: 20px 0;
    text-align: center;
    font-size: 30px;
}

.regbox p{
    margin: 0;
    padding: 0;
    font-weight: bold;
}

.regbox input {
    width: 100%;
    margin-bottom: 15px;
    border-radius: 5px;
}

.regbox input[type="text"],
.regbox input[type="password"] {
    border: none;
    background: transparent;
    border-bottom: 1px solid #fff;
    outline: none;
    height: 35px;
    color: #fff;
    font-size: 15px;
}

.regbox input[type="submit"] {
    display: block;
    border: none;
    outline: none;
    height: 35px;
    background: #eccc68;
    color: #000;
    font-size: 20px;
    border-radius: 20px;
}

.regbox input[type="submit"]:hover {
    border: none;
    outline: none;
    height: 35px;
    background: #ff6348;
    color: #fff;
    font-size: 20px;
    border-radius: 20px;
    cursor: pointer;
    transition: .3s ease-out;
}

.regbox a {
    text-decoration: none;
    color: #fff;
    font-size: 16px;
    line-height: 20px;
}

.regbox a:hover {
    color: #eccc68;
}

</style>
</head>
<body>

<div align="center">
 <div class="register"> 
      <form method="post" id="register" action="na2.jsp">  
    <img src="" class="" alt="">
    <table>
        <legend><h1>Register </h1> </legend>
        
<div>
    <tr><td><label>First Name</label></tr></td>
     <tr><td><input type="text" name="fname" id="name" placeholder="Enter First Name"></tr></td>
</div>
<br>

<div>
   <tr><td> <label>Last Name</label></tr></td>
    <tr><td><input type="text" name="lname" id="name" placeholder="Enter Last Name"></tr></td>
</div>
<br>

<div>
    <tr><td> <label>Contact Number</label></tr></td>
    <tr><td> <input type="number" name="number" id="number" value="" placeholder="Enter your Contact Number"></tr></td>
</div>
<br>

<div>
     <tr><td><label>Email</label>
    <tr><td> <input type="email" name="email" id="name" placeholder="gfhg23@">
</div>
<br>

<div>
    <tr><td> <label>Address</label></tr></td>
     <tr><td><input type="text" name="address" id="name" placeholder="Enter your Address"></tr></td>
</div>
<br>


<div>
    <tr><td> <label>Password</label></tr></td>
     <tr><td><input type="password" name="pass" id="name" placeholder="Enter your Password"></tr></td>
</div>

 <tr><td><input type="submit" value="Sign Up" id="sub"></tr></td>
 <div align ="center">
 <a href="loginna.jsp" class="hero-btn">Login</a></div>
        </form>
        </table>
       
    </div>
    </div>
    <div align = "center">
    <div calss="error">
    <%
    String msg=request.getParameter("msg");
    if("valid".equals(msg))
    {
    %>
    <h1>Registered Succesfully</h1>
    <%}%>
    <% 
    if("invalid".equals(msg))
    {
    %>
    <h1>Something Went Wrong</h1>
    <% } %>
    </div>
</div>
</body>
</head>

<jsp:include page="footer.jsp"/>

</html>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Hospital Login</title>
 <jsp:include page="header.jsp"/>


 <style>
			
   body{
    margin: 0;
    padding: 0;
    background: url("G:\Mubin\Covid_Pass_System\covid_img\images6.jpg");
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
    

</head>
<body>
<div align ="center">
<div class="row">
		<div class="col-md-4 col-md-offset-4 well">
			<Form name ="form1" Method ="POST" Action ="">
			<h1>Hospital Login</h1>
			<fieldset>
			<div class="form-group">
			<label for="name">Username</label>
			<INPUT TYPE = "TEXT" placeholder ="username" Name ="username">
			</div>
			<div class="form-group">
			<label for="name">Password</label>
			<INPUT TYPE = "TEXT" placeholder ="password" Name ="password">
			</div>
			<INPUT TYPE = "Submit" Name = "Submit1" VALUE = "Login" class="btn btn-primary" >
			</fieldset>
</FORM>

    

 <div align = "center">
    <div calss="error">
    <%
            String msg=request.getParameter("msg");
            if("notexist".equals(msg))
            {%>
            <h1>Incorrect Email or Password</h1>
            <%} %>
            <% 
            if("invalid".equals(msg))
            {%>
            <h1>Something Went Worng</h1>
            <%} %>
    </div>
    </div>
</div>
</body>
</head>
 
<jsp:include page="footer.jsp"/>

</html>
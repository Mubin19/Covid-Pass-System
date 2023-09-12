<%@ page import= "java.sql.*" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<%@ page import="java.sql.*" %>


<body>
<head>
 <title>Login</title>
 <script type="text/javascript" src="script/ajax.js"></script>
 <style>
			body{
			  background-image: url("img/bg3.jpg");
			  margin :0;
			  min-height: 100vh;
			}
			
</style>


<div align="center">
<div class="container">
	<h2></h2>		
	<div class="row">
		<div class="col-md-4 col-md-offset-4 well">
			<form role="form" action=reg.jsp" method="post" name="loginform">
				<fieldset>
					<legend>Login</legend>	
					<table>					
					<div class="form-group">
					<tr><td>	<label for="name">Email</label></tr></td>
						<tr><td><input type="text" name="email" placeholder="Your Email" required class="form-control" /></tr></td>
					</div>	
					<div class="form-group">
						<tr><td><label for="name">Password</label></tr></td>
						<tr><td><input type="password" name="password" placeholder="Your Password" required class="form-control" /></tr></td>
					</div>	
					<div class="form-group">
						<tr><td><input type="submit" name="login" value="Login" class="btn btn-primary" /></tr></td>
					</div>
					</table>
				</fieldset>
			</form>
			
		</div>
	</div>
	<div class="row">
		<div class="col-md-4 col-md-offset-4 text-center">	
		New User? <a href="">Sign Up Here</a>
		</div>
	</div>
		</div>
		</div>

<% 
String Email=request.getParameter("email");
String Password=request.getParameter("password");

try{
	Class.forName("com.mysql.jdbc.Driver");
	Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/covid_db","root","Muin19032000");
	PreparedStatement ps = conn.prepareStatement("insert into adminlogin(email,password)values(?,?);");
	
	    ps.setString(1,Email);
	    ps.setString(2,Password);
	   
	   // response.sendRedirect("reg.html");
	    
	    int x = ps.executeUpdate();

	    if(Email.equals("email") && Password.equals("password"))
	    {
	    	response.sendRedirect("loginsuccessful.jsp");
	    }
	    else 
	    {
	    	response.sendRedirect("loginError.jsp");
	    }
	    
		
	    
}
catch(Exception e){
	System.out.println(e);
}								

%>

</body>
</head>
</html>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<%@ page import="java.sql.*" %>
</head>
<body>

try{
	Class.forName("com.mysql.jdbc.Driver");
	Connection con = DriverManager.getConnection
			("jdbc:mysql://localhost:3306/covid_db","root","Mubin19032000");
	Statement st=con.createStatement();
	String username=request.getParameter("username");
	String password=request.getParameter("password");
	
	ResultSet rs=st.executeQuery("select*from adminlogin where username='"+username+"'and password='"+password+"'");
	System.out.println(rs);

<%   
String username = request.getParameter("username");
String password = request.getParameter("password");

if(username.equals("MubinSS") && password.equals("Mubin19032000"))
{
   
    out.println("Login Success");
}
else
{
      out.println("Login Fail");
}
%>
    

</body>
</html>
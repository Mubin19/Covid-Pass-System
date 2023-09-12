 <%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Registration</title>
<%@ page import="java.sql.*" %>
</head>
<body>
<% try{
	Class.forName("com.mysql.jdbc.Driver");
	Connection con = DriverManager.getConnection
			("jdbc:mysql://localhost:3306/covid_db","root","Mubin19032000");	
	String fname=request.getParameter("fname");
	String lname=request.getParameter("lname");
	String number=request.getParameter("number");
	String address=request.getParameter("address");
	String email=request.getParameter("email");
	String password=request.getParameter("pass");
	PreparedStatement ps=con.prepareStatement("insert into register values(?,?,?,?,?,?)");
	ps.setString(1,fname);
	ps.setString(2,lname);
	ps.setString(3,number);
	ps.setString(4,email);
	ps.setString(5,address);
	ps.setString(6,password);
	ps.executeUpdate();
	response.sendRedirect("na.jsp?msg=valid");
}
catch(Exception e)
{
	System.out.println(e);
	response.sendRedirect("na.jsp?msg=invalid");
}
%>

</body>
</html>
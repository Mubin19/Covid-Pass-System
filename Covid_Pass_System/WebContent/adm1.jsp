<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
 <jsp:include page="header.jsp"/>


<%@ page import="java.sql.*" %>
</head>
<body>

<%
int z=0;
try{
	Class.forName("com.mysql.jdbc.Driver");
	Connection con = DriverManager.getConnection
			("jdbc:mysql://localhost:3306/covid_db","root","Mubin19032000");
	Statement st=con.createStatement();
	String username=request.getParameter("username");
	String password=request.getParameter("password");
	ResultSet rs=st.executeQuery("select*from adminlogin where username='"+username+"'and password='"+password+"'");
	while(rs.next())
	{
		z=1;
		session.setAttribute("username",username);
		response.sendRedirect("home.jsp");
	}
	if(z==0){
		response.sendRedirect("adm.jsp?msg=notexist");
	}
}
catch(Exception e){
	System.out.println(e);
	response.sendRedirect("adm.jsp?msg=invalid");
}
%>	

</body>

<jsp:include page="footer.jsp"/>

</html>
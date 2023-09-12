

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>

</head>
<body>
	<%@ page import="java.sql.*" %>
	<%@ page import="javax.sql.*" %>
	<%@ page import="java.lang.Object.*" %>
<%
 
String prname=request.getParameter("prname");
String Category=request.getParameter("Category");
String fname=request.getParameter("fname");
String mdate=request.getParameter("mdate");
String edate=request.getParameter("edate");
String price=request.getParameter("price");
String quantity=request.getParameter("quantity");


try{
	Class.forName("com.mysql.jdbc.Driver");
	Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/","root","");
	PreparedStatement ps = conn.prepareStatement("insert into product(prname,Category,fname,mdate,edate,price,quantity)values(?,?,?,?,?,?,?);");
	//PreparedStatement ps = conn.prepareStatement("INSERT INTO `admin`(`ano`, `aname`, `email`, `contact`) VALUES ('[value-1]','[value-2]','[value-3]','[value-4]');");

	    ps.setString(1,prname);
	    ps.setString(2,Category);
	    ps.setString(3,fname);
	    ps.setString(4,mdate);
	    ps.setString(5,edate);
	    ps.setString(6,price);
	    ps.setString(7,quantity);
	    int x = ps.executeUpdate();
	    if(x>0){
	    	out.println("Added Successfully");
	    }
	    else {
	    	out.println("Addin Failed");
	    }
	    
}catch(Exception e){
	out.println(e);
}


%>
</body>
</html>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="java.sql.*"
    
    %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%
String cust_name= request.getParameter("cust_name");
String cust_location= request.getParameter("cust_location");
String cust_website= request.getParameter("cust_website");
String cust_email= request.getParameter("cust_email");
long cust_phone=Long.parseLong( request.getParameter("cust_phone"));

try{
	Class.forName("com.mysql.jdbc.Driver");
	Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/mysqlpractice", "root", "Mysql@123");
	PreparedStatement ps = conn.prepareStatement
			("insert into customers1(cust_name,cust_location,cust_website,cust_email,cust_phone )values(?,?,?,?,?)");
	ps.setString(1, cust_name);
	ps.setString(2, cust_location);
	ps.setString(3, cust_website);
	ps.setString(4, cust_email);
	ps.setLong(5, cust_phone);
	int k= ps.executeUpdate();
	if (k>0){
		out.println("customer data inserted successfully....<br>");
		out.println("<a href=page3.jsp>click here to see our customers</a> <br>");
	 out.println("<a href=page4.jsp>click here to fill Project details in Organization</a> <br>");
	 
		
	}
	else{
		out.println("data not inserted....");
	}
}
catch(Exception e ){
	e.printStackTrace();
}
%>

</body>
</html>
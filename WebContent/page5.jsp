<%@ page language="java" 
         contentType="text/html; charset=ISO-8859-1"
         pageEncoding="ISO-8859-1"%>
  <%@ page import="java.sql.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%
String project_name= request.getParameter("project_name");
String project_start_date= request.getParameter("project_start_date");
String project_end_date= request.getParameter("project_end_date");
String project_customer= request.getParameter("project_customer");
String project_owner= request.getParameter("project_owner");
String project_status=request.getParameter("project_status");


try{
	Class.forName("com.mysql.jdbc.Driver");
	Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/mysqlpractice", "root", "Mysql@123");
	PreparedStatement ps = conn.prepareStatement
 ("insert into projects2(project_name,project_start_date,project_end_date,project_customer,project_owner,project_status )values(?,?,?,?,?,?)");
	ps.setString(1,project_name );
	ps.setString(2, project_start_date);
	ps.setString(3, project_end_date);
	ps.setString(4, project_customer);
	ps.setString(5,project_owner );
	ps.setString(6,project_status);
	int k= ps.executeUpdate();
	if (k>0){
		out.println("customer data inserted successfully in Projects1 table....<br>");
		out.println("<a href=page6.jsp>click here to see Project details in Organization</a> <br>");
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
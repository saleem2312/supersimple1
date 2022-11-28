<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
 <%@ page import = "java.io.*,java.util.*,java.sql.*"%>
<%@ page import = "javax.servlet.http.*,javax.servlet.*" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix = "c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix = "sql"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<form method="post" action="deletepage.jsp">
<sql:setDataSource var = "datasource" driver = "com.mysql.jdbc.Driver"
         url = "jdbc:mysql://localhost:3306/mysqlpractice"
         user = "root"  password = "Mysql@123"/>

      <sql:query dataSource = "${datasource}" var = "result">
         SELECT * from projects2;
         
      </sql:query>

<table border="1">
	<tr>   
	         <th>check</th>
			<th>project_id</th>
			<th>project_name</th>
			<th>project_start_date</th>
			<th>project_end_date</th>
			<th>project_customer</th>
			<th>project_owner</th>
			<th>project_status</th>
		</tr>
	<c:forEach var = "row" items = "${result.rows}">
		<tr><td><input type="checkbox" name="id" value="${row.project_id }"></td>
			<td><c:out value="${row.project_id }"></c:out></td>
			<td><c:out value="${row.project_name }"></c:out></td>
			<td><c:out value="${row.project_start_date }"></c:out></td>
			<td><c:out value="${row.project_end_date }"></c:out></td>
			<td><c:out value="${row.project_customer }"></c:out></td>
			<td><c:out value="${row.project_owner }"></c:out></td>
			<td><c:out value="${row.project_status }"></c:out></td>
		</tr>
	</c:forEach>
	<tr><td colspan="8" align="center"><input type="submit" name="submit" value="SUBMIT"></td>
</table>
</form>
</body>
</html>
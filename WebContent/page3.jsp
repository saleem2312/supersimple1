<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<form>
		<table>

			<tr>
				<td>Customer Name:</td>
				<td><select name="customer">
						<option value="0">customer name</option>
						<%
						
	                        try {
	                            String query = "select * from customers1";
	                            Class.forName("com.mysql.cj.jdbc.Driver");
	                            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/mysqlpractice", "root", "Mysql@123");
	                            Statement pstmt = con.createStatement();
	                           
	                            ResultSet rs = pstmt.executeQuery(query);
	                            while (rs.next()) {
	                            %>
	                            <option value="<%=rs.getInt("cust_id")%>"><%=rs.getString("cust_name")%></option>
	                             
	                            <%
	                            
	                        }
	                            



	                       } catch (Exception e) {
	                        e.printStackTrace();
	                        }
	                        %>
						
				</select></td>

			</tr>






		</table>



	</form>



</body>
</html>
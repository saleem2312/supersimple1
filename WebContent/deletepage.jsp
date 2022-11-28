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



<%

String [] IdSets = request.getParameterValues("id");

if(IdSets!=null){
    int count=0;
    for(String id:IdSets){
        try{
        	Class.forName("com.mysql.jdbc.Driver");
        	Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/mysqlpractice", "root", "Mysql@123");
            
            PreparedStatement pstmt = conn.prepareStatement("delete from projects2 where project_id=?");
            pstmt.setString(1,id);
            int i=pstmt.executeUpdate();
            count++;
            
            
        }catch(Exception e){
            e.printStackTrace();
        }
    }
    out.println(count+" records deleted succesfully..");



}else{
    out.println("No records are Selected...");
}



%>




	


</body>
</html>
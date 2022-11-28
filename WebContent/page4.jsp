<html>
<body>
<h5 ALIGN="CENTER" style="background-color:yellow;color:red">Project Information</h5>
<center>
<form action="page5.jsp" method="post">
<table border="100px" align="center" bgcolor="red">
<td><label>Project Name</label></td>
<td><input type="text" name="project_name"></td><br>
</tr>
<tr>
<td><label>Project Customer</label></td>
<td><input type="text" name="project_customer"></td><br>
</tr>
<tr>
<td><label>Project Owner</label></td>
<td><input type="text" name="project_owner"></td><br>
</tr>
<tr>
<td><label>Project Start Date</label></td>
<td><input type="date" name="project_start_date"></td><br>
</tr>
<tr>
<td><label>Project End Date</label></td>
<td><input type="date" name="project_end_date"></td><br>
</tr>
<tr>
<td><label>Project status</label></td>
<td><select name="project_status">
<option value="active">Active</option>
<option value="completed">Completed</option>
<option value="cancelled">Cancelled</option>
</td>
</tr>
<tr>
<td><input type="submit" value="Submit"></td>
</tr>
</table>
</form>
</center>
</body>
</html>


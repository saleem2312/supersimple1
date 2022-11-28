<!DOCTYPE html>
<html>

<head>
	
	
</head>

<body>
<form method="post" action="page2.jsp">	
<table border="1">
<tr>
<td colspan="2" align="center"><h1>Customer details</h1></td>
</tr>


<tr><td>Customer Name:</td>
<td><input type="text" name="cust_name"></td></tr>

<tr><td><label for="Country_names">Customer Location:</label></td>
<td>
<select name="cust_location" id="counrty_names">
    <option value="India">India</option>
  <option value="Singapore">Singapore</option>
  <option value="Dubai">Dubai</option>
  <option value="UAE">UAE</option>
</select></td></tr>

<tr><td>Customer Website:</td>
<td><input type="text" name="cust_website"></td></tr>

<tr><td>Customer Email:</td>
<td><input type="text" name="cust_email"></td></tr>

<tr><td>Customer Mobile:</td>
<td><input type="text" name="cust_phone"></td></tr>

<tr><td colspan="2" align="center"><input type="submit" name="submit" value="SUBMIT"></td></tr>

</table>
</form>
   
</body>

</html>

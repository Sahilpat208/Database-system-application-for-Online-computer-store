<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
     <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%> 
 <%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<form method=‘get’>

<table border=“1”>
	<tr>
		<td></td>
		<td>Product ID</td>
		<td>Product Type</td>
		<td>Product Name</td>
		<td>Product Price</td>
		<td>Description</td>
		<td>Quantity Available</td>
		<td>Add to Cart</td>		
</tr>
<%
Connection conn=null;
Statement stmt=null;
try
{

Class.forName("com.mysql.jdbc.Driver");
conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/Online Computer Store","root","Sahil@20897");
stmt=conn.createStatement();

String Email=request.getParameter("Email");

String qry2 = "Select c_id,CStatus from Customer where email = '"+Email+"'";
ResultSet r = stmt.executeQuery(qry2);
Integer CID = 0;
String status = "";
while(r.next()){
	CID = Integer.parseInt(r.getString("c_id"));
	status = r.getString("CStatus");
}
	
String query= "SELECT * FROM PRODUCT";
	
	
ResultSet prod = stmt.executeQuery(query);
	while(prod.next())
	{

%>
<tr>
	<td><input type="checkbox" name="chkBox"> </td>
    <td><%=prod.getString("pid") %></td>
    <td><%=prod.getString("ptype") %></td>
    <td><%=prod.getString("pname") %></td>
    <td><%=prod.getString("pprice") %></td>
    <td><%=prod.getString("description") %></td>
    <td><%=prod.getString("pquantity") %></td>
    <td><button type="button" onclick="">Add To Cart</button> </td>
    
</tr>
<%
	}
%>
</table>
<%
	    prod.close();
	    stmt.close();
	    conn.close();
    }
	catch(Exception e)
	{
		e.printStackTrace();
	}
%>

</form>

</body>
</html>
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
		<td>Product ID</td>
		<td>Product Type</td>
		<td>Product Name</td>
		<td>Product Price</td>
		<td>Description</td>
		<td>Quantity</td>		
</tr>
<%
Connection conn=null;
Statement stmt=null;
try
{

Class.forName("com.mysql.jdbc.Driver");
conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/Online Computer Store","root","Sahil@20897");
stmt=conn.createStatement();


	String query= "SELECT * FROM PRODUCT";
	
	ResultSet prod = stmt.executeQuery(query);
	while(prod.next())
	{

%>
<tr>
    <td><%=prod.getString("pid") %></td>
    <td><%=prod.getString("ptype") %></td>
    <td><%=prod.getString("pname") %></td>
    <td><%=prod.getString("pprice") %></td>
    <td><%=prod.getString("description") %></td>
    <td><%=prod.getString("pquantity") %></td>
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
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
		<td>Product Type</td>
		<td>Product Name</td>
		<td>Quantity</td>	
		<td>Price Sold</td>	
</tr>
<%
Connection conn=null;
Statement stmt=null;
Integer CID = 0;
try
{

Class.forName("com.mysql.jdbc.Driver");
conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/Online Computer Store","root","Sahil@20897");
stmt=conn.createStatement();
	String Email=request.getParameter("Email");
	String qry2 = "Select c_id from Customer where email = '"+Email+"'";
	ResultSet r = stmt.executeQuery(qry2);
	while(r.next()){
		CID = Integer.parseInt(r.getString("c_id"));
	}

	String query= "select P.PTYPE, P.PNAME, A.QUANTITY, A.PRICESOLD from CART C, APPEARS_IN A, PRODUCT P WHERE C.CARTID = A.CARTID AND A.PID = P.PID AND C.CID = "+CID+"";
	
	ResultSet prod = stmt.executeQuery(query);
	while(prod.next())
	{

%>
<tr>
    <td><%=prod.getString("PTYPE") %></td>
    <td><%=prod.getString("PNAME") %></td>
    <td><%=prod.getString("QUANTITY") %></td>
    <td><%=prod.getString("PRICESOLD") %></td>
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
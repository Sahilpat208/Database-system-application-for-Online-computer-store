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
		<td>Customer Id</td>	
		<td>Customer Name</td>	
		<td>Total Purchase</td>
</tr>
<%
Connection conn=null;
Statement stmt=null;
try
{
	
	
	String sDate = request.getParameter("Sdate");
	String eDate = request.getParameter("Edate");
	
	
Class.forName("com.mysql.jdbc.Driver");
conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/Online Computer Store","root","Sahil@20897");
stmt=conn.createStatement();


	String query= "select sum(pricesold) as total_Purchase , cid, fname  from appears_in a, cart ct, customer c where ct.cartid = a.cartid and ct.cid = c.c_id and tdate between '"+sDate+"' and '"+eDate+"' group by cid order by sum(pricesold) desc limit 10";
	
	ResultSet prod = stmt.executeQuery(query);

	while(prod.next())
	{
%>
<tr>
    <td><%=prod.getString("cid") %></td>
    <td><%=prod.getString("fname") %></td>
    <td><%=prod.getString("total_Purchase") %></td>

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
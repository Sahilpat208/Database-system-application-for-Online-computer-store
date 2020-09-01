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
		<td>FName</td>
		<td>LNamee</td>
		<td>Email</td>
		<td>Address</td>
		<td>Phone</td>
		<td>CStatus</td>	
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
	String query= "SELECT * FROM Customer where Email = '"+Email+"'";
	
	ResultSet prod = stmt.executeQuery(query);
	while(prod.next())
	{

%>
<tr>
    <td><%=prod.getString("Fname") %></td>
    <td><%=prod.getString("LName") %></td>
    <td><%=prod.getString("Email") %></td>
    <td><%=prod.getString("Address") %></td>
    <td><%=prod.getString("Phone") %></td>
    <td><%=prod.getString("CStatus") %></td>
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
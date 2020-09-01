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
		<td>FIRST NAME</td>
		<td>LAST NAME</td>
		<td>EMAIL ADDRESS</td>
		<td>ADDRESS</td>
		<td>PHONE NUMBER</td>
		<td>CSTATUS</td>		
</tr>
<%
Connection conn=null;
Statement stmt=null;
try
{

Class.forName("com.mysql.jdbc.Driver");
conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/Online Computer Store","root","Sahil@20897");
stmt=conn.createStatement();


String query="SELECT * FROM CUSTOMER";
ResultSet cust = stmt.executeQuery(query);
while(cust.next())
{

%>
<tr>
<td><%=cust.getString("FName") %></td>
<td><%=cust.getString("LName") %></td>
<td><%=cust.getString("Email") %></td>
<td><%=cust.getString("Address") %></td>
<td><%=cust.getString("Phone") %></td>
<td><%=cust.getString("CStatus") %></td>
</tr>
<%
	}
%>
</table>
<%
	    cust.close();
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
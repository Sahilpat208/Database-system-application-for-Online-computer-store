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
		<td>ZIP CODE</td>	
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


	String query= "select zip from SHIPPING_ADDRESS s inner join cart c on s.cid = c.cid where tdate between '"+sDate+"' and '"+eDate+"' and c.tstatus = 'Delivered' group by s.zip limit 5";
	
	ResultSet prod = stmt.executeQuery(query);

	while(prod.next())
	{
%>
<tr>
    <td><%=prod.getString("zip") %></td>

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
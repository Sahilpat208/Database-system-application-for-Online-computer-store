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
<%
String name=request.getParameter("t1");
String email=request.getParameter("t21");

Connection conn=null;
Statement st=null;
out.println(name);
out.println(email);
try
{
	out.println("aaa");
	Class.forName("com.mysql.jdbc.Driver");
	out.println("bbb");
	conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/Online Computer Store","root","Sahil@20897");
	out.println("ccc");
	st=conn.createStatement();
	out.println("ddd");
	String qry="INSERT INTO Customer (`FName`,`Email`) VALUES ('"+name+"' , '"+email+"')";
	out.println("eee");
	st.executeUpdate(qry);
	out.println("fff");
	out.print("data is successfully inserted");
}catch(Exception ex){
	
	out.print(ex.getMessage());
}
%>
</body>
</html>
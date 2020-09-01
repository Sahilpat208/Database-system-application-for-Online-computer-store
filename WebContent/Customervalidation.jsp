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
String Email=request.getParameter("Email");
Connection conn=null;
Statement st=null;
try {
	Class.forName("com.mysql.jdbc.Driver");
	conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/Online Computer Store","root","Sahil@20897");
	st=conn.createStatement();
	String qry2 = "Select c_id from Customer where email = '"+Email+"'";
	ResultSet r = st.executeQuery(qry2);
	Integer CID = 0;
	while(r.next()){
		CID = Integer.parseInt(r.getString("c_id"));
	}
	if(CID != 0){
		out.println("broooooo");
	}else {
		out.println("no broooo");
	}
	} catch (Exception e){
		e.getStackTrace();
	}
%>

</body>
</html>
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

String CCNum=request.getParameter("CCNum");
Integer secNum=Integer.parseInt(request.getParameter("secNum"));
String ownerName=request.getParameter("ownerName");
String ccType=request.getParameter("ccType");
String ccAddress=request.getParameter("ccAddress");
String expDate=request.getParameter("expDate");
String Email=request.getParameter("Email");
// get the CID
Integer CID = 0;

Connection conn=null;
Statement st=null;
try
{
	Class.forName("com.mysql.jdbc.Driver");
	conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/Online Computer Store","root","Sahil@20897");
	st=conn.createStatement();
	
	String qry2 = "Select c_id from Customer where email = '"+Email+"'";
	ResultSet r = st.executeQuery(qry2);
	CID = 0;
	while(r.next()){
		CID = Integer.parseInt(r.getString("c_id"));
	}
	
	String qry4 = "INSERT INTO `STORED_CARD` (`CCNumber`, `CID`) VALUES ('"+CCNum+"', '"+CID+"')";
	String qry5 = "INSERT INTO `CREDIT_CARD` (`CCNUMBER`, `SecNumber`, `OwnerName`, `CCType`, `CCAdress`, `ExpDate`) VALUES ('"+CCNum+"', '"+secNum+"', '"+ownerName+"', '"+ccType+"', '"+ccAddress+"', '"+expDate+"')";
	
	st.executeUpdate(qry5);
	st.executeUpdate(qry4);
	st.close();
    conn.close();
	out.print("data is successfully inserted");
}catch(Exception ex){
	
	out.print(ex.getMessage());
}
%>
</body>
</html>
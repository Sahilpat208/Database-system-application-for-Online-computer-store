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
String SAName=request.getParameter("SAName");
String RName=request.getParameter("RName");
String StreetName=request.getParameter("StreetName");
Integer StreetNumber=Integer.parseInt(request.getParameter("StreetNumber"));
String city=request.getParameter("city");
Integer zip=Integer.parseInt(request.getParameter("zip"));
String state=request.getParameter("state");
String country=request.getParameter("country");
//get the CID ************
Integer CID =0;
Connection conn=null;
Statement st=null;
try
{
	Class.forName("com.mysql.jdbc.Driver");
	conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/Online Computer Store","root","Sahil@20897");
	st=conn.createStatement();
	String qry2 = "Select c_id from Customer where email = '"+Email+"'";
	ResultSet r = st.executeQuery(qry2);
	while(r.next()){
		CID = Integer.parseInt(r.getString("c_id"));
	}
	String qry3 = "INSERT INTO `SHIPPING_ADDRESS` (`CID`, `SANAME`, `RECEPIENT NAME`, `STREET`, `SNUMBER`, `CITY`, `ZIP`, `STATE`, `COUNTRY`) VALUES ('"+CID+"', '"+SAName+"', '"+RName+"', '"+StreetName+"', '"+StreetNumber+"', '"+city+"', '"+zip+"', '"+state+"', '"+country+"')";
	
	st.executeUpdate(qry3);
	st.close();
    conn.close();
	out.print("data is successfully inserted");
}catch(Exception ex){
	
	out.print(ex.getMessage());
}

%>
</body>
</html>
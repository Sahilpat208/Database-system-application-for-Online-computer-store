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
	String PID=request.getParameter("PID");
	String PName=request.getParameter("PName");
	String PPrice=request.getParameter("PPrice");
	String DPrice=request.getParameter("DPrice");
	String PDesc=request.getParameter("PDesc");
	String PQuant=request.getParameter("PQuant");
	String BatteryType=request.getParameter("BatteryType");
	String Wegiht=request.getParameter("Wegiht");
	
	

Connection conn=null;
Statement st=null;
try
{
	Class.forName("com.mysql.jdbc.Driver");
	conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/Online Computer Store","root","Sahil@20897");
	st=conn.createStatement();
	String qry1 = "INSERT INTO `PRODUCT` (`PID`,`PTYPE`, `PNAME`, `PPRICE`, `DESCRIPTION`, `PQUANTITY`) VALUES ('"+PID+"','Laptop','"+PName+"', '"+PPrice+"', '"+PDesc+"', '"+PQuant+"');";
	
	st.executeUpdate(qry1);
	
	
	String qry2 = "INSERT INTO `LAPTOP` (`PID`, `BType`, `Weight`) VALUES ('"+PID+"', '"+BatteryType+"', '"+Wegiht+"');";
	st.executeUpdate(qry2);
	
	
	if(!DPrice.isEmpty()){
		String qry3 = "INSERT INTO `OFFER_TABLE` (`PID`, `OFFERPRICE`) VALUES ('"+PID+"', '"+DPrice+"');";
		st.executeUpdate(qry3);
	}

	st.close();
    conn.close();
	out.print("data is successfully inserted");
}catch(Exception ex){
	
	out.print(ex.getMessage());
}
%>


</body>
</html>
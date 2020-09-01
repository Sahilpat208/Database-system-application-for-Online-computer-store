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

<form name="frm1" action= "PurchaseDetails.jsp" method="get">
<br/>
Enter Personal Details<br/>
<br/>
	Enter Email <input type="text" name="Email" value="" /><br/>
	
				<input type="submit" value="Submit Details" />
	</form>
	
</body>
</html>
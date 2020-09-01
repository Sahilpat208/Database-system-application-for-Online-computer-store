<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
     
       <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%> 
     
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Online Computer Store</title>
<br>
<br>
<center> Online computer Store
</head>
<br>
<br>
<body>
		<div align="center">
		 <form name="frm1" action= "Admin.jsp" method="get">
			<input type="submit" value="Admin" />
		 </form>
		 <form name="frm2" action= "CustomerProfile.jsp" method="get">
			<input type="submit" value="Customer" />
		 </form>
		 <form name="frm3" action= "NewCustomer.jsp" method="get">
			<input type="submit" value="New Customer" />
		 </form>
		 <form name="frm3" action= "Statstic.jsp" method="get">
			<input type="submit" value="Statastic Reviwer" />
		 </form>
		</div>
</body>
</html> 
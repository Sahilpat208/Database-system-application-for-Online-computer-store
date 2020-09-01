<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<form name="frm1" action= "AddCardDetails.jsp" method="get">
<br/>

Enter Card Details <br/>
	<br/>
	Enter Card Number <input type="text" name="CCNum" value="" /><br/>
	Enter Security Number <input type="text" name="secNum" value="" /><br/>
	Enter Owner Name<input type="text" name="ownerName" value="" /><br/>
	Enter Card Type<input type="text" name="ccType" value="" /><br/>
	Enter Card Address <input type="text" name="ccAddress" value="" /><br/>
	Enter Exp Date <input type="text" name="expDate" value="" /><br/>
	Enter Email <input type="text" name="Email" value="" /><br/>
<br/>
<!-- get CID as well -->
			<input type="submit" value="Submit Details" />
	</form>
</body>
</html>
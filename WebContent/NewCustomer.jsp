<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>User Registration</title>
</head>
<body>
<form name="frm1" action= "AddCustomerDetails.jsp" method="get">
<br/>
Enter Personal Details<br/>
<br/>
    Enter First Name <input type="text" name="FName" value="" /><br/>
	Enter Last Name<input type="text" name="LName" value="" /><br/>
	Enter Email <input type="text" name="Email" value="" /><br/>
	Enter Address<input type="text" name="adress" value="" /><br/>
	Enter Phone <input type="text" name="Phone" value="" /><br/>
	Enter Status<input type="text" name="status" value="" /><br/>
<br/>
Enter Card Details <br/>
	<br/>
	Enter Card Number <input type="text" name="CCNum" value="" /><br/>
	Enter Security Number <input type="text" name="secNum" value="" /><br/>
	Enter Owner Name<input type="text" name="ownerName" value="" /><br/>
	Enter Card Type<input type="text" name="ccType" value="" /><br/>
	Enter Card Address <input type="text" name="ccAddress" value="" /><br/>
	Enter Exp Date <input type="text" name="expDate" value="" /><br/>
<br/>
Enter Shipping Address details<br/>
<br/>

	Enter Shipping Address Name <input type="text" name="SAName" value="" /><br/>
	Recipient Name <input type="text" name="RName" value="" /><br/>
	Street Name <input type="text" name="StreetName" value="" /><br/>
    Street Number <input type="text" name="StreetNumber" value="" /><br/>
    City <input type="text" name="city" value="" /><br/>
    Zip Code <input type="text" name="zip" value="" /><br/>
    State <input type="text" name="state" value="" /><br/>
    Country <input type="text" name="country" value="" /><br/>
    
    
			<input type="submit" value="Submit Details" />
	</form>

</body>
</html>
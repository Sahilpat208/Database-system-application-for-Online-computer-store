<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<form name="frm1" action= "AddAddressDetails.jsp" method="get">
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
    Enter EmailId <input type="text" name="Email" value="" /><br/>
    <!-- Get the CID from cutomerprofile.jsp and pass it to  AddAddressDetails.jsp-->
    
	<input type="submit" value="Submit Details" />
	</form>

</body>
</html>
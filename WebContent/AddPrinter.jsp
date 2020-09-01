<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<form name="frm1" action= "AddPrinterDetails.jsp" method="get">
<br/>
Enter Product Details<br/>
<br/>
	Product Id <input type="text" name="PID" value="" /><br/>
    Product Name <input type="text" name="PName" value="" /><br/>
	Product Price<input type="text" name="PPrice" value="" /><br/>
	Discounted Price<input type="text" name="DPrice" value="" /><br/>
	Product Description <input type="text" name="PDesc" value="" /><br/>
	Product quantity<input type="text" name="PQuant" value="" /><br/>
	Printer Type<input type="text" name="PrinterType" value="" /><br/>
	Resolution <input type="text" name="Resolution" value="" /><br/>
<br/>

			<input type="submit" value="Submit Details" />
	</form>

</body>
</html>
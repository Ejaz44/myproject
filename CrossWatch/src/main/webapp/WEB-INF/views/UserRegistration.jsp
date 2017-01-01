<%@taglib uri="http://www.springframework.org/tags/form"  prefix="form"%>
<%@page isELIgnored="false" %>
<%@ include file="header.jsp" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link href="css/style.css" rel='stylesheet' type='text/css'/>
	<link href="//fonts.googleapis.com/css?family=Alegreya+Sans" rel="stylesheet">
		<meta name="viewport" content="width=device-width, initial-scale=1" />
		<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
		<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>User Registration</title>
</head>
<body>
<h1>User Registration Form</h1>
<div class="main-agile">
<form:form modelAttribute="userDetail" action="addUserRegistration">
<h2>Personal Details</h2>
<form:input type="hidden" path="userId" />

<form:input path="userName" placeholder="Enter the User Name" />

<form:input type="text" path="password" placeholder="Enter the password" />

<form:input path="firstName" placeholder="Enter the First Name" /><br/>

<form:input path="lastName" placeholder="Enter the Last Name" /><br/>

<form:input path="emailId" placeholder="Enter the Email Id" /><br/>

<form:input path="contactNumber" placeholder="Enter the Contact Number" /><br/>

<!-- <h2>Shipping Details</h2> -->
<%-- <form:input type="hidden" path="shippingAddress.shippingAddressId" /> --%>

<%-- <form:input path="shippingAddress.flatNo" placeholder="Enter the Flat Number" /> --%>

<%-- <form:input path="shippingAddress.streetName" placeholder="Enter the Street Name" /> --%>

<%-- <form:input path="shippingAddress.locality" placeholder="Enter the Locality Name" /> --%>

<%-- <form:input path="shippingAddress.city" placeholder="Enter the City Name" /> --%>

<%-- <form:input path="shippingAddress.state" placeholder="Enter the State" /> --%>

<%-- <form:input path="shippingAddress.pincode" placeholder="Enter the Pincode" /> --%>

<!-- <h2>Billing Address</h2> -->
<%-- <form:input type="hidden" path="billingAddress.billingAddressId" /> --%>

<%-- <form:input path="billingAddress.flatNo" placeholder="Enter the Flat Number" /> --%>

<%-- <form:input path="billingAddress.streetName" placeholder="Enter the Street Name" /> --%>

<%-- <form:input path="billingAddress.locality" placeholder="Enter the Locality Name" /> --%>

<%-- <form:input path="billingAddress.city" placeholder="Enter the City Name" /> --%>

<%-- <form:input path="billingAddress.state" placeholder="Enter the State" /> --%>

<%-- <form:input path="billingAddress.pincode" placeholder="Enter the Pincode" /> --%>

<div>
<input type="submit" value="Add User" />
<input type="reset" value="Reset">
</div>


</form:form>
</div>

</div>
</div>
</div>
</div>
</div>
</body>
</html>
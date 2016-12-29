<%@taglib uri="http://www.springframework.org/tags/form"  prefix="form"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@page isELIgnored="false" %>
 <%@ include file="header.jsp" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>User Registration</title>
</head>
<body>
<div align="center">
<div class="register">
<div class="container">
<div class="register-top heading">
	<h2>USER REGISTRATION</h2>
</div>
<div class="register-main">
<div class="col-md-6 account-left">

<form:form modelAttribute="userDetail" action="addUserRegistration">
<h2>Personal Details</h2>
<form:input type="hidden" path="userId" />

<form:input path="userName" placeholder="Enter the User Name" />

<form:input type="password" path="password" placeholder="Enter the password" />

<form:input path="firstName" placeholder="Enter the First Name" />

<form:input path="lastName" placeholder="Enter the Last Name" />

<form:input type="email"  path="emailId" placeholder="Enter the Email Id" />

<form:input path="contactNumber" placeholder="Enter the Contact Number" />

<h2>Shipping Details</h2>
<form:input type="hidden" path="shippingAddress.shippingAddressId" />

<form:input path="shippingAddress.flatNo" placeholder="Enter the Flat Number" />

<form:input path="shippingAddress.streetName" placeholder="Enter the Street Name" />

<form:input path="shippingAddress.locality" placeholder="Enter the Locality Name" />

<form:input path="shippingAddress.city" placeholder="Enter the City Name" />

<form:input path="shippingAddress.state" placeholder="Enter the State" />

<form:input path="shippingAddress.pincode" placeholder="Enter the Pincode" />

<h2>Billing Address</h2>
<form:input type="hidden" path="billingAddress.billingAddressId" />

<form:input path="billingAddress.flatNo" placeholder="Enter the Flat Number" />

<form:input path="billingAddress.streetName" placeholder="Enter the Street Name" />

<form:input path="billingAddress.locality" placeholder="Enter the Locality Name" />

<form:input path="billingAddress.city" placeholder="Enter the City Name" />

<form:input path="billingAddress.state" placeholder="Enter the State" />

<form:input path="billingAddress.pincode" placeholder="Enter the Pincode" />

<div class="address submit">
<input type="submit" value="Add User" />
</div>


</form:form>
</div>

</div>
</div>
</div>
</div>
</body>
</html>
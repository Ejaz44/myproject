<%@taglib uri="http://www.springframework.org/tags/form"  prefix="form"%>
<%@page isELIgnored="false" %>
<%@ include file="header.jsp" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link href="css/style.css" rel='stylesheet' type='text/css'/>
	<script src="js/jquery.min.js"></script>
<script src="js/easyResponsiveTabs.js" type="text/javascript"></script>
				<script type="text/javascript">
					$(document).ready(function () {
						$('#horizontalTab').easyResponsiveTabs({
							type: 'default', //Types: default, vertical, accordion           
							width: 'auto', //auto or any width like 600px
							fit: true   // 100% fit in a container
						});
					});
				   </script>
				   <link href='http://fonts.googleapis.com/css?family=Source+Sans+Pro:200,400,600,700,200italic,300italic,400italic,600italic|Lora:400,700,400italic,700italic|Raleway:400,500,300,600,700,200,100' rel='stylesheet' type='text/css'>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>User Registration</title>
</head>
<body>
<div class="register">
		<div class="container">
			<div class="register-top heading">
				<h2>USER REGISTERATION FORM</h2>
			</div>
			<div class="register-main">
				<div class="col-md-6 account-left">
						<form:form modelAttribute="userDetail" action="addUserRegistration">
						
						<form:input type="hidden" path="userId" />
								<div>	
								<h2>Personal Details</h2>
								</div>
								<form:input path="userName" placeholder="Enter the User Name" />

								<form:input type="text" path="password" placeholder="Enter the password" />

								<form:input path="firstName" placeholder="Enter the First Name" /><br/>

								<form:input path="lastName" placeholder="Enter the Last Name" /><br/>
	
								<form:input path="emailId" placeholder="Enter the Email Id" /><br/>

								<form:input path="contactNumber" placeholder="Enter the Contact Number" /><br/>

								<div>	
								<h2>Shipping Details</h2>
								</div>
					
								<form:input type="hidden" path="shippingAddress.shippingAddressId" />

								<form:input path="shippingAddress.flatNo" placeholder="Enter the Flat Number" />

								<form:input path="shippingAddress.streetName" placeholder="Enter the Street Name" />

								<form:input path="shippingAddress.locality" placeholder="Enter the Locality Name" />

								<form:input path="shippingAddress.city" placeholder="Enter the City Name" />

								<form:input path="shippingAddress.state" placeholder="Enter the State" />

								<form:input path="shippingAddress.pincode" placeholder="Enter the Pincode" />

							    <div>	
								<h2>Billing Details</h2>
								</div>
							        					 
								<form:input type="hidden" path="billingAddress.billingAddressId" />

								<form:input path="billingAddress.flatNo" placeholder="Enter the Flat Number" />

								<form:input path="billingAddress.streetName" placeholder="Enter the Street Name" />

								<form:input path="billingAddress.locality" placeholder="Enter the Locality Name" />

								<form:input path="billingAddress.city" placeholder="Enter the City Name" />

								<form:input path="billingAddress.state" placeholder="Enter the State" />

								<form:input path="billingAddress.pincode" placeholder="Enter the Pincode" />
          	      				
          	      				<div class="address submit">
          	      					<input  type="submit" value="Register User" />
          	      					<input type="reset" value="Reset" />
          	      				</div>
				        	
				        </form:form>
				     </div>	
		        </div>
	        </div>
</div>
</body>

</html>

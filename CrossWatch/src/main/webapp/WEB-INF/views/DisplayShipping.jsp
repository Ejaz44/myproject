<%@taglib uri="http://www.springframework.org/tags/form"  prefix="form"%>
<%@include file="header.jsp" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
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
<title>Shipping Address</title>
</head>
<body>
<div class="register">
		<div class="container">
			<div class="register-top heading">
				<h2>Displaying Your Shipping Address</h2>
			</div>
			<div class="register-main">
				<form:form modelAttribute="shippingAddress">
				<div class="col-md-6 account-left">
						
							Flat No: 
							${shippingAddress.flatNo}	
							<br/>
							Street Name: 
							${shippingAddress.streetName}
							<br/>
							Locality: 
							${shippingAddress.locality}
							<br/>
							City: 
							${shippingAddress.city}
							<br/>
							State:  
							${shippingAddress.state}
							<br/>
							Pincode:  
							${shippingAddress.pincode}
							<br/>
							
							<input name="_eventId_edit" type="submit" value="Edit" />
							<input name="_eventId_submit" type="submit" value="Register" />	
						
				</div>
				</form:form>
			</div>
		</div>
	</div>
</body>
</html>
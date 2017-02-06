<%@taglib uri="http://www.springframework.org/tags/form"  prefix="form"%>
<%@include file="header.jsp" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
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
<title>Billing Address</title>
</head>
<body>
<div class="register">
		<div class="container">
			<div class="register-top heading">
				<h2>Displaying Your Billing Address</h2>
			</div>
			<div class="register-main">
			<form:form modelAttribute="billingAddress">
				<div class="col-md-6 account-left">
						
							Flat No: 
							${billingAddress.flatNo}	
							<br/>
							Street Name: 
							${billingAddress.streetName}
							<br/>
							Locality: 
							${billingAddress.locality}
							<br/>
							City: 
							${billingAddress.city}
							<br/>
							State:  
							${billingAddress.state}
							<br/>
							Pincode:  
							${billingAddress.pincode}
							<br/>
							
							<div class="address submit">
							<input name="_eventId_submit" type="submit" value="Register" />
							<input name="_eventId_edit" type="submit" value="Edit" />	
							</div> 
						</div>
			</form:form>
			</div>
		</div>
	</div>
</body>
</html>
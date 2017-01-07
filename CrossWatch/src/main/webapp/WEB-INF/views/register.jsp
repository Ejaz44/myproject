<%@taglib uri="http://www.springframework.org/tags/form"  prefix="form"%>
<%@ include file="header.jsp" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
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
</head>
<body>
<div class="register">
		<div class="container">
			<div class="register-top heading">
				<h2>USER REGISTERATION FORM</h2>
			</div>
			<div class="register-main">
				<div class="col-md-6 account-left">
						<form:form modelAttribute="userDetail">
						
								<div>	
									<h2>Personal Details</h2>
								</div>
								<form:input type="hidden" path="userId" />
								
								<form:input path="userName" placeholder="Enter the User Name" />
								<form:errors  style="color:red" path="userName"/>
								<form:input path="password" type="password" placeholder="Enter the password" />
								<form:errors style="color:red" path="password" />
								<form:input path="firstName" placeholder="Enter the First Name" /><br/>
								<form:errors style="color:red" path="firstName" />
								<form:input path="lastName" placeholder="Enter the Last Name" /><br/>
								<form:errors style="color:red" path="lastName" />
								<form:input path="emailId" placeholder="Enter the Email Id" /><br/>
								<form:errors style="color:red" path="emailId" />
								<form:input path="contactNumber" placeholder="Enter the Contact Number" /><br/>
								<form:errors style="color:red" path="contactNumber" />
								<div class="address submit">
									<input name="_eventId_submit" type="submit" value="Register User"/>
								</div>
				</form:form>
						</div>
					</div>
				</div>
			</div>
	</body>
</html>

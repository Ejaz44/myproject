<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@include file="header.jsp" %>

<title>Login Form</title>
<form method="post" action="perform_login">
	<div class="account">
		<div class="container">
		<div class="account-top heading">
				<h2>ACCOUNT</h2>
		</div>
			<div class="account-main">
				<div class="col-md-6 account-left">
					<h3>Existing User</h3>
					<div class="account-bottom">
						<input name="username" placeholder="Username" type="text" tabindex="3" required>
						<input name="password" placeholder="Password" type="password" tabindex="4" required>
						<div class="address">
							<a class="forgot" href="#">Forgot Your Password?</a>
							<input type="submit" value="Login">
						</div>
					</div>
				</div>
				<div class="col-md-6 account-right account-left">
					<h3>New User? Create an Account</h3>
					<p>By creating an account with our store, you will be able to move through the checkout process faster, store multiple shipping addresses, view and track your orders in your account and more.</p>
					<a href="reg">Create an Account</a>
				</div>
				<div class="clearfix"></div>
			</div>
		</div>
	</div>
</form>
<%@ include file="footer.jsp" %>
<%@ taglib prefix="security" uri="http://www.springframework.org/security/tags" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page isELIgnored="false" %>
<!DOCTYPE html>
<html>
<head>
<style>
.white, .white a
{
color:#fff;
}
</style>
<title>Cross Watches</title>
<link href="resources/css/bootstrap.css" rel="stylesheet" type="text/css" media="all" />
<!--jQuery(necessary for Bootstrap's JavaScript plugins)-->
<script src="resources/jq/jquery-1.11.0.min.js"></script>
<!--Custom-Theme-files-->
<!--theme-style-->
<link href="resources/css/style.css" rel="stylesheet" type="text/css" media="all" />	
<!--//theme-style-->
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords" content="Luxury Watches Responsive web template, Bootstrap Web Templates, Flat Web Templates, Andriod Compatible web template, 
Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyErricsson, Motorola web design" />
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
<!--start-menu-->
<script src="resources/jq/simpleCart.min.js"> </script>
<link href="resources/css/memenu.css" rel="stylesheet" type="text/css" media="all" />
<script type="text/javascript" src="resources/jq/memenu.js"></script>
<script>$(document).ready(function(){$(".memenu").memenu();});</script>	
<!--dropdown-->
<script src="resources/jq/jquery.easydropdown.js"></script>
<script type="text/javascript" src="resources/javaScript/angular.min.js"></script>

	<meta charset="utf-8">

	<meta http-equiv="X-UA-Compatible" content="IE=edge">

	<meta name="viewport" content="width=device-width, initial-scale=1">

	<meta name="keywords" content="footer, address, phone, icons" />

	<link rel="stylesheet" href="resources/css/footer.css">

	
	<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/font-awesome/4.2.0/css/font-awesome.min.css">


	<link href="http://fonts.googleapis.com/css?family=Cookie" rel="stylesheet" type="text/css">
			
</head>
<body> 
	<!--top-header-->
	<div class="top-header">
		<div class="container">
			<div class="top-header-main">
				<div class="col-md-6 top-header-left">
				</div>
<!-- 				<div class="col-md-6 top-header-left"> -->
<!-- 					<div class="cart box_1"> -->
<!-- 						<a href="checkout.html"> -->
<!-- 							 <div class="total"> -->
<!-- 								<span class="simpleCart_total"></span></div> -->
<!-- 								<img src="images/cart-1.png" alt="" /> -->
<!-- 						</a> -->
<!-- 						<p><a href="javascript:;" class="simpleCart_empty">Empty Cart</a></p> -->
<!-- 						<div class="clearfix"> </div> -->
<!-- 					</div> -->
					
<!-- 				</div> -->
<!-- 				<div class="clearfix"></div> -->
				<ul class="nav navbar-nav navbar-right">
      <li><a href="#"><span class="glyphicons glyphicons-shopping-bag"></span>Go to Cart</a></li>
      
      <c:if test="${empty pageContext.request.userPrincipal}">
      <li><a href="userLogin"><span class=""></span> Sign in</a></li>
            <li><a href="userRegistration"><span class=""></span> Registration</a></li>
	  </c:if>
	  <c:if test="${!empty pageContext.request.userPrincipal}">
      <li><a href="logout"><span class=""></span> Sign out</a></li>
            <li><a href="userRegistration"><span style="background:url('http://www.iconsdb.com/icons/download/white/user-16.ico')"> </span>${pageContext.request.userPrincipal.name}</a></li>
	  </c:if>
      
    </ul>
				
			</div>
		</div>
	</div>
	<!--top-header-->
	<!--start-logo-->
	<div class="logo">
		<a href="/CrossWatch/"><h1>Cross Watches</h1></a>
	</div>
	<!--start-logo-->
	<!--bottom-header-->
		<div class="header-bottom">
		<div class="container">
			<div class="header">
				<div class="col-md-9 header-left">
				<div class="top-nav">
					<ul class="memenu skyblue"><li class="active"><a href="index.html">Home</a></li>
						<c:forEach items="${categoryListDrop}" var="category">
						<li class="grid"><a href="#">${category.categoryName}</a>
							<div class="mepanel">
								<div class="row">
								<div class="col1 me-one">
										<h4></h4>
										<ul>
											<li><a href="products.html">Shoes</a></li>
											<li><a href="products.html">Watches</a></li>
											<li><a href="products.html">Brands</a></li>
											<li><a href="products.html">Coats</a></li>
											<li><a href="products.html">Accessories</a></li>
											<li><a href="products.html">Trousers</a></li>
										</ul>	
									</div>
									<div class="col1 me-one">
										<h4>Category</h4>
										
										<ul>
										<c:forEach items="${category.subCategory}" var="subCategory">
											<li><a href="#">${subCategory.subCategoryName}</a></li>
										</c:forEach>
										</ul>
									</div>
<!-- 									<div class="col1 me-one"> -->
<!-- 										<h4>Style Zone</h4> -->
<!-- 										<ul> -->
<!-- 											<li><a href="products.html">Shoes</a></li> -->
<!-- 											<li><a href="products.html">Watches</a></li> -->
<!-- 											<li><a href="products.html">Brands</a></li> -->
<!-- 											<li><a href="products.html">Coats</a></li> -->
<!-- 											<li><a href="products.html">Accessories</a></li> -->
<!-- 											<li><a href="products.html">Trousers</a></li> -->
<!-- 										</ul>	 -->
<!-- 									</div> -->
<!-- 									<div class="col1 me-one"> -->
<!-- 										<h4>Popular Brands</h4> -->
<!-- 										<ul> -->
<!-- 											<li><a href="products.html">499 Store</a></li> -->
<!-- 											<li><a href="products.html">Fastrack</a></li> -->
<!-- 											<li><a href="products.html">Casio</a></li> -->
<!-- 											<li><a href="products.html">Fossil</a></li> -->
<!-- 											<li><a href="products.html">Maxima</a></li> -->
<!-- 											<li><a href="products.html">Timex</a></li> -->
<!-- 											<li><a href="products.html">TomTom</a></li> -->
<!-- 											<li><a href="products.html">Titan</a></li> -->
<!-- 										</ul>		 -->
<!-- 									</div> -->
								</div>
							</div>
						</li>
						</c:forEach>
						
						</ul>
							</div>
				<div class="clearfix"> </div>
			</div>
			<div class="col-md-3 header-right"> 
				<div class="search-bar">
					<input type="text" value="Search" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'Search';}">
					<input type="submit" value="">
				</div>
			</div>
			<div class="clearfix"> </div>
			</div>
		</div>
	</div>

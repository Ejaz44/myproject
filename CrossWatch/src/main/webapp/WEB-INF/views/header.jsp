<%@ taglib prefix="security" uri="http://www.springframework.org/security/tags" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page isELIgnored="false" %>
<!DOCTYPE html>
<html>
<head>
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
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
<!--start-menu-->
<script src="resources/jq/simpleCart.min.js"> </script>
<link href="resources/css/memenu.css" rel="stylesheet" type="text/css" media="all" />
<script type="text/javascript" src="resources/jq/memenu.js"></script>
<script type="text/javascript" src="resources/jq/jquery.autocomplete.min.js"></script>
<script>
$(document).ready(function(){$(".memenu").memenu();});
</script>	
<!--dropdown-->
<script src="resources/jq/jquery.easydropdown.js"></script>
<script type="text/javascript" src="resources/javaScript/angular.min.js"></script>

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
					<a href="/CrossWatch/"><img src="resources/images/logo.jpg" style="height: 50px; width: 250px;" /></a>
				</div>
				<ul class="nav navbar-nav navbar-right">
      
      <c:if test="${empty pageContext.request.userPrincipal}">
      <li><a href="userLogin"><img src="resources/images/account .png" /> Sign in</a></li>
      <li><a href="reg"><span class=""></span> Registration</a></li>
      <li><a href="ContactUs">Contact Us</a></li>
	  </c:if>
	  
	  <c:if test="${!empty pageContext.request.userPrincipal}">
      <li><a href="logout"><span class=""></span> Sign out</a></li>
   	  <li><a href="">${pageContext.request.userPrincipal.name}</a></li>
      <li><a href="addCart-{{cartItemId}}">Go To Cart</a></li>
	  </c:if>
      
    </ul>
				
			</div>
		</div>
	</div>
	<!--top-header-->
	<!--start-logo-->
	<div class="logo">
		<center><a href="/CrossWatch/"><h1>Cross Watches</h1></a></center>
	</div>
	<!--start-logo-->
	<!--bottom-header-->
		<div class="header-bottom">
		<div class="container">
			<div class="header">
				<div class="col-md-9 header-left">
				<div class="top-nav">
					<ul class="memenu skyblue"><li class="active"><a href="/CrossWatch/">Home</a></li>
						<c:forEach items="${categoryListDrop}" var="category">
						<li class="grid"><a href="productDisplay">${category.categoryName}</a>
							<div class="mepanel">
								<div class="row">
								<div class="col1 me-one">
										<h4>Style Zone</h4>
										<ul>
											<li><a href="products.html">Luxury</a></li>
											<li><a href="products.html">Trending</a></li>
											<li><a href="products.html">Popular</a></li>
											<li><a href="products.html">Coats</a></li>
											<li><a href="products.html">Accessories</a></li>
											<li><a href="products.html">Trousers</a></li>
										</ul>	
									</div>
									<div class="col1 me-one">
										<h4>Category</h4>
										<ul>
										<c:forEach items="${category.subCategory}" var="subCategory">
											<li><a href="productDisplay?search=${subCategory.subCategoryName}">${subCategory.subCategoryName}</a></li>
										</c:forEach>
										</ul>
									</div>
									<div class="col1 me-one">
										<h4>Brands</h4>
											<c:forEach items="${brandListDrop}" var="brand">
											<ul>
											<li><a href="#">${brand.brandName}</a></li>
											</ul>
											</c:forEach>
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
				
				
						<c:if test="${pageContext.request.userPrincipal.name}">
			
						</c:if>
						</ul>
							</div>
				<div class="clearfix"> </div>
			</div>
			<div class="col-md-3 header-right"> 
				<div class="search-bar" action="displayProduct?search=${search}">
					<input type="text" value="Search" id="w-input-search" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'Search';}">
					<input type="submit" id="button-id" >
				</div>
			</div>
			<div class="clearfix"> </div>
			</div>
		</div>
	</div>
<script>
  $(document).ready(function() {

	$('#w-input-search').autocomplete({
		serviceUrl: '${pageContext.request.contextPath}/getTags',
		paramName: "tagName",
		delimiter: ",",
	   transformResult: function(response) {

		return {
		  //must convert json to javascript object before process
		  suggestions: $.map($.parseJSON(response), function(item) {

		      return { value: item.productName, data: item.productId };
		   })

		 };

            }

	 });

  });
  </script>
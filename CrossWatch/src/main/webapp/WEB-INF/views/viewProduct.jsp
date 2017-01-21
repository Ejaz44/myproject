<%@ include file="header.jsp" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib uri="http://www.springframework.org/tags/form"  prefix="form"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<title>View Product</title>
<link href="resources/css/bootstrap.css" rel="stylesheet" type="text/css" media="all" />
<!--jQuery(necessary for Bootstrap's JavaScript plugins)-->
<script src="resources/jq/jquery-1.11.0.min.js"></script>
<!--Custom-Theme-files-->
<!--theme-style-->
<link href="resources/css/style.css" rel="stylesheet" type="text/css" media="all" />	
<!--//theme-style-->
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
<!--start-menu-->
<script src="resources/jq/simpleCart.min.js"> </script>
<link href="resources/css/memenu.css" rel="stylesheet" type="text/css" media="all" />
<script type="text/javascript" src="resources/jq/memenu.js"></script>
<script>$(document).ready(function(){$(".memenu").memenu();});</script>	
<!--dropdown-->
<script src="resources/jq/jquery.easydropdown.js"></script>	
<script type="text/javascript">
	$(function() {
	
	    var menu_ul = $('.menu_drop > li > ul'),
	           menu_a  = $('.menu_drop > li > a');
	    
	    menu_ul.hide();
	
	    menu_a.click(function(e) {
	        e.preventDefault();
	        if(!$(this).hasClass('active')) {
	            menu_a.removeClass('active');
	            menu_ul.filter(':visible').slideUp('normal');
	            $(this).addClass('active').next().stop(true,true).slideDown('normal');
	        } else {
	            $(this).removeClass('active');
	            $(this).next().stop(true,true).slideUp('normal');
	        }
	    });
	
	});
</script>		
<div class="breadcrumbs">
		<div class="container">
			<div class="breadcrumbs-main">
				<ol class="breadcrumb">
					<li><a href="/CrossWatch/">Home</a></li>
					<li class="active">View Product</li>
				</ol>
			</div>
		</div>
	</div>

<div ng-app="app" ng-controller="myCtrl">
<div class="single contact">
		<div class="container">
			<div class="single-main">
				<div class="col-md-9 single-main-left">
				<div class="sngl-top">
					<div class="col-md-5 single-top-left">	
						<div class="flexslider">
							  <ul class="slides">
								<li data-thumb="resources/images/{{jsonData.productId}}-1.jpg">
									<div class="thumb-image"> <img src="resources/images/{{jsonData.productId}}-1.jpg" data-imagezoom="true" class="img-responsive" alt=""/> </div>
								</li>
								<li data-thumb="resources/images/{{jsonData.productId}}-2.jpg">
									 <div class="thumb-image"> <img src="resources/images/{{jsonData.productId}}-2.jpg" data-imagezoom="true" class="img-responsive" alt=""/> </div>
								</li>
								<li data-thumb="resources/images/{{jsonData.productId}}-1.jpg">
								   <div class="thumb-image"> <img src="resources/images/{{jsonData.productId}}-1.jpg" data-imagezoom="true" class="img-responsive" alt=""/> </div>
								</li> 
							  </ul>
						</div>
						<!-- FlexSlider -->
						<script src="resources/jq/imagezoom.js"></script>
						<script defer src="resources/jq/jquery.flexslider.js"></script>
						<link rel="stylesheet" href="resources/css/flexslider.css" type="text/css" media="screen" />

						<script>
						// Can also be used with $(document).ready()
						$(window).load(function() {
						  $('.flexslider').flexslider({
							animation: "slide",
							controlNav: "thumbnails"
						  });
						});
						</script>
					</div>	
					<div class="col-md-7 single-top-right">
						<div class="single-para simpleCart_shelfItem">
						<h2>{{jsonData.productName}}</h2>
							<div class="star-on">
								<ul class="star-footer">
										<li><a href="#"><i> </i></a></li>
										<li><a href="#"><i> </i></a></li>
										<li><a href="#"><i> </i></a></li>
										<li><a href="#"><i> </i></a></li>
										<li><a href="#"><i> </i></a></li>
									</ul>
								<div class="review">
									<a href="#"> 1 customer review </a>
									
								</div>
							<div class="clearfix"> </div>
							</div>
							
							<h5 class="item_price">Rs. {{jsonData.productPrice}}</h5>
							<p>{{jsonData.productDescription}}</p>
							<div class="available">
								
						</div>
							<ul class="tag-men">
								<li><span>Category</span>
								<span class="women1">: {{jsonData.categoryName}}</span></li>
								<li><span>Discount</span>
								<span class="women1">: {{jsonData.productDiscount}}</span></li>
								<li><span>Color</span>
								<span class="women1">: {{jsonData.productColor}}</span></li>
								<li><span>Size</span>
								<span class="women1">: {{jsonData.productSize}}</span></li>
							
							</ul>	
								<form:form modelAttribute="cartItem" action="/CrossWatch/addtocart-${sessionScope.productId}?userId=1">
									<div>
										<form:input type="number" path="productQuantity" name="Quantity" value="1" />
									</div>
							
							<input type="submit" value="addtocart" />
								<a href="buyNow-{{jsonData.productId}}?userId=1" class="add-cart item_add">BUY NOW</a>
								<a href="wishlist-{{jsonData.productId}}?userId=1" class="add-cart item_add">Add WishList</a>
							</form:form>
						</div>
					</div>
					<div class="clearfix"> </div>
				</div>
				<div class="tabs">
					<ul class="menu_drop">
				<li class="item1"><a href="#"><img src="resources/images/arrow.png" alt="">Description</a>
					<ul>
						<li class="subitem1"><a href="#">{{jsonData.productDescription}}</a></li>
					</ul>
				</li>
				<li class="item2"><a href="#"><img src="resources/images/arrow.png" alt="">Additional information</a>
					<ul>
					    <li class="subitem2"><a href="AboutUS">{{jsonData.additionalInfo}}</a></li>
					</ul>
				</li>
				<li class="item3"><a href="#"><img src="resources/images/arrow.png" alt="">Reviews (10)</a>
					<ul>
						<li class="subitem1"><a href="#">Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat.</a></li>
					</ul>
				</li>
	 		</ul>
				</div>
				<div class="latestproducts">
					<div class="product-one">
						<div class="col-md-4 product-left p-left"> 
							<div class="product-main simpleCart_shelfItem">
								<a href="single.html" class="mask"><img class="img-responsive zoom-img" src="resources/images/p-1.png" alt="" /></a>
								<div class="product-bottom">
									<h3>Smart Watches</h3>
									<p>Explore Now</p>
									<h4><a class="item_add" href="#"><i></i></a> <span class=" item_price">$ 329</span></h4>
								</div>
								<div class="srch">
									<span>-50%</span>
								</div>
							</div>
						</div>
						<div class="col-md-4 product-left p-left"> 
							<div class="product-main simpleCart_shelfItem">
								<a href="single.html" class="mask"><img class="img-responsive zoom-img" src="resources/images/p-2.png" alt="" /></a>
								<div class="product-bottom">
									<h3>Smart Watches</h3>
									<p>Explore Now</p>
									<h4><a class="item_add" href="#"><i></i></a> <span class=" item_price">$ 329</span></h4>
								</div>
								<div class="srch">
									<span>-50%</span>
								</div>
							</div>
						</div>
						<div class="col-md-4 product-left p-left"> 
							<div class="product-main simpleCart_shelfItem">
								<a href="single.html" class="mask"><img class="img-responsive zoom-img" src="resources/images/p-3.png" alt="" /></a>
								<div class="product-bottom">
									<h3>Smart Watches</h3>
									<p>Explore Now</p>
									<h4><a class="item_add" href="#"><i></i></a> <span class=" item_price">$ 329</span></h4>
								</div>
								<div class="srch">
									<span>-50%</span>
								</div>
							</div>
						</div>
						<div class="clearfix"></div>
					</div>
				</div>
			</div>
				<div class="clearfix"> </div>
			</div>
		</div>
	</div>	
<script>
var app=angular.module("app",[]);
app.controller("myCtrl", function($scope)
	{
		$scope.jsonData=${product};
	});
</script>
</div>
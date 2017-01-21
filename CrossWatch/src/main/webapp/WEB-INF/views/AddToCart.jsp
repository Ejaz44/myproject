<%@ include file="header.jsp" %>

<title>Add to Cart</title>
<div class="breadcrumbs">
		<div class="container">
			<div class="breadcrumbs-main">
				<ol class="breadcrumb">
					<li><a href="/CrossWatch/">Home</a></li>
					<li><a href="">View Product</a></li>
					<li class="active">My Cart</li>
				</ol>
			</div>
		</div>
	</div>

<div ng-app="app" ng-controller="myCtrl">
<!-- <p> {{jsonData.cartItemId}} </p> -->
<script>
var app=angular.module("app",[]);
app.controller("myCtrl", function($scope)
	{
		$scope.jsonData=${cartList};
	});
</script>
<div class="container">
  <center><h2>MY CART</h2></center>          
  <table class="table">
<tr>
<th>Item</th>
<th>Product Name</th>
<th>Quantity</th>
<th>Price</th>
<th>Delete</th>
</tr>

<tr ng-repeat="p in jsonData">
<td><a href="#"></a><img src="resources/images/{{p.productId}}.jpg" /></td>
<td>{{p.productName}}</td>
<td>{{p.productQuantity}}</td>
<td>{{p.productPrice}}</td>
<td><a href="deleteCartItem-{{p.cartItemId}}">delete</a></td>
</tr>
</table>

</div>
<div>
<a href="/CrossWatch/" class="add-cart item_add">CONTINUE SHOPPING</a>
<a href="cart" class="add-cart item_add">CHECKOUT</a>
</div>
</div>
<%@ include file="footer.jsp" %>
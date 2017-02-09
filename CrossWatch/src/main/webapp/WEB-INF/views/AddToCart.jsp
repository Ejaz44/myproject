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
<th>Unit Price</th>
<th>Total Price</th>
<th>Delete</th>
</tr>

<tr ng-repeat="p in jsonData">
<td><a href="viewProduct-{{p.productId}}"><img src="resources/images/{{p.productId}}-0.jpg" style="height: 200px"/></a></td>
<td>{{p.productName}}</td>
<td>{{p.productQuantity}}</td>
<td>{{p.productPrice}}</td>
<td>{{p.productPrice*p.productQuantity}}</td>
<td><a href="deleteCartItem-{{p.cartItemId}}"><i class="fa fa-trash" aria-hidden="true"></i></a></td>
</tr>
</table>

</div>
<div style="padding-left: 150px">
<a href="/CrossWatch/" class="add-cart item_add">CONTINUE SHOPPING</a>
<a href="cart" class="add-cart item_add">CHECKOUT</a>
</div>
</div>
<%@ include file="footer.jsp" %>
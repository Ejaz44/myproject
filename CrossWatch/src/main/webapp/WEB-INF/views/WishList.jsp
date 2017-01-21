<%@ include file="header.jsp" %>

<title>Wish List</title>
<div ng-app="app" ng-controller="myCtrl">
<!-- <p> {{jsonData.cartItemId}} </p> -->
<script>
var app=angular.module("app",[]);
app.controller("myCtrl", function($scope)
	{
		$scope.jsonData=${wishList};
	});
</script>
<div class="container">
  <center><h2>MY WISHLIST</h2></center>          
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
<td><a href="deleteWishList-{{p.wishListId}}">delete</a></td>
</tr>
</table>

</div>
<div>
<a href="/CrossWatch/" class="add-cart item_add">CONTINUE SHOPPING</a>
<a href="" class="add-cart item_add">ADD TO CART</a>
</div>
</div>
<%@ include file="footer.jsp" %>
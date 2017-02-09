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
<th>Add to Cart</th>
</tr>

<tr ng-repeat="p in jsonData">
<td><a href="viewProduct-{{p.productId}}"><img src="resources/images/{{p.productId}}-0.jpg" style="height: 200px" /></a></td>
<td>{{p.productName}}</td>
<td>{{p.productQuantity}}</td>
<td>{{p.productPrice}}</td>
<td><a href="deleteWishList-{{p.wishListId}}">delete</a></td>
<td><a href="addtocart-{{p.productId}}?userId=1">Add to Cart</a></td>
</tr>
</table>

</div>
<div>
<div align="center">
<a href="/CrossWatch/" class="add-cart item_add">CONTINUE SHOPPING</a>
<!-- <a href="addtocart-{{p.productId}}" class="add-cart item_add">ADD TO CART</a> -->
</div>
</div>
</div>
<%@ include file="footer.jsp" %>
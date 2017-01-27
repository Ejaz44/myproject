<%@ include file="header.jsp" %>


<title>Cart List</title>
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
  <h2>Cart List</h2>            
  <table class="table">
<tr>
<th>Product</th>
<th>Product Name</th>
<th>Quantity</th>
<th>Price</th>
</tr>

<tr>
<td><a href="viewProduct-{{jsonData.productId}}"></a><img src="resources/images/{{jsonData.productId}}-0.jpg" style="height: 200px" /></td>
<td>{{jsonData.productName}}</td>
<td>{{jsonData.productQuantity}}</td>
<td>{{jsonData.productPrice}}</td>
</tr>
</table>

</div>

<a href="checkout?userId=${sessionScope.userId}" class="add-cart item_add">Check OUT</a>
</div>
<%@ include file="footer.jsp" %>
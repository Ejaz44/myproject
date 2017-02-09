<%@ include file="header.jsp" %>

<div ng-app="app" ng-controller="myCtrl">
	<div class="breadcrumbs">
		<div class="container">
			<div class="breadcrumbs-main">
				<ol class="breadcrumb">
					<li><a href="/CrossWatch/">Home</a></li>
					<li class="active">Products</li>
				</ol>
			</div>
		</div>
	</div>

<label>Filter: <input type="text" ng-model="searchKeyword"></label>
<div class="prdt"> 
		<div class="container">
			<div class="prdt-top">
				<div class="col-md-9 prdt-left">
					<div class="product-one">
						<div class="col-md-4 product-left p-left" ng-repeat="pd in jsonData| filter:searchKeyword">
							<div class="product-main simpleCart_shelfItem">
								<a href="viewProduct-{{pd.productId}}" class="mask"><img class="img-responsive zoom-img" src="resources/images/{{pd.productId}}-0.jpg" alt="" /></a>
								<div class="product-bottom">
									<h3>{{pd.productName}}</h3>
									<p>Explore Now</p>
									<h4><a class="item_add" href="#"><i></i></a> <span class=" item_price">{{pd.productPrice}}</span></h4>
								</div>
								<div class="srch srch1">
									<span>-{{pd.productDiscount}}%</span>
								</div>
						<div class="clearfix"></div>
							</div>
						
						</div>
						
					</div>	
				</div>	
								<div class="clearfix"></div>
			</div>
		</div>
	</div>
	<script>
var app=angular.module("app",[]);
app.controller("myCtrl", function($scope,$http,$location)
	{
		$scope.searchKeyword=location.search.substr(8);
		$scope.jsonData = ${productList};
	});
</script>
	</div>
	

<%@ include file="footer.jsp" %>
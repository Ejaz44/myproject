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

<div class="prdt"> 
		<div class="container">
			<div class="prdt-top">
				<div class="col-md-9 prdt-left">
					<div class="product-one">
						<div class="col-md-4 product-left p-left" ng-repeat="pd in jsonData">
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
				<div class="col-md-3 prdt-right">
					<div class="w_sidebar">
						<section  class="sky-form">
							<h4>Categories</h4>
							<div class="row1 scroll-pane">
								<div class="col col-4">
									<label class="checkbox"><input type="checkbox" name="checkbox" checked=""><i></i>All Accessories</label>
								</div>
								<div class="col col-4">								
									<label class="checkbox"><input type="checkbox" name="checkbox"><i></i>Women Watches</label>
									<label class="checkbox"><input type="checkbox" name="checkbox"><i></i>Kids Watches</label>
									<label class="checkbox"><input type="checkbox" name="checkbox"><i></i>Men Watches</label>			
								</div>
							</div>
						</section>
						<section  class="sky-form">
							<h4>Brand</h4>
							<div class="row1 row2 scroll-pane">
<!-- 								<div class="col col-4"> -->
								<ul>
								<c:forEach items="${categoryListDrop}" var="category">
								<li>
											${category.categoryName}							
								</li>
								</c:forEach>
								</ul>
<!-- 								</div> -->
							</div>
						</section>
						<section class="sky-form">
							<h4>discount</h4>
								<div class="row1 row2 scroll-pane">
									<div class="col col-4">
										<label class="radio"><input type="radio" name="radio" checked=""><i></i>60 % and above</label>
										<label class="radio"><input type="radio" name="radio"><i></i>50 % and above</label>
										<label class="radio"><input type="radio" name="radio"><i></i>40 % and above</label>
									</div>
									<div class="col col-4">
										<label class="radio"><input type="radio" name="radio"><i></i>30 % and above</label>
										<label class="radio"><input type="radio" name="radio"><i></i>20 % and above</label>
										<label class="radio"><input type="radio" name="radio"><i></i>10 % and above</label>
									</div>
								</div>						
						</section>
					</div>
				</div>
				<div class="clearfix"></div>
			</div>
		</div>
	</div>
	<script>
var app=angular.module("app",[]);
app.controller("myCtrl", function($scope)
	{
		$scope.jsonData = ${productList};
	});
</script>
	</div>
	

<%@ include file="footer.jsp" %>
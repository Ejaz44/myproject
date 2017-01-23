<%@include file="header.jsp" %>

	<div class="bnr" id="home">
		<div  id="top" class="callbacks_container">
			<ul class="rslides" id="slider4">
			    <li>
					<img src="resources/images/bnr-1.jpg" alt=""/>
				</li>
				<li>
					<img src="resources/images/bnr-2.jpg" alt=""/>
				</li>
				<li>
					<img src="resources/images/bnr-3.jpg" alt=""/>
				</li>
			</ul>
		</div>
		<div class="clearfix"> </div>
	</div>
	<!--banner-ends--> 
	<!--Slider-Starts-Here-->
	
				<script src="resources/jq/responsiveslides.min.js"></script>
			 <script>
			    // You can also use "$(window).load(function() {"
			    $(function () {
			      // Slideshow 4
			      $("#slider4").responsiveSlides({
			        auto: true,
			        pager: true,
			        nav: true,
			        speed: 500,
			        namespace: "callbacks",
			        before: function () {
			          $('.events').append("<li>before event fired.</li>");
			        },
			        after: function () {
			          $('.events').append("<li>after event fired.</li>");
			        }
			      });
			
			    });
			  </script>
			<!--End-slider-script-->
	<!--about-starts-->
	
	<div ng-app="app" ng-controller="myCtrl">
	<div class="product">
	<div class="about"> 
		<div class="container">
			<div class="about-top grid-1">
				<div class="col-md-4 about-left">
					<figure class="effect-bubba">
						<img class="img-responsive" src="resources/images/abt-1.jpg" alt=""/>
						<figcaption>
							<h2>Rolex</h2>
							<p>The first wristwatch with an automatically changing date on the dial</p>	
						</figcaption>			
				        </figure>
				</div>
				<div class="col-md-4 about-left">
					<figure class="effect-bubba">
						<img class="img-responsive" src="resources/images/abt-2.jpg" alt=""/>
						<figcaption>
							<h4>Breitling</h4>
							<p>It was the Breitling Chronomat B01 with the in-house made and designed caliber 01 movement</p>	
						</figcaption>			
					</figure>
				</div>
				<div class="col-md-4 about-left">
					<figure class="effect-bubba">
						<img class="img-responsive" src="resources/images/abt-3.jpg" alt=""/>
						<figcaption>
							<h4>Cras elit mauris</h4>
							<p>In sit amet sapien eros Integer dolore magna aliqua</p>	
						</figcaption>			
					</figure>
				</div>
				<div class="clearfix"></div>
			</div>
		</div>
	</div>
	<!--about-end-->
	<!--product-starts-->
	<div class="product" > 
		<div class="container">
			<div class="product-top" >
					<div class="col-md-3 product-left" ng-repeat="p in jsonData">
					<div class="product-main simpleCart_shelfItem">
							<a href="viewProduct-{{p.productId}}" class="mask"><img class="img-responsive zoom-img" src="resources/images/{{p.productId}}-0.jpg" alt="product 1" /></a>
							<div class="product-bottom">
								<h3>{{p.productName}}</h3>
								<p>Explore Now</p>
								<h4><a class="item_add" href="viewProduct-{{p.productId}}"><i></i></a> <span class=" item_price">{{p.productPrice}}</span></h4>
							</div>
							<div class="srch">
								<span>-{{p.productDiscount}}%</span>
							</div>
					</div>
					</div>
					
							<div class="clearfix"></div>
			</div>
				<div class="product-one">
							<div class="clearfix"></div>
				</div>
		</div>
	</div>
</div>

<script>
var app=angular.module("app",[]);
app.controller("myCtrl", function($scope)
	{
		$scope.jsonData=${productList};
	});
</script>

	
	
<%@ include file="footer.jsp" %>
 <%@taglib uri="http://www.springframework.org/tags/form"  prefix="form"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@page isELIgnored="false" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@include file="header.jsp" %>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<script>
var app=angular.module("app",[]);
app.controller("myCtrl", function($scope)
	{
		$scope.jsonData=${productList};
	});
</script>
<script>
function toggle()
{
	if(document.getElementById("buttonToggle").value == "Show List")
	{
		document.getElementById("productTable").style.display = "block";
		document.getElementById("productTable").style.visibility = "visible";
		document.getElementById("buttonToggle").value = "Hide List";
	}
	else
	{
		document.getElementById("productTable").style.display = "none";
		document.getElementById("productTable").style.visibility = "hidden";
		document.getElementById("buttonToggle").value = "Show List";
	}
}
</script>
<style type="text/css">
#headerbutton {
     background:none!important;
     border:none; 
     padding:0!important;
     font: inherit;
     /*border is optional*/
     border-bottom:1px solid #444; 
     cursor: pointer;
}
 tr,th,td {
                padding: 20px;
            }
#productTable
{
	display:none;
}
</style>

</head>
<body>
<div ng-app="app" ng-controller="myCtrl">
<div class="register">
<div class="container">
<div class="register-top heading">
	<h2>PRODUCT LIST</h2>
</div>
<div class="register-main">
<div class="col-md-6 account-left">

<form:form enctype="multipart/form-data" modelAttribute="product" action="addProduct">
<form:input type="hidden" path="productId" />

<form:input path="productName" placeholder="Enter the Product Name"/>
<form:errors path = "productName" /><br>
<form:input path="productDescription" placeholder="Enter the Product Desc" />
<form:errors path = "productDescription" /><br>
<form:input path="additionalInfo" placeholder="Enter the Additional Info"/>
<form:errors path="additionalInfo" />
<form:input path="productQuantity" placeholder="Enter the Quantity"/>
<form:errors path = "productQuantity" /><br>
<form:input path="productPrice" placeholder="Enter the Price"/>
<form:errors path = "productPrice" /><br>
<form:input path="productDiscount" placeholder="Enter the discount on product"/>
 <form:errors path = "productDiscount" /><br>
 <form:input path="productColor" placeholder="Enter the color for the product"/>
 <form:errors path="productColor" /><br/>
 <form:select path="category.categoryName" items="${categoryList}"  itemValue="categoryName" itemLabel="categoryName" />
 <form:select path="subCategory.subCategoryName" items="${subCategoryList}"  itemValue="subCategoryName" itemLabel="subCategoryName"/>
 <form:select path="supplier.supplierName" items="${supplierList}"  itemValue="supplierName" itemLabel="supplierName"/>
 <form:select path="brand.brandName" items="${brandList}"  itemValue="brandName" itemLabel="brandName"/>
 <input type="text" placeholder="Filter for Product" ng-model="test" />
 <div class="address submit">
<div class="address submit">
 <c:if test="${!empty product.productName }">
<input type="submit" value="Edit product" />
</c:if>
</div>

<div class="address submit">
<c:if test="${empty product.productName }">
<input type="submit" value="Add product" />

<input class="address button" type="button" id="buttonToggle" value="Show List" onclick="toggle();"/>
<form:input type="file" path="productImage" class="address file" multiple ="multiple" />
</c:if>
</div>
</div>
</form:form>
				</div>
		</div>
	</div>

<table id="productTable" Class="table-responsive">
<tr>
<th>
<input id="headerbutton" type="button" ng-click="sortType = 'productId'; sortReverse = !sortReverse" value="Product ID">
 <span ng-show="sortType == 'productId'" class="fa fa-caret-down"></span>
</th>

<th>
<input id="headerbutton" type="button" ng-click="sortType = 'productName'; sortReverse = !sortReverse" value="Product Name">
 <span ng-show="sortType == 'productName'" class="fa fa-caret-down"></span>
</th>

<th>
<input id="headerbutton" type="button" ng-click="sortType = 'productDescription'; sortReverse = !sortReverse" value="Product Description">
 <span ng-show="sortType == 'productDescription'" class="fa fa-caret-down"></span>
</th>

<th>
<input id="headerbutton" type="button" ng-click="sortType = 'productQuantity'; sortReverse = !sortReverse" value="Product Quantity">
 <span ng-show="sortType == 'productQuantity'" class="fa fa-caret-down"></span>
</th>

<th>
<input id="headerbutton" type="button" ng-click="sortType = 'productPrice'; sortReverse = !sortReverse" value="Product Price">
 <span ng-show="sortType == 'productPrice'" class="fa fa-caret-down"></span>
</th>

<th>
<input id="headerbutton" type="button" ng-click="sortType = 'productDiscount'; sortReverse = !sortReverse" value="Product Discount">
 <span ng-show="sortType == 'productDiscount'" class="fa fa-caret-down"></span>
</th>

<th>Edit Product</th>
<th>Delete Product</th>
</tr>

<tr ng-repeat="plist in jsonData | filter:test | orderBy:sortType:sortReverse">
<td>{{plist.productId}}</td>
<td>{{plist.productName}}</td>
<td>{{plist.productDescription}}</td>
<td>{{plist.productQuantity}}</td>
<td>{{plist.productPrice}}</td>
<td>{{plist.productDiscount}}</td>

<td><a href="editProduct-{{plist.productId}}"><i class="fa fa-pencil" aria-hidden="true"></i></a></td>
<td><a href="deleteProduct-{{plist.productId}}"><i class="fa fa-trash" aria-hidden="true"></i></a></td>
</tr>
</table>
</div>
</div>
</body>
</html>
<%@ include file="footer.jsp" %>
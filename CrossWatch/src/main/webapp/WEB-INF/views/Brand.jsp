<%@taglib uri="http://www.springframework.org/tags/form"  prefix="form"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@page isELIgnored="false" %>
<%@ include file="header.jsp" %>

<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Brand Form</title>

<script>
function toggle()
{
	if(document.getElementById("buttonToggle").value == "Show List")
	{
		document.getElementById("brandTable").style.display = "block";
		document.getElementById("brandTable").style.visibility = "visible";
		document.getElementById("buttonToggle").value = "Hide List";
	}
	else
	{
		document.getElementById("brandTable").style.display = "none";
		document.getElementById("brandTable").style.visibility = "hidden";
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
                padding: 10px;
            }
#brandTable
{
	display:none;
}
</style>


<div ng-app="app" ng-controller="myCtrl">
<div class="register">
<div class="container">
<div class="register-top heading">
	<h2>BRAND LIST</h2>
</div>
<div class="register-main">
<div class="col-md-6 account-left">
<form:form modelAttribute="brand" action="addBrand">

<form:input type="hidden" path="brandId" />
<form:input path="brandName" placeholder="Enter the brand name"/><br/>
<form:errors path="brandName" />
<form:input path="brandDescription" placeholder="Enter the brand desc"/><br/>
<form:errors path="brandDescription" />		
			
<input type="text" placeholder="Filter for Brand" ng-model="test" />


<div class="address submit">
<c:if test="${!empty brand.brandName }">
<input type="submit" value="Update Brand" />
</c:if>
</div>

<div class="address submit">
<c:if test="${empty brand.brandName }">
<input type="submit" value="Register Brand" />
<input class="address button" type="button" id="buttonToggle" value="Show List" onclick="toggle()"/>
</c:if>
</div>

</form:form>
				</div>
		</div>
	</div>

<table id="brandTable" class="table table-hover">
<tr>
<th>
<input id="headerbutton" type="button" ng-click="sortType = 'brandId'; sortReverse = !sortReverse" value="Brand ID" />
 <span ng-show="sortType == 'brandId'" class="fa fa-caret-down"></span>
</th>

<th>
<input id="headerbutton" type="button" ng-click="sortType = 'brandName'; sortReverse = !sortReverse" value="Brand Name" />
 <span ng-show="sortType == 'brandName'" class="fa fa-caret-down"></span>
</th>

<th>
<input id="headerbutton" type="button" ng-click="sortType = 'brandDescription'; sortReverse = !sortReverse" value="Brand Description" />
 <span ng-show="sortType == 'brandDescription'" class="fa fa-caret-down"></span>
</th>

<th>Edit Brand</th>
<th>Delete Brand</th>
</tr>

<tr ng-repeat="blist in jsonData | filter:test | orderBy:sortType:sortReverse">
<td>{{blist.brandId}}</td>
<td>{{blist.brandName}}</td>
<td>{{blist.brandDescription}}</td>
<td><a href="editBrand-{{blist.brandId}}"><i class="fa fa-pencil" aria-hidden="true"></i></a></td>
<td><a href="deleteBrand-{{blist.brandId}}"><i class="fa fa-trash" aria-hidden="true"></i></a></td>
</tr>

</table>
</div>
<script type="text/javascript">
var app = angular.module('app',[]);
app.controller("myCtrl", function($scope)
	{
		$scope.jsonData=${brandList};
	});
</script>
</div>
<%@ include file="footer.jsp" %>

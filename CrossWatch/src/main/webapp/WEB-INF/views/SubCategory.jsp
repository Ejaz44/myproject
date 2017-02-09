 <%@taglib uri="http://www.springframework.org/tags/form"  prefix="form"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@page isELIgnored="false" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ include file="header.jsp"%> 
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<script>
var app=angular.module("app",[]);
app.controller("myCtrl", function($scope)
	{
		$scope.jsonData=${subCategoryList};
	});
</script>
<script>
function toggle()
{
	if(document.getElementById("buttonToggle").value == "Show List")
	{
		document.getElementById("subCategoryTable").style.display = "block";
		document.getElementById("subCategoryTable").style.visibility = "visible";
		document.getElementById("buttonToggle").value = "Hide List";
	}
	else
	{
		document.getElementById("subCategoryTable").style.display = "none";
		document.getElementById("subCategoryTable").style.visibility = "hidden";
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
#subCategoryTable
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
	<h2>SUBCATEGORY LIST</h2>
</div>
<div class="register-main">
<div class="col-md-6 account-left">
<form:form modelAttribute="subCategory" action="addSubCategory">

<form:input type="hidden" path="subCategoryId" />
<form:input path="subCategoryName" placeholder="Enter the SubCategoryName"/><br/>
<form:errors path="subCategoryName" /><br/>
<form:input path="subCategoryDescription" placeholder="Enter the subCategoryDesc" /><br/>
<form:errors path = "subCategoryDescription" /><br/>

<input type="text" placeholder="Filter for SubCategory" ng-model="test" /><br/>
 <form:select path="category.categoryName" items="${categoryList}"  itemValue="categoryName" itemLabel="categoryName"/>

<div class="address submit">
 <c:if test="${!empty subCategory.subCategoryName }">
<input type="submit" value="Edit SubCategory" />
</c:if>
</div>
<div class="address submit">
<c:if test="${empty subCategory.subCategoryName }">
<input type="submit" value="Add SubCategory" />

<input class="address button" type="button" id="buttonToggle" value="Show List" onclick="toggle();"/>
</c:if>
 </div>
 
</form:form>
				</div>
		</div>
	</div>
<table  id="subCategoryTable" class="table table-hover">
<tr>
<th>
<input id="headerbutton" type="button" ng-click="sortType = 'subCategoryId'; sortReverse = !sortReverse" value="SubCategory ID">
 <span ng-show="sortType == 'subCategoryId'" class="fa fa-caret-down"></span>
</th>

<th>
<input id="headerbutton" type="button" ng-click="sortType = 'subCategoryName'; sortReverse = !sortReverse" value="SubCategory Name">
 <span ng-show="sortType == 'subCategoryName'" class="fa fa-caret-down"></span>
</th>

<th>
<input id="headerbutton" type="button" ng-click="sortType = 'subCategoryDescription'; sortReverse = !sortReverse" value="SubCategory Description">
 <span ng-show="sortType == 'subCategoryDescription'" class="fa fa-caret-down"></span>
</th>

<th>Edit SubCategory</th>
<th>Delete SubCategory</th>

</tr>

<tr ng-repeat="sclist in jsonData | filter:test | orderBy:sortType:sortReverse">
<td>{{sclist.subCategoryId}}</td>
<td>{{sclist.subCategoryName}}</td>
<td>{{sclist.subCategoryDescription}}</td>
<td><a href="editSubCategory-{{sclist.subCategoryId}}"><i class="fa fa-pencil" aria-hidden="true"></i></a></td>
<td><a href="deleteSubCategory-{{sclist.subCategoryId}}"><i class="fa fa-trash" aria-hidden="true"></i></a></td>
</tr>

</table>
</div>
</div>
<%@ include file="footer.jsp"%>
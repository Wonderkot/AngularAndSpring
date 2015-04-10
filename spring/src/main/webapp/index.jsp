<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link href="resources/css/bootstrap.css" rel="stylesheet">
<title>BookShop</title>
</head>
<body ng-app="app">
	<ul class="nav nav-tabs">
		<li role="presentation" class="active"><a href="#books">Books</a></li>
		<li role="presentation"><a href="#publishers">Publishers</a></li>
		<li role="presentation"><a href="#authors">Authors</a></li>
	</ul>
	<div ng-view class="col-lg-6"></div>

</body>
<script type="text/javascript" src="resources/js/angular.js"></script>
<script type="text/javascript" src="resources/js/angular-resource.js"></script>
<script type="text/javascript" src="resources/js/angular-route.js"></script>
<script type="text/javascript" src="resources/js/app.js"></script>
<script type="text/javascript" src="resources/js/controller.js"></script>
</html>
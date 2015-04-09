<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link href="resources/css/bootstrap.css" rel="stylesheet">
<title>book shop</title>
</head>
<body ng-app="app">
	<div ng-controller="bookController" class="col-lg-6">
		<table class="table table-striped">
			<thead>
				<tr>
					<th>Издатель</th>
					<th>Автор</th>
					<th>Название</th>
					<th>Редактировать</th>
					<th>Удалить</th>
				</tr>
			</thead>
			<tbody>
				<tr ng-repeat="book in books">
					<td>{{book.publisher}}</td>
					<td>{{book.author}}</td>
					<td>{{book.title}}</td>
					<td><span></span></td>
					<td><button type="button" ng-click="removeItem(book)"
							class="btn btn-sm btn-danger">
							<i class="glyphicon glyphicon-remove-circle"> </i>
						</button></td>
				</tr>
			</tbody>
		</table>
	</div>
</body>
<script type="text/javascript" src="resources/js/angular.js"></script>
<script type="text/javascript" src="resources/js/angular-resource.js"></script>
<script type="text/javascript" src="resources/js/app.js"></script>
<script type="text/javascript" src="resources/js/controller.js"></script>
</html>
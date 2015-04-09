var Controllers = angular.module('Controllers', [ 'ngResource' ]);

Controllers.controller('bookController', function($scope, $http, $resource) {
	/*
	 * var req = { method : 'GET', url : 'rest/getAllBooks', headers : {
	 * 'Content-Type' : 'application/json' }, timeout : 5000 }
	 * 
	 * $http(req).success(function(data) { $scope.books = data; });
	 */

	var kek = $resource('rest/getAllBooks');
	$scope.books = kek.query();

	$scope.removeItem = function removeItem(book) {
		var index = $scope.books.indexOf(book);
		if (index !== -1) {
			$scope.books.splice(index, 1);
		}
		;

		var deleteReq = {
			method : 'DELETE',
			url : 'rest/delete/',
			headers : {
				'Content-Type' : 'application/json'
			},
			data : {
				publisher : book.publisher,
				author : book.author,
				title : book.title
			},
			timeout : 5000
		}
		$http(deleteReq).success();
	};

});

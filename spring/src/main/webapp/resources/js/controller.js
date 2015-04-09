var Controllers = angular.module('Controllers', []);

Controllers.controller('bookController', function($scope, $http) {
	var req = {
		method : 'GET',
		url : 'rest/getAllBooks',
		headers : {
			'Content-Type' : 'application/json'
		},
		timeout : 5000
	}

	$http(req).success(function(data) {
		$scope.books = data;
	});

	$scope.removeItem = function removeItem(book) {
		var index = $scope.books.indexOf(book);
		if (index !== -1) {
			$scope.books.splice(index, 1);
		};
		
		var deleteReq = {
			method : 'DELETE',
			url : 'rest/delete/',
			headers : {
				'Content-Type' : 'application/json'
			},
			data : {publisher:"",author:"",title:""},
			timeout : 5000
		}
		
		

	};

});

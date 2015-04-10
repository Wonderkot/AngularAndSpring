var app = angular.module('app', [ 'Controllers', 'ngRoute' ]);

app.config([ '$routeProvider', function($routeProvider) {
	$routeProvider.when('/', {
		templateUrl : 'views/books.jsp',
		controller : 'bookController'
	}).when('/books/', {
		templateUrl : 'views/books.jsp',
		controller : 'bookController'
	}).when('/pulishers/', {
		templateUrl : 'views/pulishers.jsp',
		controller : 'bookController'
	}).when('/authors/', {
		templateUrl : 'views/authors.jsp',
	controller : 'bookController'
})
} ]);
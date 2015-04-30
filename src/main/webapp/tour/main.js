var myApp = angular.module('myApp', ["ngSanitize", "ngAnimate", "ngRoute"]);

myApp.config(function($routeProvider) {

	var event = {
			templateUrl : "event.jsp",
			controller : "eventController"
	};
	var local = {
			templateUrl : "local.jsp",
			controller : "localController"
	};
	var weather = {
			templateUrl : "weather.jsp",
			controller : "weatherController"
	};
	var load = {
			templateUrl : "load.jsp",
			controller : "loadController"
	};
	var login = {
			templateUrl : "login.jsp",
			controller : "loginController"
	};
	var join = {
			templateUrl : "join.jsp",
			controller : "joinController"
	};
	
	$routeProvider.when('/event', event);
	$routeProvider.when('/local', local);
	$routeProvider.when('/weather', weather);
	$routeProvider.when('/load', load);
	$routeProvider.when('/login', login);
	$routeProvider.when('/join', join);
	$routeProvider.otherwise({redirectTo:'/event'});
	
	});
myApp.controller('mainController', function($scope) {
	alert("mainController");
});


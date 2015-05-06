
myApp.controller('localController', function($scope, $http) {
	alert("localController");
	
	$http.get("/TourWeb/m/local/Nature").success(function(city) {
			$scope.locals = city;
			alert(city);
	});
	$scope.click = function(locals) {
		if(locals=="서울"){
			$http.get("/TourWeb/m/local/seoul").success(function(seoul) {
				$scope.locals = seoul;
			});
		}
	};
});


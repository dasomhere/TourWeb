
myApp.controller('localController', function($scope) {
	alert("localController");
			$.ajax({
				type : "GET",
				url  : "/TourWeb/m/local/city?_" + new Date().getTime(),
				dataType : "json",
				success : function(locals) {
					$scope.locals = locals;
					var msg = local;
					alert($scope.locals);
				},	
				error : function(xhr, status, error) {
						alert(status + " : "+ this.url);
				}
			});
});



myApp.controller('localController', function($scope) {
	alert("localController");
	
	$scope.click = function() {
		alert("asdfdf");
		var url = "http://api.visitkorea.or.kr/openapi/service/rest/KorService/areaCode?numOfRows=10&pageNo=1&MobileOS=AND&MobileApp=myxxx&_type=json&ServiceKey=";
		var key = "sA7tgy37XyQzBU2fPZpZw%2BGKNlR0BPdgP2RhAvNrw4ls2so%2F%2BgeLDAT8AHJO6CacIlHvKIfubhwPjiDXpy%2B7%2Fw%3D%3D";
		var openapi = url + key;
			$.ajax({
				
				type : "GET",
				url  : openapi,
				dataType : "json",
				success : function(local) {
					alert("성공");
					$('#output').val(JSON.stringify(local));
				},	
				error : function(xhr, status, error) {
						alert(status);
				}
			});
			
			
	};
});


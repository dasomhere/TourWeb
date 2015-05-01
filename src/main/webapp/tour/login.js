
myApp.controller('loginController', function($scope) {
	$scope.login = function() {
		alert("login()...");
		
		$.ajax({
			type : "POST",
			url  : "/TourWeb/m/login/login",
			dataType : 'json',
			data : {	
				id : $('#id').val(),
				password : $('#password').val()
			},
			contentType: "application/json", 
			success : function(result, status, error) {
//				alert(status +" : "+JSON.stringify(result));
//				if(result.login == true){
//					alert("message = " + result.message);
//				}else
//					alert("emp 추가 실패...");
				alert(JSON.stringify(result) + " : " + status);
			},
				
			error : function(xhr, status, error) {
				alert(status + " " + error +" " +this.url);
			}
		});
	}
	alert("loginController");
});


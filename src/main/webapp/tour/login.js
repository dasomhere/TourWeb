
myApp.controller('loginController', function($scope) {
	$scope.login = function() {
		alert("login()...");
		
		$.ajax({
			type : "POST",
			url  : "/TourWeb/m/login/login",
			dataType : "json",
			data : {	
				id : $('#id').val(),
				name : $('#password').val()
			},
			contentType: "application/json", 
			success : function(result, status, error) {
				alert(JSON.stringify(result) + " : " + status);
				alert(status +" : "+JSON.stringify(result));
				if(result.status == true){
				alert("emp 추가 성공....");
			}else
				alert("emp 추가 실패...")
			},
			error : function(xhr, status) {
				alert(status);
			}
		});
	}
	alert("loginController");
});


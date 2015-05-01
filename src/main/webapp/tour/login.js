
myApp.controller('loginController', function($scope) {
	$scope.login = function() {
		alert("login()...");
		
		$.ajax({
			type : "POST",
			url  : "emp",
			dataType : "json",
//			contentType: "application/charset=utf-8",
			data : {	
				id : $('#id').val(),
				name : $('#post #ename').val()
			},
			success : function(result, status) {
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


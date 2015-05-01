
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
			contentType: "application/json", 
			success : function(result, status, error) {
//				alert(status +" : "+JSON.stringify(result));
//				if(result.login == true){
//					alert("message = " + result.message);
//				}else
//					alert("emp 추가 실패...");
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


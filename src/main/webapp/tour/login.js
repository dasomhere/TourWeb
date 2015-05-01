
myApp.controller('loginController', function($scope, $http) {
	
	$scope.loginResult={};
	
	$scope.login = function() {
		var id=$("#id").val();
		var password=$("#password").val();
		if(id == '') {
			$("#idcheck").html("아이디를 입력하세요.");
			return false;
		}
		if(password == '') {
			$("#idcheck").html("비밀번호를 입력하세요.");
			return false;
		}
		$http.post("/TourWeb/m/login/login", {id : id, password : password}).success(function(loginResult) {
			alert("loginResult = " + JSON.stringify(loginResult));
			$scope.loginResult = loginResult;
			if(loginResult.loginStatus == false) {
				$("#idcheck").html("아이디/비밀번호가 올바르지 않습니다.");
			} else {
				$scope.$parent.loginResult = loginResult;
				location.href="#event";
			}
		}).error(function() {
			alert("login error...");
		});
	};
	$scope.logincheck = function() {
		$http.get("/TourWeb/m/login/logincheck").success(function(loginResult) {
			alert("loginResult = " + JSON.stringify(loginResult));
			$scope.loginResult = loginResult;
			$scope.$parent.loginResult = loginResult;
		}).error(function() {
			alert("logincheck error...");
		});
	};
	
	alert("loginController");
});

//function checkLoginForm() {
//    var id=$("#id").val();//입력된 아이디
//    var password=$("#password").val();
//	if(id == '') {
//		$("#idcheck").html("<font color='red'>아이디를 입력하세요.</font>");
//		return false;
//	} else if(password == '') {
//		$("#idcheck").html("<font color='red'>비밀번호를 입력하세요.</font>");
//		return false;
//	} else {
//    	$("#idcheck").html("<font color='red'>아이디/비밀번호가 올바르지 않습니다.</font>");
//    	return false;
//	}
//}


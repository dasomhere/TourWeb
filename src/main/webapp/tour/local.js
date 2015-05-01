
myApp.controller('localController', function($scope) {
	alert("localController");
	
	$scope.click = function() {
		alert("asdfdf");
			
			$.ajax({
				type : "GET",
				url  : "local,
				success : function(emp, status, xhr) {
						alert(this.url +" : "+ JSON.stringify(emp));
						var msg = "empno = " + emp.empno + "<br>" +
								  "ename = " + emp.ename + "<br>" +
								  "hiredate = " + new Date((emp.hiredate)).toLocaleDateString();
						$('#get #result').html(msg);
				},	
				error : function(xhr, status, error) {
						alert(status);
				}
			});
			
			
	};
});


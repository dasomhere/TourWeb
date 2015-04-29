<%@page import="java.io.InputStream"%>
<%@page import="java.util.Scanner"%>
<%@page import="java.net.URL"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@include file="/WEB-INF/taglib.jspf" %>
<!DOCTYPE html>
<html data-ng-app="myApp">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width; initial-scale=1.0">

<%@ include file="/WEB-INF/common.jspf" %>
 <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
  <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/js/bootstrap.min.js"></script>

<script type="text/javascript">
	var myApp = angular.module('myApp', []);
	myApp.controller('mainController', function($scope) {
		$scope.title = "Main Controller";
	
		$scope.idCheck = function() {
		    var id=$("#id").val();//입력된 아이디
		    $.ajax({
			    url:"/TourWeb/ajax/idcheck.jsp",
			    data:"id="+id, //서버로 전송될 파라미터
			    type:"post", //post 방식으로 요청합니다.
			    dataType:"xml",//응답콘텐츠 타입
			    success:function(data){//응답이 성공하면 function 수행
			    //응답데이터에서 result 태그의 텍스트값 얻어오기
				    var using=$(data).find("result").text();
				    if(using=='true'){
					    //span에 결과 출력하기
					    $("#idcheck").html("<font color='red'>사용중인 아이디 입니다.</font>");
					}else{
						if(id == '')
							$("#idcheck").html("<font color='red'>아이디를 입력하세요.</font>");
						else
					    	$("#idcheck").html("<font color='green'>사용가능한 아이디 입니다.</font>");
					}
				}
		    });
		};
	});
	
	function checkForm() {
		var id=$("#id").val();//입력된 아이디
		var idcheck = false;
	    $.ajax({
		    url:"/TourWeb/ajax/idcheck.jsp",
		    data:"id="+id, //서버로 전송될 파라미터
		    type:"post", //post 방식으로 요청합니다.
		    dataType:"xml",//응답콘텐츠 타입
		    success:function(data){//응답이 성공하면 function 수행
		    //응답데이터에서 result 태그의 텍스트값 얻어오기
			    var using=$(data).find("result").text();
			    if(using=='true'){
				    //span에 결과 출력하기
				    alert('사용중인 아이디 입니다.');
		 			focus.id;
		 			idcheck = true;
		 			return false;
			    }
		    }
	    });
		
	    if(idcheck == true) {
	    	alert('ID 중복확인을 하세요.');
	    	return false;
	    }
	    
		if ($("#id").val() == '') {
			alert('ID를 입력 하세요.');
			focus.id;
			return false;
		}
		if ($("#password").val() == '') {
			alert('비밀번호를 입력 하세요.');
			focus.password;
			return false;
		}
		if ($("#password").val().length < 4 || ($("#password").val().length > 12)) {
			alert('비밀번호를 4자이상, 12자이하로 입력 하세요.');
			focus.password;
			return false;
		}
		if ($("#name").val() == '') {
			alert('이름을 입력 하세요.');
			focus.name;
			return false;
		}
		if ($("#email").val() == '') {
			alert('이메일을 입력 하세요.');
			focus.email;
			return false;
		}
	}
</script>

<title>joinform.jsp</title>
</head>
	
<body data-ng-controller="mainController">
	<div data-role="page">
		<header data-role="header"  data-position="fixed" >
		 	<div data-role="header" style="height: 50px">
    			<a href="http://localhost:8080/TourWeb/m/tour/form" >Home</a>
				<h1>떠 나 yo!</h1>
				<a href="http://localhost:8080/TourWeb/m/tour/login" data-rel="dialog" data-transition="slidedown" >로그인</a>
	
	   			
  			</div>	
		</header>
				
		<section data-role="content" class="container">
			<h3>회원가입</h3>
			기본정보를 모두 입력해 주세요.
			<hr>
			<div	>
				<form action="join" method="post" onsubmit='return checkForm()' name="loginForm">
					<table>
						<tr>
							<td align="right" style="width: 70px;">이름 :&nbsp;</td>
							<td><input type="text" name="name" id="name"/></td>
						</tr>
						<tr>
							<td align="right">아이디 :&nbsp;</td>
							<td><input type="text" name="id" id="id"/></td>
							<td style="padding-left: 10px">
								<input type="button" value="중복확인" data-ng-click="idCheck()" style="width: 70px; height: 30px; font-size: 13px;"/>
							</td>
						</tr>
						<tr><td></td><td colspan="2"><span id="idcheck" class="idchecklabel"></span></td></tr>
						<tr>
							<td align="right">비밀번호 :&nbsp;</td>
							<td><input type="password" name="password" id="password" class="form-control" data-ng-model="password" data-ng-required="true" 
											ng-pattern="/^.{4,12}$/"/></td>
							<td style="padding-left: 10px">
<!-- 								<span style="color: red" data-ng-show="loginForm.password.$error.required"> -->
<!-- 									필수 입력항목입니다. -->
<!-- 								</span> -->
								<span style="color: red" data-ng-show="loginForm.password.$error.required">
								4자이상, 12자이하
								</span>
								<span style="color: red" data-ng-show="loginForm.password.$error.pattern">
								4자이상, 12자이하
								</span>
<!-- 								<span style="color: red" data-ng-show="loginForm.password.$error.maxlength"> -->
<!-- 								4자이상, 12자이하 -->
<!-- 								</span> -->
							</td>
						</tr>
						<tr>
							<td align="right">이메일 :&nbsp;</td>
							<td><input type="email" name="email" id="email"/></td>
						</tr>
	
					</table>
					<hr>
					<div align="center">
						<input class="btn btn-info btn-lg" type="submit" value="회원가입" />
					</div>
				</form>
			</div>
		</section>
		
		<footer data-role="footer">
			<h1>Footer</h1>
		</footer>
	</div>
	
</body>
</html>
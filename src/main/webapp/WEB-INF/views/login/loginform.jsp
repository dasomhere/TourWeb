<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@include file="/WEB-INF/taglib.jspf" %>

<section class="container">
	<hr>
	<div>
		<form action="login" method="post" onsubmit='return checkForm()'>
			<div align="center">
			<table>
				<tr>
					<td align="right">&nbsp; &nbsp; &nbsp;아이디 &nbsp; &nbsp;</td>
					<td><input type="text" name="id" id="id"/></td>
				</tr>
				<tr>
					<td align="right">비밀번호 &nbsp;</td>
					<td><input type="password" name="password" id="password"/></td>
				</tr>
				<tr><td></td><td><span id="idcheck" class="idchecklabel"></span></td></tr>
			</table>
			</div>
			<br>
			<div align="center">
				<button type="submit" class="btn btn-default">로그인</button>
			</div>
			<hr>
			<div align="center">
				<button type="button" class="btn btn-default">아이디/비밀번호 찾기</button>
				<a href="#join" class="btn btn-default">회원가입</a>
=======
	pageEncoding="UTF-8"%>
<%@include file="/WEB-INF/taglib.jspf"%>
<!DOCTYPE html>
<html data-ng-app="myApp">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width; initial-scale=1.0">

<%@ include file="/WEB-INF/common.jspf"%>
<link rel="stylesheet"	href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/css/bootstrap.min.css">
<script	src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
<script	src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/js/bootstrap.min.js"></script>

<script type="text/javascript">
	var myApp = angular.module('myApp', []);
	myApp.controller('mainController', function($scope) {
		$scope.title = "Main Controller";
		
		
		
	});
	
	function checkForm() {
		var idcheck = true;
	    var id=$("#id").val();//입력된 아이디
	    var password=$("#password").val();
	    $.ajax({
		    url:"/TourWeb/ajax/login.jsp",
		    data: {id:id, password:password},//서버로 전송될 파라미터
		    type:"post", //post 방식으로 요청합니다.
		    dataType:"xml",//응답콘텐츠 타입
		    async: false,
		    success:function(data){//응답이 성공하면 function 수행
		    //응답데이터에서 result 태그의 텍스트값 얻어오기
			    var using=$(data).find("result").text();
			    if(using=='false'){
					if(id == '') {
						$("#idcheck").html("<font color='red'>아이디를 입력하세요.</font>");
						idcheck=false;
					} else if(password == '') {
						$("#idcheck").html("<font color='red'>비밀번호를 입력하세요.</font>");
						idcheck=false;
					} else {
				    	$("#idcheck").html("<font color='red'>아이디/비밀번호가 올바르지 않습니다.</font>");
						idcheck=false;
					}
				}
			}
	    });

		if(!idcheck) {
		    return idcheck;
	    }
	}

	$(function() {
		$('#modal').modal(toggle)
	});
</script>

<title>loginform.jsp</title>

</head>

<body data-ng-controller="mainController">
	<div data-role="page" >
		<header data-role="header"  data-position="fixed" >
		 	<div data-role="header" style="height: 50px">
    			<a href="http://localhost:8080/TourWeb/m/tour/form" >Home</a>
				<h1>떠 나 yo!</h1>
  			</div>
			
		</header>

		<section data-role="content" class="container">
			<div>
				<form action="login" method="post" onsubmit='return checkForm()'>
					<table>
						<tr>
							<td align="right">&nbsp; &nbsp; &nbsp;아이디 &nbsp; &nbsp;</td>
							<td><input type="text" name="id" id="id"/></td>
						</tr>
						<tr>
							<td align="right">비밀번호 &nbsp;</td>
							<td><input type="password" name="password" id="password"/></td>
						</tr>
						<tr><td></td><td><span id="idcheck" class="idchecklabel"></span></td></tr>
					</table>
					<br>
					<div align="center">
						<button type="submit">로그인</button>
					</div>
					<hr>
					<div align="center">
						<button type="button">아이디/비밀번호 찾기</button>
						<a class="ui-btn" href="http://localhost:8080/TourWeb/m/tour/join" data-transition="slideup" >회원가입</a>
						

					</div>
				</form>
			</div>
		</form>
	</div>
</section>

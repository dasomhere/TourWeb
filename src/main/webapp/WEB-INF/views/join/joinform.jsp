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
	});
	
	function idCheck() {
		var id = document.getElementById("id").value;
	    var queryString = "command=idcheck&id="+id;
	    if(id.length<6){
	        document.getElementById("idcheckLayer").innerHTML = "<font color=red>6자리 이상 입력하세요.</font>";     
	    }else{
	        // 1. XMLHttpReqeust 객체 생성
	        createXhr();
	        // 2. 이벤트 핸들러 등록
	        xhr.onreadystatechange = callback;  // callback 함수를 등록
	        // 3. open()를 통해 요청관련 설정을 설정
	        xhr.open("POST", "/javascript_ajax_class/AjaxServlet", true);
	        // 4. Header에 contentType 지정 - post
	        xhr.setRequestHeader("Content-Type", "application/x-www-form-urlencoded");
	        // 5. send()를 통해 요청
	        xhr.send(queryString);  // 요청 쿼리를 보내준다.
	    }
	    alert("idcheck()...");
	};
</script>

<title>joinform.jsp</title>
</head>
	
<body data-ng-controller="mainController">
	<div data-role="page">
		<header data-role="header"  data-position="fixed" >
		 	<div data-role="header" style="height: 50px">
    			<a href="http://localhost:8080/TourWeb/m/tour/form" >Home</a>
				<h1 class="font">떠 나 yo!</h1>

	   			<button class="btn btn-info btn-lg" data-toggle="modal" data-target="#myModal">로그인</button>
  			</div>
		</header>
				
		<section data-role="content" class="container">
			<h3>회원가입</h3>
			기본정보를 모두 입력해 주세요.
			<hr>
			<div>
				<form action="join" method="post">
					<table>
						<tr>
							<td align="right">이름 :&nbsp;</td>
							<td><input type="text" name="name"/></td>
						</tr>
						<tr>
							<td align="right">아이디 :&nbsp;</td>
							<td><input type="text" name="id"/></td>
							<td style="padding-left: 10px">
								<input type="button" value="중복확인" onclick="idCheck()" style="width: 80px; height: 40px; font-size: 13px;"/>
<!-- 								<button style="width: 80px; height: 40px; font-size: 13px;">중복확인</button> -->
							</td>
						</tr>
						<tr>
							<span id = "idcheckLayer"></span>
						</tr>
						<tr>
							<td align="right">비밀번호 :&nbsp;</td>
							<td><input type="password" name="password"/></td>
						</tr>
						<tr>
							<td align="right">이메일 :&nbsp;</td>
							<td><input type="email" name="email"/></td>
						</tr>
	
					</table>
					<hr>
					<div align="center">
						<input class="btn btn-info btn-lg" data-toggle="modal" type="submit" value="회원가입" />
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
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
</script>
<style type="text/css">
	.font{
		font-size: 300;
		color: blue;
	}
</style>
<title>joinform.jsp</title>
</head>
	
<body data-ng-controller="mainController">
	<div data-role="page">
		<header data-role="header"  data-position="fixed" >
		 	<div data-role="header" style="height: 50px">
    			<a href="http://localhost:8080/TourWeb/m/tour/form" >Home</a>
				<h1 class="font">떠 나 yo!</h1>

  			</div>
		</header>
				
		<section data-role="content" class="container">
			<div>
				<form action="/login" method="post">
					<table>
						<tr>
							<td align="right"> &nbsp; &nbsp; &nbsp;아이디   &nbsp; &nbsp;</td>
							<td><input type="text" name="id"/></td>
						</tr>
						<tr>
							<td align="right">비밀번호  &nbsp;</td>
							<td><input type="password" name="password"/></td>
						</tr>
					</table>
					<br>
					<div align="center">
						<button type="button">로그인</button>
						</div>
						<hr>
						<div align="center">
						<button type="button">아이디/비밀번호 찾기</button>
						<button type="button">회원가입</button>
						
						
					</div>
				</form>
			</div>
		</section>
		
	
	</div>
	
</body>
</html>
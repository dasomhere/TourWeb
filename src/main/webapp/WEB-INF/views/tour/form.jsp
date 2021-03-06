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
	
	$(function () {
		   $('#modal').modal(toggle)
	});
	$('yourmodalselector').on('hide',function(e){
		   if(yourConditionNotToCloseMet){
		      e.preventDefault();
		   }
		   $(".btn-warning").click();
		});

</script>
<title>form.jsp</title>
</head>
	
<body data-ng-controller="mainController">
	<div data-role="page">
		<header data-role="header"  data-position="fixed" >
		 	<div data-role="header" style="height: 50px">
    			<a href="http://localhost:8080/TourWeb/m/tour/form" >Home</a>
				<h1>떠 나 yo!</h1>
				<a href="http://localhost:8080/TourWeb/m/tour/login" data-rel="dialog" data-transition="slidedown" >로그인</a>
	
	   			
  			</div>
			<div data-role="navbar">
				<ul>
					<li><a href="#" class="ui-btn-active">행사</a></li>
					<li><a href="localform.jsp" >지역</a></li>
					<li><a href="http://localhost:8080/TourWeb/m/tour/weather" >날씨</a></li>
					<li><a href="http://localhost:8080/TourWeb/m/tour/load" >길찾기</a></li>
				</ul>
			</div>
		</header>
				
		<section data-role="content" class="container">
			<h1>event</h1>
		</section>
		<footer data-role="footer">
			<h1>Footer</h1>
		</footer>
	</div>
	
	
		
</body>
</html>
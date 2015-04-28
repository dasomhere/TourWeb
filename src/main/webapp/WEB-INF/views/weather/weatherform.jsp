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

<script type="text/javascript">
	var myApp = angular.module('myApp', []);
	myApp.controller('mainController', function($scope) {
		$scope.title = "Main Controller";
			
	});
</script>

<title>weatherform.jsp</title>

<style type="text/css">

 	@import url(http://fonts.googleapis.com/earlyaccess/nanumgothic.css);
 	@font-family {
 		font-family : 'Nanum Gothic', serif;
 	}
 	* {
 		font-family : 'Nanum Gothic';
 	}
	
	
</style>

</head>



<body data-ng-controller="mainController">
	<div data-role="page">
		<header data-role="header"  data-position="fixed" >
		 	<div data-role="header" style="height: 50px">
    			<a href="http://localhost:8080/TourWeb/m/tour/form" >Home</a>
				<h1>떠 나 yo!</h1>
	   			<button class="btn btn-info btn-lg" data-toggle="modal" data-target="#myModal">로그인</button>
  			</div>
			<div data-role="navbar">
				<ul>
					<li><a href="http://localhost:8080/TourWeb/m/tour/form">행사</a></li>
					<li><a href="http://localhost:8080/TourWeb/m/tour/local" >지역</a></li>
					<li><a href="#" class="ui-btn-active" >날씨</a></li>
					<li><a href="http://localhost:8080/TourWeb/m/tour/load" >길찾기</a></li>
				</ul>
			</div>
		</header>
				
		<section data-role="content" class="container">
			<h1>weather</h1>
		</section>
		<footer data-role="footer">
			<h1>Footer</h1>
		</footer>
	</div>	


</body>
</html>
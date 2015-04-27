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
		};
	});
</script>
<style type="text/css">
	.font{
		font-size: 300;
		color: blue;
	}
</style>
<title>asjdlfjsalf</title>
</head>
	
<body data-ng-controller="mainController">
	<div data-role="page">
		<header data-role="header"  data-position="fixed" >
		 	<div data-role="header" style="height: 50px">
    			<a href="#" class="ui-btn ui-corner-all ui-shadow ui-icon-home ui-btn-icon-left">home</a>
				<h1 class="font">떠 나 yo!</h1>
	   			<a href="#" class="ui-btn ui-icon-search ui-btn-icon-left">검색</a>
  			</div>
			<div data-role="navbar">
				<ul>
					<li><a href="/TourWeb/navbar/local.jsp">행사</a></li>
					<li><a href="#" >관광지</a></li>
					<li><a href="#" >지역</a></li>
					<li><a href="#" >지도</a></li>
				</ul>
			</div>
		</header>
				
		<section data-role="content" class="container">
			<h1>content</h1>
		</section>
		<footer data-role="footer">
			<h1>Footer</h1>
		</footer>
	</div>	
</body>
</html>
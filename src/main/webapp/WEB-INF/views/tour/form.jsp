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

<link rel="stylesheet" href="/TourWeb/bootstrap-3.3.4/css/bootstrap.min.css"/>
<script type="text/javascript" src="/TourWeb/http://maps.google.com/maps/api/js"></script>
<!-- <script type="text/javascript" src="/TourWeb/jquery/jquery-2.1.3.min.js"></script> -->
<script type="text/javascript" src="/TourWeb/bootstrap-3.3.4/js/bootstrap.min.js"></script>
<script type="text/javascript" src="/TourWeb/angular-1.3.15/angular.min.js"></script>
<script type="text/javascript" src="/TourWeb/angular-1.3.15/angular-sanitize.min.js"></script>
<script type="text/javascript" src="/TourWeb/angular-1.3.15/ng-map.min.js"></script>

<script type="text/javascript">
	var myApp = angular.module('myApp', []);
	myApp.controller('mainController', function($scope) {
		$scope.title = "Main Controller";
			
	};
</script>

<title>asjdlfjsalf</title>
</head>



<body data-ng-controller="mainController">
	<h1>{{title}}</h1>
	asfksdf




</body>
</html>
<%@page import="java.io.InputStream"%>
<%@page import="java.util.Scanner"%>
<%@page import="java.net.URL"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@include file="/WEB-INF/taglib.jspf" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html data-ng-app="myApp">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width; initial-scale=1.0">

<%@ include file="/WEB-INF/common.jspf" %>
<!--  <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/css/bootstrap.min.css"> -->
<!--   <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script> -->
<!--   <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/js/bootstrap.min.js"></script> -->

<link rel="stylesheet" href="/TourWeb/bootstrap-3.3.4/css/bootstrap.min.css"/>

<c:url var="jquery" value="/jquery/"/>
<c:url var="bootstrap" value="/bootstrap-3.3.4/"/>
<c:url var="angular" value="/angular-1.3.15/"/>

<script type="text/javascript" src="${jquery}/jquery-2.1.3.min.js"></script>

<script type="text/javascript" src="${bootstrap}/js/bootstrap.min.js"></script>

<script type="text/javascript" src="${angular}/angular.min.js"></script>
<script type="text/javascript" src="${angular}/angular-sanitize.min.js"></script>
<script type="text/javascript" src="${angular}/angular-animate.min.js"></script>
<script type="text/javascript" src="${angular}/angular-route.min.js"></script>

<style type="text/css">
  .navbar-brand-centered {
        position: absolute;
        left: 50%;
        display: block;
        width: 160px;
        text-align: center;
        background-color: #eee;
    }
    .navbar>.container .navbar-brand-centered, 
    .navbar>.container-fluid .navbar-brand-centered {
        margin-left: -80px;
    }
</style>
<script type="text/javascript" src="main.js"></script>
<script type="text/javascript" src="event.js"></script>
<script type="text/javascript" src="join.js"></script>
<script type="text/javascript" src="load.js"></script>
<script type="text/javascript" src="local.js"></script>
<script type="text/javascript" src="login.js"></script>
<script type="text/javascript" src="weather.js"></script>

<title>main.jsp</title>
</head>
	
<body data-ng-controller="mainController">
	<div class="container">
		<div align="center"><a href="#event">TourWeb</a>
			<a href="#login" class="btn btn-default pull-right" data-ng-if="loginResult.loginStatus==null || loginResult.loginStatus==false">
				<span class="glyphicon glyphicon-log-in"></span>&nbsp;Login</a>
			<div class="pull-right" data-ng-if="loginResult.loginStatus==true">id : {{loginResult.user.id}}&nbsp;
				<a data-ng-click="logout()" class="btn btn-default" data-ng-if="loginResult.loginStatus==true">
					<span class="glyphicon glyphicon-log-in"></span>&nbsp;Logout</a>
			</div>
		</div>
		
		<div class="navbar-mobile btn-group btn-group-justified">
				<a href="#event" class="btn btn-default">event</a>
				<a href="#local" class="btn btn-default">local</a>
				<a href="#weather" class="btn btn-default">weather</a>
				<a href="#load" class="btn btn-default">load</a>
		</div>
	</div>
	<ng-view>
	</ng-view>
		
</body>
</html>
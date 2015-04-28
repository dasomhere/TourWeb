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
	@import url(http://fonts.googleapis.com/earlyaccess/nanumgothic.css);
	@font-face {
    font-family: 'Nanum Gothic', serif;
	}
	body {
	  font-family: 'Nanum Gothic';
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

	   			<button class="btn btn-info btn-lg" data-toggle="modal" data-target="#myModal">로그인</button>
  			</div>
		</header>
				
		<section data-role="content" class="container">
			<h3>회원가입 성공</h3>
		</section>
		
		<footer data-role="footer">
			<h1>Footer</h1>
		</footer>
	</div>
	
	  <!-- Modal -->
	  <div class="modal fade" id="myModal" role="dialog">
	    <div class="modal-dialog">
	    
	      <!-- Modal content-->
	      <div class="modal-content">
	        <div class="modal-header">
	          <button type="button" class="close" data-dismiss="modal">&times;</button>
	          <h4 class="modal-title">로그인</h4>
	        </div>
	        <div class="modal-body">
	        
			<form class="form-horizontal" role="form">
			     <div class="form-group">
			      <label class="control-label col-sm-2" for="id">아이디</label>
			      <div class="col-sm-10">          
			        <input type="text" class="form-control" id="id" placeholder="아이디를 입력해주세요">
			      </div>
			    </div>
			    <div class="form-group">
			      <label class="control-label col-sm-2" for="pwd">비밀번호</label>
			      <div class="col-sm-10">          
			        <input type="password" class="form-control" id="pwd" placeholder="비밀번호를 입력해주세요">
			      </div>
			    </div>
			    <div class="form-group">        
			      <div class="col-sm-offset-2 col-sm-10">
			        <button type="button" class="btn btn-default" >로그인</button>
			      </div>
			    </div>
			  </form>
	        </div>
	        <div class="modal-footer">
	          <button type="button" class="btn btn-default" >아이디/비밀번호 찾기</button>
	          <button type="button" class="btn btn-default" >회원가입</button>
	        </div>
	      </div>
	      
	    </div>
	  </div>
		
</body>
</html>
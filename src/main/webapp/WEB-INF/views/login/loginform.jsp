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
<<<<<<< HEAD
	
	$(function () {
		   $('#modal').modal(toggle)
		});


</script>
<style type="text/css">
</style>
<title>asjdlfjsalf</title>
=======
</script>
<style type="text/css">
	.font{
		font-size: 300;
		color: blue;
	}
</style>
<title>joinform.jsp</title>
>>>>>>> a26b53e61d316038e57c48bd516b42145ac7e1f4
</head>
	
<body data-ng-controller="mainController">
	<div data-role="page">
		<header data-role="header"  data-position="fixed" >
		 	<div data-role="header" style="height: 50px">
    			<a href="http://localhost:8080/TourWeb/m/tour/form" >Home</a>
				<h1 class="font">떠 나 yo!</h1>

<<<<<<< HEAD
	   			<button class="btn btn-info btn-lg" data-toggle="modal" data-target="#myModal" style="text-align: center;">로그인</button>
	
	   			
  			</div>
			<div data-role="navbar">
				<ul>
					<li><a href="#" class="ui-btn-active">행사</a></li>
					<li><a href="http://localhost:8080/TourWeb/m/tour/local" >지역</a></li>
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

			<form class="form-horizontal" role="form" action="" method="post">
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
			      <div class="col-sm-offset-10 col-sm-10">
			        <button type="button" class="btn btn-default">로그인</button>
			      </div>
			    </div>
			  </form>
	        </div>
	        <div class="modal-footer">
	          <button type="button" class="btn btn-default" >아이디/비밀번호 찾기</button>
	          <a href="http://localhost:8080/TourWeb/m/tour/join">회원가입</a>
	        </div>
	      </div>
	      
	    </div>
	  </div>
		
=======
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
	
>>>>>>> a26b53e61d316038e57c48bd516b42145ac7e1f4
</body>
</html>
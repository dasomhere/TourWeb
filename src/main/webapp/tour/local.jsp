<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@include file="/WEB-INF/taglib.jspf" %>

<section class="container">
	<h1>local</h1>
	<input type="button" data-ng-click="click()" value="클릭"/>
	<div>
		<textarea rows="10" cols="50" id="output"></textarea>
		<ul>
			<li data-ng-repeat="l in local">{{l.name}}</li>
		</ul>
	</div>
</section>
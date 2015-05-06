<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%-- <%@include file="/WEB-INF/taglib.jspf" %> --%>

<section class="container">
	<h1>서울시</h1>
	
	<div>
		<ul class="list-group">
			<li class="list-group-item" data-ng-repeat="local in locals" data-ng-click="click(local)" id="local">
				{{local}}
			</li>
		</ul>
	</div>
</section>	
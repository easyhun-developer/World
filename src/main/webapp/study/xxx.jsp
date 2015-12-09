<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" session="false" trimDirectiveWhitespaces="true"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>    
<!DOCTYPE html>
<html lang="ko" data-ng-app="WorldApp">
<head>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta charset="UTF-8">
<%@ include file="/common.jspf" %>
<title>template.jsp</title>
<script type="text/javascript">
	var deps = ['ngRoute',
	            'ngAnimate',
	            'ngTouch',
	            'angular-loading-bar'
	            ];

	var app = angular.module("WorldApp", deps);
	
	app.controller("mainController", function($scope, $http) {
		console.log("mainController...");
		
		$scope.title = "XXX";
		
	});
	
</script>
</head>
<body data-ng-controller="mainController" class="container">
<h1><a href="#" class="btn btn-primary">{{title}}</a></h1>
<button class="btn btn-success">xxx</button>

<a class="btn btn-primary" href="#">list...</a>
<div class="panel panel-default">
	<div class="panel-heading">메뉴입력</div>
	<div class="panel-body">
	<form>
	<!-- Name -->
	<div class="form-group">
	<label for="menu">Menu : </label>
	<input	id="menu"
			type="text"
			class="form-control"/>
	</div>
	<!-- CountryCode -->
	<div class="form-group">
	<label for="pay">pay : </label>
	<input	id="pay"
			type="text"
			class="form-control"/>
	</div>
	<!-- District -->
	<div class="form-group">
	<label for="district">District : </label>
	<input	id="district"
			type="text"
			class="form-control"/>
	</div>
	<!-- Population -->
	<div class="form-group">
	<label for="population">Population : </label>
	<input	id="population"
			type="number"
			class="form-control"/>
	</div>
	
	<!-- Submit -->
	<div class="form-group">
	<input	type="submit"
			value="확인"
			class="btn btn-primary"/> <!-- form-control을 btn앞에 넣을경우 전체공간차지를한다 -->
	</div>
	</form>
	</div>
</div>
</body>
</html>
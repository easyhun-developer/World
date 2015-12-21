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
<title>fontawesome.jsp</title>
<script type="text/javascript">
	var deps = ['ngRoute',
	            'ngAnimate',
	            'ngTouch',
	            'angular-loading-bar'
	            ];

	var app = angular.module("WorldApp", deps);
	
	app.controller("mainController", function($scope, $http) {
		console.log("mainController...");
		
		$scope.title = "Font Awesome Example";
		
	});
	
</script>
</head>
<body data-ng-controller="mainController" class="container">
<h1><a href="#" class="btn btn-primary">{{title}}</a></h1>

<div><i class="fa fa-camera-retro fa-lg"></i>fa-lg</div>
<div><i class="fa fa-camera-retro fa-2x"></i>fa-2x</div>
<div><i class="fa fa-camera-retro fa-3x fa-spin"></i>fa-3x</div>
<div><i class="fa fa-camera-retro fa-4x"></i>fa-4x</div>
<div><i class="fa fa-camera-retro fa-5x"></i>fa-5x</div>

</body>
</html>
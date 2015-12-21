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
<title>metismenu.jsp</title>
<script type="text/javascript">
	var deps = ['ngRoute',
	            'ngAnimate',
	            'ngTouch',
	            'angular-loading-bar'
	            ];

	var app = angular.module("WorldApp", deps);
	
	app.controller("mainController", function($scope, $http) {
		console.log("mainController...");
		
		$scope.title = "Metis Menu Example";
		
		$("#menu").metisMenu({
		toggle: false
	})
});
</script>
<style type="text/css">
	.font-size{
		font-size: 10px;
		color: red;
	}
	
	@media (min-width:768px){
		.font-size{
			font-size: 20px;
		}
	}
</style>
</head>
<body data-ng-controller="mainController" class="container">
<h1><a href="" class="btn btn-primary font-size">{{title}}</a></h1>

<ul class="metismenu" id="menu">
  <li class="active">
    <a href="">Menu 1</a>
    <ul class="fa-ul">
    	<li><i class="fa-li fa fa-camera-retro fa-fw"></i>City1</li>
    	<li><i class="fa-li fa fa-camera-retro fa-fw"></i>City2</li>
    	<li><i class="fa-li fa fa-camera-retro fa-fw"></i>City3</li>
    </ul>
  </li>
    <li class="active">
    <a href="">Menu 2</a>
    <ul>
    	<li><i class="fa fa-camera-retro fa-fw" style="color: red"></i>Country1</li>
    	<li><i class="fa fa-thumbs-o-up fa-fw" style="color: blue"></i>Country2</li>
    	<li><i class="fa fa-inbox fa-fw" style="color: green"></i>Country3</li>
    </ul>
  </li>
  </ul>
  
</body>
</html>
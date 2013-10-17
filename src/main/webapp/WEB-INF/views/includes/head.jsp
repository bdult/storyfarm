<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt" %>

<!DOCTYPE HTML>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<meta http-equiv="X-UA-Compatible" content="IE=Edge"/>
<title>Oz world</title>

<c:set var="contextPath" value="${pageContext.request.contextPath}" scope="request"/>

<!-- JQUERY 1.10 -->
<script src="${ contextPath }/assets/js/jquery.min.js"></script>
<script src="${ contextPath }/assets/js/unho.js"></script>
<!-- BOOTSTRAP 3.0 -->
<script src="${ contextPath }/assets/js/bootstrap.min.js"></script>

<script src="${ contextPath }/assets/js/Publish.js"></script>
<!-- AWESOME FONT 3.2.1 -->
<link href="http://netdna.bootstrapcdn.com/font-awesome/3.2.1/css/font-awesome.css" rel="stylesheet">

<link rel="stylesheet" href="${ contextPath }/assets/css/bootstrap.min.css">
<link rel="stylesheet" href="${ contextPath }/assets/css/common.css">

<style>
div.container {
	max-width: 1037px;
	padding: 10px 0;
}
</style>
</head>
<body>

<!-- divAccessibility -->
<div id="divAccessibility">
    <a href="#gnb">메뉴 바로가기</a>
    <a href="#divContents">본문 바로가기(skip to content)</a>    
</div>
<!-- //divAccessibility -->

<div id="divWrapper">

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
    
<div class="row">
	<div class="col-md-8">
		{ 콘텐츠 제목 }
	</div>			
	<div class="col-md-4 text-right">
		<button class="btn btn-default btn-xs">목록보기</button>
		<button class="btn btn-default btn-xs">반복보기</button>
		<button class="btn btn-default btn-xs">닫기</button>
	</div>			
</div>

<br />

<div class="row">
	<div class="col-md-12">
		<video width="100%" height="100%" controls poster="${contents.IMG_PATH}">
			<source src="http://pcms.bigstarglobal.com/storyfarm/source/movie/85/01.mp4" type="video/mp4">
			video 요소를 지원하지 않는 브라우저입니다.
		</video>
	</div>
</div>
<script>

$(function() {
	var api = flowplayer();
	
	/*
	api.bind("pause", function() {
		var jqxhr = $.ajax( "http://localhost:9090/children/stat.do" )
	    .done(function() { alert("success"); })
	    .fail(function() { alert("error"); })
	    .always(function() { alert("complete"); });
	});
	*/
});
</script>
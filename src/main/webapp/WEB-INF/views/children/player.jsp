<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
    
<div class="row">
	<div class="col-md-12">
		<div class="well">플레이어</div>
	</div>
</div>

<div class="row">
	<div class="col-lg-12">
		<div id="01" class="flowplayer" data-swf="player/flowplayer.swf" >
			<video>
				<source type="video/mp4" src="${movie.SRC_PATH}">
			</video>
		</div>
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
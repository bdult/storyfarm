<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<script src="js/flowplayer/flowplayer.min.js"></script>

<script type="text/javascript">
	$(function(){
		/*
		
		var contentsList = "${contentsList}";
		contentsList = JSON.parse(contentsList);
		
		var $player = document.getElementById("player");
		var $status = document.getElementById("status");
		var $load = document.getElementById("load");
		var $time = document.getElementById("time");
		
		$player.addEventListener("timeupdate", function(){
		   $time.innerHTML = Math.floor($player.currentTime) + "/" + Math.floor($player.duration) + " (초)";
		   }, false);
	
		$player.addEventListener("play", function(){
			$status.innerHTML = "재생진입";
		   }, false);
	
		$player.addEventListener("playing", function(){
			$status.innerHTML = "재생시작";
			}, false);
	
		$player.addEventListener("ended", function(){
			$status.innerHTML = "재생종료";
			$.each(contentsList, function(data){
				$player.setAttribute("src", data.contents);
				$player.start();
				});
			}, false);
	
	
		$player.addEventListener("load", function(){
			$load.innerHTML = "데이터 다운로드완료";
			}, false);
		
		*/
	});

</script>

<h3>${ contents.CONTENTS_NM }</h3>

<hr />

<div class="row">
	<div class="col-md-9">
		<c:choose>
			<c:when test="${contents.PLAYER_TYPE == 'vimeo'}">
				<iframe src="http://115.71.237.215/ozworld/${ contents.SRC_PATH }?color=ffffff"
					width="720" height="405" frameborder="0" webkitallowfullscreen
					mozallowfullscreen allowfullscreen></iframe>
			</c:when>
			<c:otherwise>
				<div class="row">
					<div class="col-lg-12">
						<video id="player" width="850" height="500" controls poster="http://115.71.237.215/ozworld/${contents.IMG_PATH}">
						<!-- 
						  <source src="http://115.71.237.215/ozworld/${contents.SRC_PATH}" type="video/mp4">
						 -->
						  <source src="http://115.71.237.215/ozworld/source/movie/85/61.mp4" type="video/mp4">
							video 요소를 지원하지 않는 브라우저입니다.
						</video>
						<!-- 
						<div id="01" class="flowplayer" data-swf="player/flowplayer.swf" >
							<video>
								<source type="video/mp4" src="${contents.SRC_PATH}">
							</video>
						</div>
						 -->
					</div>			
				</div>
			</c:otherwise>
		</c:choose>
		<!-- 
		<span>진행시간 : </span><span id="time"></span>
 		<br/><br/>
		<span>현재상태 : </span><span id="status"></span>
 		<br/><br/>
 		<hr />데이터 로드관련<hr />
		 <span>load : </span><span id="load"></span>
		 <br/><br/>
		 -->
	</div>
	<div class="col-md-3">
		<div class="well">${ contents.CONTENTS_DESC }</div>
		<div class="well">${ contents.LEARNING_DESC }</div>
	</div>
</div>
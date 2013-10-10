<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<script src="js/flowplayer/flowplayer.min.js"></script>

<h3>${ contents.CONTENTS_NM }</h3>

<hr />

<div class="row">
	<div class="col-md-9">
		<c:choose>
			<c:when test="${contents.PLAYER_TYPE == 'vimeo'}">
				<iframe src="${ contents.SRC_PATH }?color=ffffff"
					width="720" height="405" frameborder="0" webkitallowfullscreen
					mozallowfullscreen allowfullscreen></iframe>
			</c:when>
			<c:otherwise>
				<video width="100%" height="100%" controls poster="${contents.IMG_PATH}">
				  <source src="${contents.SRC_PATH}" type="video/mp4">
					video 요소를 지원하지 않는 브라우저입니다.
				</video>
				<!-- 
				<div id="01" class="flowplayer" data-swf="player/flowplayer.swf" >
					<video>
						<source type="video/mp4" src="${contents.SRC_PATH}">
					</video>
				</div>
				 -->
			</c:otherwise>
		</c:choose>
	</div>
	<div class="col-md-3">
		<div class="well">${ contents.CONTENTS_DESC }</div>
		<div class="well">${ contents.LEARNING_DESC }</div>
	</div>
</div>
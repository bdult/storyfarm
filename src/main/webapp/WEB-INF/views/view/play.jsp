<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<h3>${ contents.CONTENTS_NM }</h3>

<hr />

<div class="row">
	<div class="col-md-9">
		<div class="row">
			<div class="col-lg-12">
				<video id="player" width="850" height="500" controls poster="http://115.71.237.215/${contents.IMG_PATH}">
				<!-- 
				  <source src="http://115.71.237.215/${contents.SRC_PATH}" type="video/mp4">
				 -->
				  <source src="streamString.do" >
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
	</div>
	<div class="col-md-3">
		<div class="well">${ contents.CONTENTS_DESC }</div>
		<div class="well">${ contents.LEARNING_DESC }</div>
	</div>
</div>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<h3>${detail.CONTENTS_NM }</h3>

<hr />

<div class="row">
	<div class="col-md-9">
		<c:if test="${detail.PLAYER_TYPE == 'vimeo'}">
		${detail.SRC_PATH }
		</c:if>
	</div>
	<div class="col-md-3">
		<div class="well">${detail.CONTENTS_DESC }</div>
		<div class="well">${detail.LEARNING_DESC }</div>
	</div>
</div>
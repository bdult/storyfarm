<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<div class="row">
	<div class="col-lg-12 text-center">
		<h3>1:1 문의 글 작성</h3>
	</div>
</div>

<div class="well">
	<div class="row">
		<form class="form-horizontal" method="post" action="${ contextPath }/mypage/boardCreate.do">
			<input type="hidden" name="board_id" value="${ board_id }">
			<input type="hidden" name="member_id" value="${ login_session.MEMBER_ID }">
			<div class="form-group">
				<label class="col-lg-2 control-label">제목 : </label>
				<div class="col-lg-10">
					<input type="text" name="title" class="form-control">
				</div>
			</div>
			<div class="form-group">
				<label class="col-lg-2 control-label">내용 : </label>
				<div class="col-lg-10">
					<textarea name="contents" class="form-control" rows="10"></textarea>
				</div>
			</div>
			<div class="form-group">
				<div class="col-lg-12 text-center">
					<button class="btn btn-primary">글 작성</button>
					<a class="btn btn-default">목록으로</a>
				</div>
			</div>
		</form>
	</div>
</div>
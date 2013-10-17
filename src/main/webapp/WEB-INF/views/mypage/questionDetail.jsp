<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<div class="row">
	<div class="col-lg-12">
		<ul>
			<li><a href="#">${ userInfoSession.MEMBER_ID }</a>님의 1:1 문의내역 입니다.</li>
		</ul>
	</div>
</div>

<div class="row">
	<div class="col-lg-12">
		<table class="table">
			<tr>
				<td class="col-lg-4">제목</td>
				<td class="col-lg-8">${ writing.TITLE }</td>
			</tr>
			<tr>
				<td class="col-lg-4">작성자</td>
				<td class="col-lg-8">${ writing.MEMBER_ID }</td>
			</tr>
			<tr>
				<td class="col-lg-4">작성일시</td>
				<td class="col-lg-8">${ writing.MOD_DT }</td>
			</tr>
			<tr>
				<td class="col-lg-4">내용</td>
				<td class="col-lg-8">${ writing.CONTENTS }</td>
			</tr>
			<c:choose>
				<c:when test="${ detailComments != '[]' }">
					<c:forEach var="comments" items="${ detailComments }">
						<tr>
							<td class="col-lg-4">답변내역</td>
							<td class="col-lg-8">${ comments.COMMENT }</td>
						</tr>
						<tr>
							<td class="col-lg-4">답변일시</td>
							<td class="col-lg-8">${ comments.MOD_DT }</td>
						</tr>
						<tr>
							<td class="col-lg-4">답변자</td>
							<td class="col-lg-8">${ comments.MEMBER_ID }</td>
						</tr>
					</c:forEach>
				</c:when>
				<c:otherwise>
					<tr>
						<td class="col-lg-4">답변내역</td>
						<td class="col-lg-8"></td>
					</tr>
					<tr>
						<td class="col-lg-4">답변일시</td>
						<td class="col-lg-8"></td>
					</tr>
					<tr>
						<td class="col-lg-4">답변자</td>
						<td class="col-lg-8"></td>
					</tr>
				</c:otherwise>
			</c:choose>
			
		</table>
	</div>
</div>
<div class="row">
	<div class="col-lg-6 text-left">
		<a class="btn btn-default" href="${ contextPath }/mypage/question.do">목록으로</a>
	</div>
	<form method="post" action="${ contextPath }/mypage/questionUpdate.do">
		<input type="hidden" name="contents_id" value="${ writing.CONTENTS_ID }">
		<input type="hidden" name="title" value="${ writing.TITLE }">
		<input type="hidden" name="contents" value="${ writing.CONTENTS }">
		<div class="col-lg-6 text-right">
			<button class="btn btn-default">수정</button>
		</div>
	</form>
</div>
<%@ page contentType="text/html" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<div class="row">
	<div class="col-lg-12">
		공지사항<br>
		스토리팜 고객님께 새로운 소식 및 공지사항을 알려드립니다.
	</div>
	<table class="table">
		<tr>
			<td>No</td>
			<td>구분</td>
			<td>제목</td>
			<td>등록일</td>
		</tr>
		<c:forEach begin="1" end="5">
			<tr>
				<td>${ 1 }</td>
				<td>${ "공지사항" }</td>
				<td>${ "새로운 이벤트가 시작됩니다." }</td>
				<td>${ "15-05-02" }</td>
			</tr>
		</c:forEach>
	</table>
</div>

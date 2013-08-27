<%@ page contentType="text/html" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<h4>이벤트</h4>
<br />

<div class="row">
	<div class="col-lg-12">
		<table class="table table-striped table-hover">
			<tr>
				<th>No</th>
				<th>구분</th>
				<th>제목</th>
				<th>등록일</th>
			</tr>
			<c:forEach begin="1" end="10">
				<tr>
					<td>${ 1 }</td>
					<td>${ "공지사항" }</td>
					<td>${ "새로운 이벤트가 시작됩니다." }</td>
					<td>${ "15-05-02" }</td>
				</tr>
			</c:forEach>
		</table>
	</div>
</div>

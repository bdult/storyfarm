<%@ page contentType="text/html" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<div class="row">
	<div class="col-lg-12">
		FAQ 게시판<br>
	</div>
	<div class="col-lg-12">
		<a class="btn btn-default">이용방법</a>
		<a class="btn btn-default">결제/환불</a>
		<a class="btn btn-default">사이트오류</a>
		<a class="btn btn-default">서비스/기타</a>
		<a class="btn btn-default">회원</a>
	</div>
	<table class="table">
		<c:forEach begin="1" end="10">
			<tr>
				<td>${ "사이트 가입방법을 모르겠어요" }</td>
			</tr>
		</c:forEach>
	</table>
</div>

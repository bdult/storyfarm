<%@ page contentType="text/html" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<h4>FAQ 게시판</h4>

<div class="row">
	<div class="col-lg-12">
		<a class="btn btn-default">이용방법</a>
		<a class="btn btn-default">결제/환불</a>
		<a class="btn btn-default">사이트오류</a>
		<a class="btn btn-default">서비스/기타</a>
		<a class="btn btn-default">회원</a>
		
		<table class="table table-striped table-hover">
			<c:forEach begin="1" end="10">
				<tr>
					<td>${ "사이트 가입방법을 모르겠어요" }</td>
				</tr>
			</c:forEach>
		</table>
	</div>
	<table class="table">
		<c:forEach begin="1" end="10">
			<tr>
				<td>${ "사이트 가입방법을 모르겠어요" }</td>
			</tr>
			<c:if test="true">
				<tr>
					<td>사이트 상단 회원가입 버튼 을 클릭 하신 후 고객님의 이미 회원으로 가입하셨는지 여부를 확인하고<br>
						간단한 정보만 입력해주시면 회원가입은 완료됩니다.<br> 
						<a class="btn btn-default pull-right">닫기</a>
					</td>
				</tr>
			</c:if>
		</c:forEach>
	</table>
</div>

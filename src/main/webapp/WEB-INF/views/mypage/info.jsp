<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<div class="row">
	<div class="col-lg-12 text-left">
		안녕하세요 ${ login_session.MEMBER_ID } 님
	</div>
</div>
<div class="row">
	<div class="col-lg-6">
		<div class="well">
			현재 이용중인 서비스
			<a class="btn btn-default">자세히보기</a>
			<ul>
				<li>프리미엄 서비스를 이용하고 계십니다.</li>
				<li>이용가능메뉴 : 전체메뉴 이용가능</li>
				<li>이용기간 : 2013.9.15까지</li>
			</ul>
		</div>
	</div>
	<div class="col-lg-6">
		<div class="well">
			1:1 문의 내역
			<a class="btn btn-default" href="${ contextPath }/mypage/question.do">자세히보기</a>
			<ul>
				<c:forEach var="questionList" items="${ questionList }">
					<li>
						<a class="col-lg-8" href="${ contextPath }/mypage/questionDetail.do?contentsId=${ questionList.CONTENTS_ID }">${ questionList.TITLE }</a>
						<div class="col-lg-4">
							<c:choose>
								<c:when test="${ questionList.ANSWER == 0 }">
									<a style="color:red;">대기중</a>
								</c:when>
								<c:when test="${ questionList.ANSWER == 1 }">
									<a style="color:blue;">답변완료</a>
								</c:when>
								<c:otherwise>
									<a>답변오류</a>
								</c:otherwise>
							</c:choose>
						</div>
					</li>
				</c:forEach>
			</ul>
		</div>
	</div>
</div>
<div class="row">
	<div class="col-lg-4">
		<div class="well">
			<br>쿠폰 등록<br><br>
		</div>
	</div>
	<div class="col-lg-4">
		<div class="well">
			<br>회원정보 수정<br><br>
		</div>
	</div>
	<div class="col-lg-4">
		<div class="well">
			<br>일시중지<br><br>
		</div>
	</div>
</div>
<div class="row">
	<div class="col-lg-12">
		<div class="well"><br>EVENT banner<br><br></div>
	</div>
</div>
<!--/row-fluid-->
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<header>
	<div class="container">
	 	<div class="row">
	 		<div class="col-lg-12">
	 			<div class="pull-right">
	 			<c:choose>
	 				<c:when test="${ login_session == null }">
	 					<a href="${ contextPath }/loginStep1.do" class="btn btn-default">로그인</a>
	 				</c:when>
	 				<c:otherwise>
	 					<a href="${ contextPath }/logout.do" class="btn btn-default">${ login_session.MEMBER_ID }님 로그아웃</a>
	 				</c:otherwise>
	 			</c:choose>
	 			<a href="${ contextPath }/joinStep1.do" class="btn btn-default">회원가입</a>
	 			<a href="${ contextPath }/children/room.do" class="btn btn-default">자녀방</a>
	 			<a href="${ contextPath }/parents/study/daily.do" class="btn btn-default">부모방</a>
	 			</div>
	 		</div>
	 	</div>
	 	
	 	<c:choose>
	 		<c:when test="${ login_session != null }">
	 			<div class="col-lg-12 text-center">
	 				<div class="row well">
	 				<a class="btn btn-default">학습레벨: ${ "?단계" }</a>
	 				<a class="btn btn-default">칭찬스티커: ${ "?개" }</a>
	 				<a class="btn btn-default">학습완료: ${ "?과목" }</a>
	 				<a class="btn btn-default">유료결제하기</a>
	 				이용시간: ${ "?분" }
	 				학습연령: ${ "?세" }
	 				</div>
	 			</div>
	 		</c:when>
	 		<c:otherwise>
	 			<div class="col-lg-12 text-center">
	 				<div class="row well">
					<form role="form" method="post" action="${ contextPath }/loginStep2.do">
	 					<div class="col-lg-3 col-lg-offset-2">
						<input type="text" class="form-control" name="id" placeholder="아이디"> 
	 					</div>
	 					<div class="col-lg-3">
						<input type="text" class="form-control" name="pwd" placeholder="비밀번호">
	 					</div>
	 					<div class="col-lg-1">
						<button class="btn btn-info pull-right">로그인</button>
	 					</div>
					</form>
	 				</div>
				</div>
	 		</c:otherwise>
	 	</c:choose>
	 	
	 	<br />
	 	
	 	<div class="row">
	 		<div class="col-lg-10">
	 			<a href="${ contextPath }/" class="btn btn-info btn-lg">Story Farm</a>
	 			<a href="${ contextPath }/contentslist.do" class="btn btn-default">국어</a>
	 			<a href="${ contextPath }/contentslist.do" class="btn btn-default">영어</a>
	 			<a href="${ contextPath }/contentslist.do" class="btn btn-default">수학</a>
	 			<a href="${ contextPath }/contentslist.do" class="btn btn-default">과학</a>
	 			<a href="${ contextPath }/contentslist.do" class="btn btn-default">창의</a>
	 			<a href="${ contextPath }/contentslist.do" class="btn btn-default">동요</a>
	 			<a href="${ contextPath }/contentslist.do" class="btn btn-default">동화</a>
	 			<a href="${ contextPath }/contentslist.do" class="btn btn-default">생활</a>
	 			<a href="#" class="btn btn-warning">스토리팜소개</a>
	 			<a href="#" class="btn btn-warning">이벤트</a>
	 		</div>
 			<div class="pull-right col-lg-2">
		    <div class="input-group" style="margin-top: 5px;">
		      <input type="text" class="form-control">
		      <span class="input-group-btn">
		        <button class="btn btn-default" type="button"><i class="icon-search"></i></button>
		      </span>
		    </div>
		  </div>
	 	</div>
	 	<hr />
	</div>
</header>
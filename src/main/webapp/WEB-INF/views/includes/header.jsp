<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<header>
	<div class="container">
		
		<br />
		
	 	<div class="row">
	 		<div class="col-md-2">
	 			<a href="${ contextPath }/" class="btn btn-info">OZ world 오즈월드</a>
	 		</div>
	 		<div class="col-md-10">
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
		 			<a href="${ contextPath }/cscenter/notice.do" class="btn btn-default">고객센터</a>
					<a href="${ contextPath }/introduce.do" class="btn btn-default">오즈월드소개</a>
					<!-- 
		 			<a href="${ contextPath }/mypage/info.do" class="btn btn-default">마이페이지</a>
		 			<a href="${ contextPath }/children/room.do" class="btn btn-default">자녀방</a>
		 			<a href="${ contextPath }/parents/room.do" class="btn btn-default">부모방</a>
					 -->
	 			</div>
	 		</div>
	 	</div>
	 	 
	 	<div id="headerBox" style="display: none;">
	 	<c:choose>
	 		<c:when test="${ login_session != null }">
	 			<div class="col-md-12 text-center">
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
	 		<c:when test="${ msg == 'login_fail' }">
	 		</c:when>
	 		<c:otherwise>
	 			<div class="col-md-12 text-center">
	 				<div class="row well">
					<form role="form" method="post" id="submit" action="${ contextPath }/loginStep2.do">
	 					<div class="col-md-3 col-md-offset-2">
						<input type="text" class="form-control" name="id" id="id" placeholder="아이디"> 
	 					</div>
	 					<div class="col-md-3">
						<input type="text" class="form-control" name="pwd" id="pwd" placeholder="비밀번호">
	 					</div>
	 					<div class="col-md-1">
						<button class="btn btn-info pull-right">로그인</button>
	 					</div>
					</form>
	 				</div>
				</div>
	 		</c:otherwise>
	 	</c:choose>
	 	</div>
	 	<br />
	 	
	 	<div class="row">
	 		<div class="col-md-12 text-center">
	 			<a href="${ contextPath }/contentsList.do" class="btn btn-default">한글</a>
	 			<a href="${ contextPath }/contentsList.do" class="btn btn-default">영어</a>
	 			<a href="${ contextPath }/contentsList.do" class="btn btn-default">수학</a>
	 			<a href="${ contextPath }/contentsList.do" class="btn btn-default">과학</a>
	 			<a href="${ contextPath }/contentsList.do" class="btn btn-default">창의</a>
	 			<a href="${ contextPath }/contentsList.do" class="btn btn-default">동요</a>
	 			<a href="${ contextPath }/contentsList.do" class="btn btn-default">동화</a>
	 			<a href="${ contextPath }/contentsList.do" class="btn btn-default">생활</a>
	 			<a href="${ contextPath }/contentsList.do" class="btn btn-default">프린트학습</a>
	 		</div>
	 	</div>
	
		<br />
		<!-- breadcrumb/ -->
		<div class="row">
			<div class="col-md-12">
				<ol class="breadcrumb">
					<c:forEach items="${ breadcrumbs }" var="obj" varStatus="status">
						<c:choose>
							<c:when test="${ status.last }">
							  <li class="active">${ obj.name }</li>
							</c:when>
							<c:otherwise>
							  <li><a href="${ contextPath }${ obj.url }">${ obj.name }</a></li>
							</c:otherwise>
						</c:choose>
					</c:forEach>
				</ol>
			</div>
		</div>
		<!-- /breadcrumb -->
	</div>
</header>

<script>
$("#test").click(function(event){

	$.ajax({
	    type: "POST",
	    url: "${ contextPath }/loginDummy.do",
	    data: {
	    	id : $('#id').val(),
	    	pwd : $('#pwd').val()
	    }
	}).done(function(data){
    	console.info("code : " + data.code);
    	console.info("msg : " + data.msg);
    	if(data.code == 200) {
    		//로그인 성공 처리
    		$("#test2").text("AJAX 테스트 성공.");
    	} else {
    		$("#test2").text("아이디 or 비밀번호가 틀립니다.");
    		//로그인 실패 메시지 처리
    	}
    }).fail(function(data){
    	alert( "서버에러 죄송합니다.");
    })
});
	
</script>

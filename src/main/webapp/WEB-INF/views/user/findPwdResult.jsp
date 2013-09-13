<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<div class="row">
	<div class="col-lg-12 text-center">
		<h3>아이디 찾기 결과</h3>
	</div>
	<div class="col-lg-12 text-center">
		<div class="well">
			<div class="col-lg-12 text-center">
				
				<c:if test="${ findUserData.MEMBER_EMAIL != null }">
					임시 비밀번호가 아래의 등록하신 이메일 계정으로 발송되었습니다.<br><br>
					
					임시 비밀번호로 로그인 후 꼭 비밀번호를 변경하여 주시기 바랍니다.<br><br>
					
					<p class="text-center">${ findUserData.MEMBER_EMAIL }</p>
				</c:if>
				<c:if test="${ findUserData.MEMBER_EMAIL == null }">
					<h3>해당 정보로 조회한 결과 맞는 아이디가 없습니다.</h3><br><br>
				</c:if>
				비밀번호를 모르시는 경우<a class="btn btn-default" href="${ contextPath }/findPwd.do">비밀번호 찾기</a><br>
				회원이 아니신 경우 <a class="btn btn-default" href="${ contextPath }/joinStep1.do">회원가입</a><br><br><br>
				
				문의 : 고객센터 02-9874-5632(주말, 공휴일 휴무)<br>
				운영시간 : 평일 오전 10시~ 오후 5시(점심 12시~1시)<br>
				공휴일에는 고객센터의 <a href="#">문의하기</a> 메뉴를 통해서 접수 부탁드립니다.<br>
			</div>
			
		</div>
		<a class="btn btn-default" href="${ contextPath }/dashboard.do">메인으로</a>
	</div>
</div>
<!--/row-fluid-->
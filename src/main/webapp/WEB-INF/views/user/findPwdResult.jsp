<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<div id="content">
  
	<h2 class="divTit"><img src="${ contextPath }/assets/images/member/title_pwFind_result.gif" alt="비밀번호찾기 결과"></h2>
	<!-- location -->
	<div id="divLocation">
	<ul class="location">
				<c:forEach items="${ breadcrumbs }" var="obj" varStatus="status">
					<c:choose>
						<c:when test="${ status.first }">
					<li class="first"><a href="${ contextPath }" class="home"><img src="${ contextPath }/assets/images/common/blt_home.gif" alt="home"></a></li>
						</c:when>
						<c:when test="${ status.last }">
							<li class="current">${ obj.name }</li>
						</c:when>
						<c:otherwise>
							<li><a href="${ contextPath }${ obj.url }">${ obj.name }</a></li>
						</c:otherwise>
					</c:choose>
		</c:forEach>
	</ul>
	</div>
	<!-- //location -->
	
	<div class="box01 findResult">
		
		<c:choose>
			<c:when test="${ not empty findUserData.MEMBER_EMAIL }">
			<p class="tx01">임시 비밀번호가 아래의 등록하신 이메일 계정으로 발송되었습니다.<br>
			임시 비밀번호로 로그인 후 꼭 비밀번호를 변경하여 주시기 바랍니다.</p>
			<p class="tx02">${ findUserData.MEMBER_EMAIL }</p>
			</c:when>
			<c:otherwise>
				<p class="tx03">해당 정보로 조회한 결과 맞는 아이디가 없습니다.</p>
			</c:otherwise>
		</c:choose>
		
		<ul class="loginBt">
			<li><span class="titTx" style="width:120px;">회원이 아니신 경우</span> <a href="${ contextPath }/joinProvision.do"><img src="${ contextPath }/assets/images/member/btn_join_off.gif" alt="회원가입" class="rollimg"></a></li>
		</ul>
		 
		<span class="bg1"></span><span class="bg2"></span><span class="bg3"></span><span class="bg4"></span>
	</div>
	
	<div class="findResultLst">
		<ul class="ulLst01">
		 	<li>문의 : 고객센터 <strong>02-9874-5632</strong>(주말, 공휴일 휴무)</li>
		 	<li>운영시간 : 평일 오전 10시~ 오후 5시(점심 12시~1시)</li>
		 	<li>공휴일에는 고객센터의 <strong class="fontRed"><span>문의하기</span></strong> 메뉴를 통해서 접수 부탁드립니다.</li>
		</ul>
	</div>

</div>

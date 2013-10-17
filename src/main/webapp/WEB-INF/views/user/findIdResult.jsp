<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

    <!-- container -->
  	<div id="container">
   		<div id="content">
        
        	<h2 class="divTit"><img src="${ contextPath }/assets/images/member/title_idFind_result.gif" alt="아이디찾기 결과"></h2>
            <!-- location -->
      		<div id="divLocation">
        		<ul class="location">
					<c:forEach items="${ breadcrumbs }" var="obj" varStatus="status">
						<c:choose>
							<c:when test="${ status.first }">
          						<li class="first"><a href="/" class="home"><img src="${ contextPath }/assets/images/common/blt_home.gif" alt="home"></a></li>
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
            	<c:if test="${ findUserData != null }">
	                <p class="tx01">등록하신 아이디는 아래와 같습니다.</p>
					<c:forEach items="${ findUserData }" var="obj">
	                	<p class="tx02">아이디 : ${ obj.MEMBER_ID }</p>
	                </c:forEach>
                </c:if>
                <ul class="loginBt">
                	<li><span class="titTx">비밀번호를 모르시는 경우</span> <a href="${ contextPath }/findPwdView.do"><img src="${ contextPath }/assets/images/member/btn_pwFind_off.gif" alt="비밀번호 찾기" class="rollimg"></a></li>
            		<li><span class="titTx">회원이 아니신 경우</span> <a href="${ contextPath }/joinProvision.do"><img src="${ contextPath }/assets/images/member/btn_join_off.gif" alt="회원가입" class="rollimg"></a></li>
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
    </div>
    <!-- //container -->
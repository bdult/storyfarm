<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
    
   		<div id="content">
        
        	<h2 class="divTit"><img src="${ contextPath }/assets/images/member/title_join03.gif" alt="회원가입  회원가입완료"></h2>
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
      		<!-- //location -->
            
            <div class="join01_hd"><img src="${ contextPath }/assets/images/member/join03_img1.jpg" alt="오즈월드 회원가입이 정상적으로 완료 되었습니다."></div>
            
       	  	<div class="joinWrap mgt20">
            	<ul class="ulLst01 brdB">
                	<li>이제 언제 어디서나 아이들에게 동화를 애니메이션과 음향효과로 더욱 풍성한 감동을 누릴 수 있습니다.</li>
                </ul>
                
                <ul class="join03Bt">
                	<li><a href="#"><img src="${ contextPath }/assets/images/member/join03_bt1.gif" alt="자녀정보등록하러가기"></a></li>
                	<li><a href="${ contextPath }/cscenter/faq.do"><img src="${ contextPath }/assets/images/member/join03_bt2.gif" alt="오즈월드 서비스 FAQ 보러가기"></a></li>
                	<li><a href="#"><img src="${ contextPath }/assets/images/member/join03_bt3.gif" alt="유료 서비스 신청하기"></a></li>
                </ul>
            </div>
            
        </div>

<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
	
<!-- divAccessibility -->
<div id="divAccessibility">
    <a href="#gnb">메뉴 바로가기</a>
    <a href="#divContents">본문 바로가기(skip to content)</a>    
</div>
<!-- //divAccessibility -->

<!-- header -->
<div id="header">
 	<div class="divUtill">
   	  	<ul>
			<c:choose>
				<c:when test="${ empty sessionScope.userInfoSession }">
       	  			<li class="fir"><a href="${ contextPath }/loginView.do"><img src="${ contextPath }/assets/images/common/utill_mn1.gif" alt="로그인"></a></li>
		            <li><a href="${ contextPath }/joinProvision.do"><img src="${ contextPath }/assets/images/common/utill_mn2.gif" alt="회원가입"></a></li>
				</c:when>
				<c:otherwise>
            		<li class="fir"><a href="${ contextPath }/mypage/info.do"><img src="" alt="마이페이지"></a></li>
            		<li><a href="${ contextPath }/logout.do"><img src="" alt="로그아웃"></a></li>
				</c:otherwise>
			</c:choose>
            <li><a href="${ contextPath }/cscenter/notice.do"><img src="${ contextPath }/assets/images/common/utill_mn3.gif" alt="고객센터"></a></li>
            <li><a href="${ contextPath }/introduce.do"><img src="${ contextPath }/assets/images/common/utill_mn4.gif" alt="오즈월드 소개"></a></li>
        </ul>
        <div class="headSearch">
       		<div class="placeholder"><label class="placeholderTx">Search</label><input name="" type="text" class="input"><a href="#"><img src="${ contextPath }/assets/images/common/btn_search.gif" alt="검색"></a></div>
        </div>
  	</div>
	<div id="gnbWrap"><img src="${ contextPath }/assets/images/common/gnb.jpg" alt="" usemap="gnbMap" ></div>
	       
	<!-- 임시 gnb 이미지맵 -->
	<map name="gnbMap">
		<area shape="rect" coords="88,11,334,158" href="${ contextPath }" target="" alt="" />
		<area shape="rect" coords="351,101,464,195" href="${ contextPath }/category.do?cate_id=78" target="" alt="" />
		<area shape="rect" coords="470,95,580,200" href="${ contextPath }/category.do?cate_id=32" target="" alt="" />
		<area shape="rect" coords="584,105,694,197" href="${ contextPath }/category.do?cate_id=38" target="" alt="" />
		<area shape="rect" coords="698,114,812,195" href="${ contextPath }/category.do?cate_id=54" target="" alt="" />
		<area shape="rect" coords="815,93,928,196" href="${ contextPath }/category.do?cate_id=79" target="" alt="" />
		<area shape="rect" coords="930,105,1042,196" href="${ contextPath }/worksheet.do" target="" alt="" />
	</map>
</div>

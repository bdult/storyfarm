<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>

    <!-- header -->
  	<div id="header">
    	<div class="divUtill">
       	  	<ul>
				<c:choose>
					<c:when test="${ userInfoSession == null }">
           	  			<li class="fir"><a href="${ contextPath }/loginView.do"><img src="../assets/images/common/utill_mn1.gif" alt="로그인"></a></li>
					</c:when>
					<c:otherwise>
                		<li><a href="${ contextPath }/mypage/info.do"><img src="" alt="마이페이지"></a></li>
                		<li><a href="${ contextPath }/logout.do"><img src="" alt="로그아웃"></a></li>
					</c:otherwise>
				</c:choose>
                <li><a href="${ contextPath }/joinProvision.do"><img src="../assets/images/common/utill_mn2.gif" alt="회원가입"></a></li>
                <li><a href="${ contextPath }/cscenter/notice.do"><img src="../assets/images/common/utill_mn3.gif" alt="고객센터"></a></li>
                <li><a href="${ contextPath }/introduce.do"><img src="../assets/images/common/utill_mn4.gif" alt="오즈월드 소개"></a></li>
            </ul>
            <div class="headSearch">
           		<div class="placeholder"><label class="placeholderTx">Search</label><input name="" type="text" class="input"><a href="#"><img src="../assets/images/common/btn_search.gif" alt="검색"></a></div>
            </div>
      	</div>
        <div id="gnbWrap"><img src="../assets/images/common/gnb.jpg" alt=""></div>
    </div>
    <!-- //header -->
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>

<!-- divAccessibility -->
<div id="divAccessibility">
	<a href="#gnb">메뉴 바로가기</a> <a href="#divContents">본문 바로가기(skip to content)</a>
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
					<li class="fir"><a href="${ contextPath }/mypage/info.do"><img src="${ contextPath }/assets/images/common/utill_mn5.gif" alt="마이페이지"></a></li>
					<li><a href="${ contextPath }/logout.do"><img src="${ contextPath }/assets/images/common/utill_mn6.gif" alt="로그아웃"></a></li>
					<li><a href="${ contextPath }/parents/room.do"><img src="${ contextPath }/assets/images/common/utill_mn7.gif" alt="부모방"></a></li>
					<li><a href="${ contextPath }/children/room.do"><img src="${ contextPath }/assets/images/common/utill_mn8.gif" alt="자녀방"></a></li>
				</c:otherwise>
			</c:choose>
			<li><a href="${ contextPath }/cscenter/notice.do"><img src="${ contextPath }/assets/images/common/utill_mn3.gif" alt="고객센터"></a></li>
			<li><a href="${ contextPath }/introduce.do"><img src="${ contextPath }/assets/images/common/utill_mn4.gif" alt="오즈월드 소개"></a></li>
		</ul>
		<div class="headSearch">
			<div class="placeholder">
				<label class="placeholderTx">Search</label><input name="" type="text" class="input"><a href="#"><img class="bt" src="${ contextPath }/assets/images/common/btn_search.gif" alt="검색"></a>
			</div>
		</div>
	</div>
	<div id="gnbWrap">
		<h1 class="logo"><a href="${ contextPath }"><img src="${ contextPath }/assets/images/common/logo.png" alt="오즈월드"></a></h1>
		<ul id="gnb">
			<li><a href="${ contextPath }/category.do?cate_id=78"><img src="${ contextPath }/assets/images/common/gnb01.png" alt="한글"></a></li>
			<li><a href="${ contextPath }/category.do?cate_id=32"><img src="${ contextPath }/assets/images/common/gnb02.png" alt="영어"></a></li>
			<li><a href="${ contextPath }/category.do?cate_id=38"><img src="${ contextPath }/assets/images/common/gnb03.png" alt="수학/과학"></a></li>
			<li><a href="${ contextPath }/category.do?cate_id=54"><img src="${ contextPath }/assets/images/common/gnb04.png" alt="동요"></a></li>
			<li><a href="${ contextPath }/category.do?cate_id=79"><img src="${ contextPath }/assets/images/common/gnb05.png" alt="동화"></a></li>
			<li><a href="${ contextPath }/category.do?worksheet.do"><img src="${ contextPath }/assets/images/common/gnb06.png" alt="프린트학습"></a></li>
		</ul>
	</div>
</div>

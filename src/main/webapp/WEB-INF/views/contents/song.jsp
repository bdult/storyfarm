<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>

<div id="content">

	<form id="playListForm" action="playList.do" method="post">
		<h2 class="divTit">
			<img src="${ contextPath }/assets/images/content/title_song.gif" alt="오즈월드 동요">
		</h2>
		<!-- location -->
		<div id="divLocation">
			<ul class="location">
				<li class="first"><a href="${ contextPath }" class="home"><img src="${ contextPath }/assets/images/common/blt_home.gif" alt="home"></a></li>
				<li class="current">동요</li>
			</ul>
		</div>
		<!-- //location -->

		<div class="topBanner">
			<img src="${ contextPath }/assets/images/content/song_Timg.jpg" alt="오즈월드 동요">
		</div>

		<!-- conLst -->
		<div class="conLst song">
			<ul>
				<c:forEach items="${ contentListByCate }" var="obj" varStatus="status">
					<li>
						<p class="photo">
							<a href="${contextPath }/play.do?contents_id=${obj.CONTENTS_ID}"><img src="http://115.71.237.215/${ obj.IMG_PATH }" width="155" height="115" alt=""></a>
						</p>
						<p class="divChk">
							<label><input name="contentId" type="checkbox" value="${ obj.CONTENTS_ID }"> ${ fn:substring(obj.CONTENTS_NM, 0, 15) }</label>
						</p> <span class="bg1"></span><span class="bg2"></span><span class="bg3"></span><span class="bg4"></span>
					</li>
				</c:forEach>
			</ul>

			<!--paginate -->
			<c:if test="${ not empty pageLink }">
				<div class="paginate_complex">
					<c:if test="${ not empty pageLink.pagePrev }">
						<a class="direction prev" href="${ contextPath }/category.do?cate_id=${ cateDetail.CATE_ID }&pageNum=${ pageLink.pagePrev }${ empty search.search? '' : search.search }"><img
							src="${ contextPath }/assets/images/common/btn_pagingPre_off.gif" alt="이전 페이지 이동" class="rollimg"></a>
					</c:if>
					<c:forEach items="${ pageLink.pageList }" var="page">
						<c:choose>
							<c:when test="${ page.pageNum eq pageLink.pageNum }">
								<strong class="song">${ page.pageNum }</strong>
							</c:when>
							<c:otherwise>
								<a href="${ contextPath }/category.do?cate_id=${ cateDetail.CATE_ID }&pageNum=${ page.pageNum }${ empty search.search? '' : search.search }">${ page.pageNum }</a>
							</c:otherwise>
						</c:choose>
					</c:forEach>
					<c:if test="${ not empty pageLink.pageNext }">
						<a class="direction next" href="${ contextPath }/category.do?cate_id=${ cateDetail.CATE_ID }&pageNum=${ pageLink.pageNext }${ empty search.search? '' : search.search }"><img
							src="${ contextPath }/assets/images/common/btn_pagingNext_off.gif" alt="다음 페이지 이동" class="rollimg"></a>
					</c:if>
				</div>
			</c:if>
			<!--//paginate -->

			<div class="btnSc aright">
				<a href="javascript:listPlay();"><img src="${ contextPath }/assets/images/common/btn_viewSel_off.png" alt="선택보기" class="rollimg"></a> <a href="#"><img
					src="${ contextPath }/assets/images/common/btn_repeat_off.png" alt="반복보기" class="rollimg"></a> <a href="#"><img src="${ contextPath }/assets/images/common/btn_close_off.png" alt="닫기"
					class="rollimg"></a>
			</div>

		</div>
		<!-- conLst -->
</div>



<script tyep="text/javascript">
	function listPlay() {
		$("#playListForm").submit();
	}
</script>


</form>

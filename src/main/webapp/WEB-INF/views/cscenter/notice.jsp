<%@ page contentType="text/html" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>

<h2 class="divTit"><img src="${ contextPath }/assets/images/customer/title_notice.gif" alt="공지사항"></h2>

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

<div class="tblHeadSch">
	<form id="searchForm">
		<input id="queryStr" name="search" type="text" class="input" value="${ searchList.search }"><a class="searchBtn" href=""><img src="${ contextPath }/assets/images/common/btn_search2.gif" alt="검색" class="bt"></a>
	</form>
</div>
<table class="list mgt10">
	<colgroup>
		<col width="66">
		<col width="*">
		<col width="115">
		<col width="77">
	</colgroup>
    <thead>
		<tr>
			<th class="fir">번호</th>
	      	<th>제목</th>
	      	<th>게시일</th>
	      	<th class="last">조회</th>
		</tr>
	</thead>
	<tbody>
		<c:forEach items="${ list }" var="obj">
		<tr>
	      	<td>${ obj.CONTENTS_ID }</td>
			<td class="left"><a href="${ contextPath }/cscenter/noticeView.do?contentsId=${ obj.CONTENTS_ID }">${ obj.TITLE }</a></td>
			<td><fmt:formatDate value="${ obj.REG_DT }" pattern="yyyy-MM-dd"/></td>
			<td>${ obj.HITS }</td>
		</tr>
		</c:forEach>
	</tbody>
</table>

<!--paginate -->
<div class="paginate_complex">
	<c:if test="${ not empty pageLink }">
		<c:if test="${ not empty pageLink.pagePrev }">
		<a class="direction prev" href="${ contextPath }/cscenter/notice.do?pageNum=${ pageLink.pagePrev }${ empty search.search? '' : search.search }"><img src="${ contextPath }/assets/images/common/btn_pagingPre_off.gif"  alt="이전 페이지 이동"  class="rollimg"></a>
		</c:if>
		<c:forEach items="${ pageLink.pageList }" var="page">
			<c:choose>
				<c:when test="${ page.pageNum eq pageLink.pageNum }">
					<strong>${ page.pageNum }</strong>
				</c:when>
				<c:otherwise>
					<a href="${ contextPath }/cscenter/notice.do?pageNum=${ page.pageNum }${ empty search.search? '' : search.search }&search=${ searchList.search }">${ page.pageNum }</a>
				</c:otherwise>
			</c:choose>
		</c:forEach>
		<c:if test="${ not empty pageLink.pageNext }">
		<a class="direction next" href="${ contextPath }/cscenter/notice.do?pageNum=${ pageLink.pageNext }${ empty search.search? '' : search.search }"><img src="${ contextPath }/assets/images/common/btn_pagingNext_off.gif" alt="다음 페이지 이동"  class="rollimg"></a>
		</c:if>
	</c:if>
</div>
<!--//paginate -->
   
		
<div class="commentBox">
    <ul class="ulLst01">
        <li>문의 : 고객센터 02-9874-5632(주말, 공휴일 휴무)</li>
        <li>운영시간 : 평일 오전 10시~ 오후 5시(점심 12시~1시)</li>
        <li>공휴일에는 고객센터의 문의하기 메뉴를 통해서 접수 부탁드립니다.</li>
    </ul>
</div>

<script>
$(function(){
	
	$("a.searchBtn").click(function(){
		event.preventDefault();
		search();
		
	});
	
	$('#queryStr').keyup(function(e) {
		if(e.keyCode == 13) {
			search();
		}
	});
});

//공지사항 검색 함수
var search = function( ){
	$("#searchForm").attr({
		method: 'get',
		action: '${ contextPath }/cscenter/notice.do'
	}).submit();
};

</script>

<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>

<h2 class="divTit">
	<img src="${ contextPath }/assets/images/mypage/title_ask.gif" alt="1:1문의">
</h2>
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

<table class="list">
	<colgroup>
		<col width="50">
		<col width="*">
		<col width="100">
		<col width="100">
	</colgroup>
	<thead>
		<tr>
			<th class="fir">No</th>
			<th>제목</th>
			<th>답변여부</th>
			<th class="last">등록일</th>
		</tr>
	</thead>
	<tbody>
		<c:forEach items="${ list }" var="obj" varStatus="status">
			<tr>
				<td>${ obj.ROWNUM }</td>
				<td><a href="${ contextPath }/mypage/questionDetail.do?contentsId=${ obj.CONTENTS_ID }">${ obj.TITLE }</a></td>
				<td>
					<c:choose>
						<c:when test="${ obj.STATUS == 0 }">
							<a style="color:red;">대기중</a>
						</c:when>
						<c:otherwise>
							<a style="color:blue;">답변완료</a>
						</c:otherwise>
					</c:choose>
				</td>
				<td><fmt:formatDate value="${ obj.REG_DT }" pattern="yyyy-MM-dd"/></td>
			</tr>
		</c:forEach>
	</tbody>
</table>

<div class="btnSc aright">
	<a class="btn btn-primary pull-right" href="${ contextPath }/mypage/questionInsert.do" id="write">
		<img src="${ contextPath }/assets/images/mypage/bt_ask_off.gif" alt="1:1 문의하기" />
	</a>	
</div>

<!--paginate -->
<div class="paginate_complex">
  
<c:if test="${ not empty pageLink.pagePrev }">
  	<a class="direction prev" href="${ contextPath }/mypage/question.do?pageNum=${ pageLink.pagePrev }${ empty search.search? '' : search.search }"><img src="${ contextPath }/assets/images/common/btn_pagingPre_off.gif" alt="이전 페이지 이동" class="rollimg"></a>
</c:if>

	<c:forEach items="${ pageLink.pageList }" var="page">
		<c:choose>
			<c:when test="${ page.pageNum eq pageLink.pageNum }"><strong>${ page.pageNum }</strong></c:when>
			<c:otherwise><a href="${ contextPath }/mypage/question.do?pageNum=${ page.pageNum }">${ page.pageNum }</a></c:otherwise>
		</c:choose>
	</c:forEach>
  	
  	<c:if test="${ not empty pageLink.pageNext }">
  		<a class="direction next" href="${ contextPath }/mypage/question.do?pageNum=${ page.pageNum }${ empty search.search? '' : search.search }"><img src="${ contextPath }/assets/images/common/btn_pagingNext_off.gif" alt="다음 페이지 이동" class="rollimg"></a>
	</c:if>
</div>
<!--//paginate -->

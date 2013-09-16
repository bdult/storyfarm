<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<div class="row">
	<div class="col-lg-12 text-center">
		<h3>1:1 문의</h3>
	</div>
	<div class="col-lg-12 text-center">
		<a class="btn btn-default" href="${ contextPath }/mypage/questionDetail.do">상세화면</a>
	</div>
	<div class="col-lg-12 text-center">
		<a class="btn btn-default" href="${ contextPath }/mypage/questionInsert.do">쓰기화면</a>
	</div>
	<div class="col-lg-12 text-center">
		<a class="btn btn-default" href="${ contextPath }/mypage/questionUpdate.do">수정화면</a>
	</div>
	<div class="col-lg-12 text-center">
		<a class="btn btn-default" href="${ contextPath }/dashboard.do">메인으로</a>
	</div>
</div>


<div class="row">
	<div class="col-md-12">
		<table class="table table-striped table-hover">
			<tr>
				<th>No</th>
				<th>제목</th>
				<th>등록일</th>
			</tr>
			<c:forEach items="${ list }" var="obj">
				<tr>
					<td>${ obj.CONTENTS_ID }</td>
					<td><a href="${ contextPath }/mypage/questionDetail.do?contentsId=${ obj.CONTENTS_ID }">${ obj.TITLE }</a></td>
					<td><fmt:formatDate value="${ obj.REG_DT }" pattern="yyyy-MM-dd"/></td>
				</tr>
			</c:forEach>
		</table>
		
		<c:if test="${ not empty pageLink }">
		<div class="text-center">
			<ul class="pagination">
			<li><a href="${ contextPath }/mypage/question.do?pageNum=1">처음으로</a></li>
				<c:if test="${ not empty pageLink.pagePrev }">
				<li><a href="${ contextPath }/mypage/question.do?pageNum=${ pageLink.pagePrev }${ empty search.search? '' : search.search }">Prev</a></li>
				</c:if>
				<c:forEach items="${ pageLink.pageList }" var="page">
					<c:choose>
						<c:when test="${ page.pageNum eq pageLink.pageNum }"><li class="active"></c:when>
						<c:otherwise><li></c:otherwise>
					</c:choose>
					<a href="${ contextPath }/mypage/question.do?pageNum=${ page.pageNum }${ empty search.search? '' : search.search }">${ page.pageNum }</a></li>
				</c:forEach>
				<c:if test="${ not empty pageLink.pageNext }">
				<li><a href="${ contextPath }/mypage/question.do?pageNum=${ pageLink.pageNext }${ empty search.search? '' : search.search }">Next</a></li>
				</c:if>
			<li><a href="${ contextPath }/mypage/question.do?pageNum=${pageLink.lastPage}">마지막으로</a></li>
			</ul>
		</div>
		</c:if>
	</div>
</div>

<!--/row-fluid-->
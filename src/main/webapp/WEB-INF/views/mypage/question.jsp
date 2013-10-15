<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>

<div class="row">
	<div class="col-lg-12">
		<ul>
			<li><a href="#">${ login_session.MEMBER_ID }</a>님의 1:1 문의내역 입니다.</li>
		</ul>
	</div>
</div>


<div class="row">
	<div class="col-md-12">
		<table class="table table-striped table-hover">
			<tr>
				<th>No</th>
				<th>제목</th>
				<th>답변여부</th>
				<th>등록일</th>
			</tr>
			<c:forEach items="${ list }" var="obj" varStatus="status">
				<tr>
					<td>${ obj.ROWNUM }</td>
					<td><a href="${ contextPath }/mypage/questionDetail.do?contentsId=${ obj.CONTENTS_ID }">${ obj.TITLE }</a></td>
					<td>
						<c:choose>
							<c:when test="${ obj.STATUS == 0 }">
								<a style="color:red;">대기중</a>
							</c:when>
							<c:when test="${ obj.STATUS == 1 }">
								<a style="color:blue;">답변완료</a>
							</c:when>
							<c:otherwise>
								<a>답변오류</a>
							</c:otherwise>
						</c:choose>
					</td>
					<td><fmt:formatDate value="${ obj.REG_DT }" pattern="yyyy-MM-dd"/></td>
				</tr>
			</c:forEach>
		</table>
		<a class="btn btn-primary pull-right" href="${ contextPath }/mypage/questionInsert.do?board_id=3" id="write">1:1 문의하기</a>
		
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
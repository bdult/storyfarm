<%@ page contentType="text/html" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>

<div class="alert alert-success">이벤트</div>

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
					<td><a href="${ contextPath }/cscenter/eventView.do?contentsId=${ obj.CONTENTS_ID }">${ obj.TITLE }</a></td>
					<td><fmt:formatDate value="${ obj.REG_DT }" pattern="yyyy-MM-dd"/></td>
				</tr>
			</c:forEach>
		</table>
		
		<c:if test="${ not empty pageLink }">
		<div class="text-center">
			<ul class="pagination">
			<li><a href="${ contextPath }/cscenter/event.do?pageNum=1">처음으로</a></li>
				<c:if test="${ not empty pageLink.pagePrev }">
				<li><a href="${ contextPath }/cscenter/event.do?pageNum=${ pageLink.pagePrev }${ empty search.search? '' : search.search }">Prev</a></li>
				</c:if>
				<c:forEach items="${ pageLink.pageList }" var="page">
					<c:choose>
						<c:when test="${ page.pageNum eq pageLink.pageNum }"><li class="active"></c:when>
						<c:otherwise><li></c:otherwise>
					</c:choose>
					<a href="${ contextPath }/cscenter/event.do?pageNum=${ page.pageNum }${ empty search.search? '' : search.search }">${ page.pageNum }</a></li>
				</c:forEach>
				<c:if test="${ not empty pageLink.pageNext }">
				<li><a href="${ contextPath }/cscenter/event.do?pageNum=${ pageLink.pageNext }${ empty search.search? '' : search.search }">Next</a></li>
				</c:if>
			<li><a href="${ contextPath }/cscenter/event.do?pageNum=${pageLink.totalCnt / 10}">마지막으로</a></li>
			</ul>
		</div>
		</c:if>
	</div>
</div>

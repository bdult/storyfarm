<%@ page contentType="text/html" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>

<div class="alert alert-success">당첨자 발표.</div>
<div class="row">
	<div class="col-md-3 pull-right">
		<form class="form-search" action="${ contextPath }/cscenter/winner.do" method="get">
		<div class="input-group">
			<input type="text" name="search" class="form-control" placeholder="Search ..." id="search-input" autocomplete="off" value="${search }" /> 
			<span class="input-group-btn">
				<button class="btn btn-default" >검색</button>
			</span>
		</div>
		</form>
		<!-- /input-group -->
	</div>
</div>
<br>
<div class="row">
	<div class="col-md-12">
		<table class="table table-striped table-hover">
			<tr>
				<th>번호</th>
				<th>제목</th>
				<th>게시일</th>
				<th>조회</th>
			</tr>
			<c:forEach items="${ list }" var="obj">
				<tr>
					<td>${ obj.CONTENTS_ID }</td>
					<td><a href="${ contextPath }/cscenter/winnerView.do?contentsId=${ obj.CONTENTS_ID }">${ obj.TITLE }</a></td>
					<td><fmt:formatDate value="${ obj.REG_DT }" pattern="yyyy-MM-dd"/></td>
					<td>${ obj.HITS }</td>
				</tr>
			</c:forEach>
		</table>
		<c:if test="${ not empty pageLink }">
		<div class="text-center">
			<ul class="pagination">
				<c:if test="${ not empty pageLink.pagePrev }">
				<li><a href="${ contextPath }/cscenter/winner.do?pageNum=${ pageLink.pagePrev }${ empty search.search? '' : search.search }">Prev</a></li>
				</c:if>
				<c:forEach items="${ pageLink.pageList }" var="page">
					<c:choose>
						<c:when test="${ page.pageNum eq pageLink.pageNum }"><li class="active"></c:when>
						<c:otherwise><li></c:otherwise>
					</c:choose>
					<a href="${ contextPath }/cscenter/winner.do?pageNum=${ page.pageNum }${ empty search.search? '' : search.search }&search=${ searchList.search }">${ page.pageNum }</a></li>
				</c:forEach>
				<c:if test="${ not empty pageLink.pageNext }">
				<li><a href="${ contextPath }/cscenter/winner.do?pageNum=${ pageLink.pageNext }${ empty search.search? '' : search.search }">Next</a></li>
				</c:if>
			</ul>
		</div>
		</c:if>
	</div>
</div>

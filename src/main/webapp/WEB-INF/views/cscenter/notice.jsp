<%@ page contentType="text/html" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>


<div class="alert alert-success">스토리팜 고객님께 새로운 소식 및 공지사항을 알려드립니다.</div>

<div class="row">
	<div class="col-lg-12">
		<table class="table table-striped table-hover">
			<tr>
				<th>No</th>
				<th>제목</th>
				<th>등록일</th>
			</tr>
			<c:forEach items="${ noticeList }" var="obj">
				<tr>
					<td>${ obj.CONTENTS_ID }</td>
					<td><a href="${ contextPath }/cscenter/noticeView.do?contentsId=${ obj.CONTENTS_ID }">${ obj.TITLE }</a></td>
					<td>${ obj.REG_DT }</td>
				</tr>
			</c:forEach>
		</table>
		
		<c:if test="${ not empty pageLink }">
		<div class="text-center">
			<ul class="pagination">
				<c:if test="${ not empty pageLink.pagePrev }">
				<li><a href="${ contextPath }/cscenter/notice.do?pageNum=${ pageLink.pagePrev }${ empty search.search? '' : search.search }">Prev</a></li>
				</c:if>
				<c:forEach items="${ pageLink.pageList }" var="page" >
				<li data-page-num="${ page.pageNum }"><a href="${ contextPath }/cscenter/notice.do?pageNum=${ page.pageNum }${ empty search.search? '' : search.search }">${ page.pageNum }</a></li>
				</c:forEach>
				<c:if test="${ not empty pageLink.pageNext }">
				<li><a href="${ contextPath }/cscenter/notice.do?pageNum=${ pageLink.pageNext }${ empty search.search? '' : search.search }">Next</a></li>
				</c:if>
			</ul>
		</div>
		</c:if>
	</div>
</div>

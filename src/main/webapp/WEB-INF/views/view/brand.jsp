<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>

<style>
@media (min-width: 768px){
    .fivecolumns .col-md-2, .fivecolumns .col-sm-2, .fivecolumns .col-lg-2  {
        width: 20%;
        *width: 20%;
    }
}
@media (min-width: 1200px) {
    .fivecolumns .col-md-2, .fivecolumns .col-sm-2, .fivecolumns .col-lg-2 {
        width: 20%;
        *width: 20%;
    }
}
@media (min-width: 768px) and (max-width: 979px) {
    .fivecolumns .col-md-2, .fivecolumns .col-sm-2, .fivecolumns .col-lg-2 {
        width: 20%;
        *width: 20%;
        float: left;
    }
}

</style>

<div id="content">
	<section id="brand">
		<div class="row">
			<div class="col-md-12 text-center">
				<img src="" alt="브랜드 이미지" style="width: 100%; height: 150px;"/>
			</div>
			<hr>
		</div>
	</section>
	
	<br />
	
	<section id="contents">
	  <div class="row fivecolumns">
	  		<c:forEach items="${ contentList }" var="obj" varStatus="status">
	  			<c:if test="${ status.count le 12 }">
					<div class="col-md-2 tmp">
						<a href="${ contextPath }/play.do?contents_id=${ obj.CONTENTS_ID }" class="thumbnail">
							${ fn:substring(obj.CONTENTS_NM, 0, 20) }
							<img src="http://115.71.237.215/${ obj.IMG_PATH }" style="width: 100%; height: 130px;" alt="${ obj.CONTENTS_NM }">
						</a>
					</div>
	  			</c:if>
	  		</c:forEach>
	  </div>
	  
		<c:if test="${ not empty pageLink }">
		<div class="text-center">
			<ul class="pagination">
			<li><a href="${ contextPath }/brand.do?brand_id=${ brand.BRAND_ID }&pageNum=1"><i class="icon-double-angle-left icon-large"></i></a></li>
				<c:if test="${ not empty pageLink.pagePrev }">
				<li><a href="${ contextPath }/brand.do?brand_id=${ brand.BRAND_ID }&pageNum=${ pageLink.pagePrev }${ empty search.search? '' : search.search }">Prev</a></li>
				</c:if>
				<c:forEach items="${ pageLink.pageList }" var="page">
					<c:choose>
						<c:when test="${ page.pageNum eq pageLink.pageNum }"><li class="active"></c:when>
						<c:otherwise><li></c:otherwise>
					</c:choose>
					<a href="${ contextPath }/brand.do?brand_id=${ brand.BRAND_ID }&pageNum=${ page.pageNum }${ empty search.search? '' : search.search }">${ page.pageNum }</a></li>
				</c:forEach>
				<c:if test="${ not empty pageLink.pageNext }">
				<li><a href="${ contextPath }/brand.do?brand_id=${ brand.BRAND_ID }&pageNum=${ pageLink.pageNext }${ empty search.search? '' : search.search }">Next</a></li>
				</c:if>
			<li><a href="${ contextPath }/brand.do?brand_id=${ brand.BRAND_ID }&pageNum=${pageLink.lastPage}"><i class="icon-double-angle-right icon-large"></i></a></li>
			</ul>
		</div>
		</c:if>
	</section>
</div>
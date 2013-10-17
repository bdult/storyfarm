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

	<div class="row">
		<div class="col-sm-12">
			<img src="" alt="${ cateDetail.CATE_NM } 카테고리 이미지" style="width: 100%; height: 150px;"/>
		</div>
	</div>

	<br />
	
	<div class="row fivecolumns">
	  		<c:forEach items="${ contentListByCate }" var="obj" varStatus="status">
				<div class="col-sm-2 text-center" style="font-size: 11px;">
					<a href="${ contextPath }/play.do?contents_id=${ obj.CONTENTS_ID }" class="thumbnail">
						<img src="http://115.71.237.215/${ obj.IMG_PATH }" style="width: 100%; height: 130px;" alt="${ obj.CONTENTS_NM }">
						 ${ fn:substring(obj.CONTENTS_NM, 0, 15)  }
					</a>
				</div>
	  		</c:forEach>
  	</div>
	
	<c:if test="${ not empty pageLink }">
	<div class="text-center">
		<ul class="pagination">
		<li><a href="${ contextPath }/category.do?cate_id=${ cateDetail.CATE_ID }&pageNum=1"><i class="icon-double-angle-left icon-large"></i></a></li>
			<c:if test="${ not empty pageLink.pagePrev }">
			<li><a href="${ contextPath }/category.do?cate_id=${ cateDetail.CATE_ID }&pageNum=${ pageLink.pagePrev }${ empty search.search? '' : search.search }">Prev</a></li>
			</c:if>
			<c:forEach items="${ pageLink.pageList }" var="page">
				<c:choose>
					<c:when test="${ page.pageNum eq pageLink.pageNum }"><li class="active"></c:when>
					<c:otherwise><li></c:otherwise>
				</c:choose>
				<a href="${ contextPath }/category.do?cate_id=${ cateDetail.CATE_ID }&pageNum=${ page.pageNum }${ empty search.search? '' : search.search }">${ page.pageNum }</a></li>
			</c:forEach>
			<c:if test="${ not empty pageLink.pageNext }">
			<li><a href="${ contextPath }/category.do?cate_id=${ cateDetail.CATE_ID }&pageNum=${ pageLink.pageNext }${ empty search.search? '' : search.search }">Next</a></li>
			</c:if>
		<li><a href="${ contextPath }/category.do?cate_id=${ cateDetail.CATE_ID }&pageNum=${pageLink.lastPage}"><i class="icon-double-angle-right icon-large"></i></a></li>
		</ul>
	</div>
	</c:if>
	
	<hr />
	
	<div class="row">
		<div class="col-sm-12 text-right">
			<a href="#" class="btn btn-primary">선택보기</a>
 			<a href="#" class="btn btn-primary">현재 페이지보기</a>
			<a href="#" class="btn btn-primary">전체 이어보기</a>
		</div>
	</div>
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
	<div class="row">
		<div class="col-md-12">
			<img src="${ seriesDetail.IMG_PATH }" alt="${ seriesDetail.CONTENTS_SERIES_NM }" style="width: 100%; height: 200px;"/>
		</div>
	</div>
	
	<br />
	
	<div class="row fivecolumns">
	  		<c:forEach items="${ contentList }" var="obj" varStatus="status">
				<div class="col-md-2 text-center" style="font-size: 11px;">
					<a href="${ contextPath }/play.do?contents_id=${ obj.CONTENTS_ID }" class="thumbnail">
						<img src="http://115.71.237.215/${ obj.IMG_PATH }" style="width: 100%; height: 130px;" alt="${ obj.CONTENTS_NM }">
						${ fn:substring(obj.CONTENTS_NM, 0, 15)  }
					</a>
				</div>
	  		</c:forEach>
  	</div>
	
	<hr />
	
	<div class="row">
		<div class="col-md-12 text-right">
			<a href="#" class="btn btn-primary">선택보기</a>
 			<a href="#" class="btn btn-primary">현재 페이지보기</a>
			<a href="#" class="btn btn-primary">전체 이어보기</a>
		</div>
	</div>
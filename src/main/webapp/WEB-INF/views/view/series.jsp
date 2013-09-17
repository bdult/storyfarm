<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>

	<div class="row">
		<div class="col-md-12">
			<img src="${ seriesDetail.IMG_PATH }" alt="${ seriesDetail.CONTENTS_SERIES_NM }" style="width: 100%; height: 200px;"/>
		</div>
	</div>
	
	<br />
	
	<div class="row">
	  	<div class="col-md-12">
	  		<c:forEach items="${ contentList }" var="obj" varStatus="status">
				<div class="col-md-2">
					<a href="${ contextPath }/play.do?contents_id=${ obj.CONTENTS_ID }" class="thumbnail">
						<span class="name-box">${ fn:substring(obj.CONTENTS_NM, 0, 15)  }</span>
						<img src="${ obj.IMG_PATH }" style="width: 100%; height: 130px;" alt="${ obj.CONTENTS_NM }">
					</a>
				</div>
	  		</c:forEach>
	  	</div>
  	</div>
	
	<div class="row">
		<div class="col-md-12 text-center">
			<ul class="pagination">
			  <li><a href="#">&laquo;</a></li>
			  <li><a href="#">1</a></li>
			  <li><a href="#">2</a></li>
			  <li><a href="#">3</a></li>
			  <li><a href="#">4</a></li>
			  <li><a href="#">5</a></li>
			  <li><a href="#">6</a></li>
			  <li><a href="#">7</a></li>
			  <li><a href="#">8</a></li>
			  <li><a href="#">9</a></li>
			  <li><a href="#">10</a></li>
			  <li><a href="#">&raquo;</a></li>
			</ul>
		</div>
	</div>
	
	<hr />
	
	<div class="row">
		<div class="col-md-12 text-right">
			<a href="#" class="btn btn-primary">선택보기</a>
 			<a href="#" class="btn btn-primary">현재 페이지보기</a>
			<a href="#" class="btn btn-primary">전체 이어보기</a>
		</div>
	</div>
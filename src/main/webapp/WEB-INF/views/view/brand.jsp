<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<section id="brand">
	<div class="row">
		<div class="col-md-12 text-center">
			<img src="http://bigstarglobal.com/en/wp-content/uploads/2013/04/peet-and-baba_1.jpg" alt="브랜드 이미지" />
		</div>
		<hr>
	</div>
	<div class="row">
		<div class="col-md-12 text-center">
			<i class="icon-chevron-sign-left icon-large"></i>
			<c:forEach items="${ seriesList }" var="obj">
				<a class="btn btn-primary">${ obj.CONTENTS_SERIES_NM }</a>
			</c:forEach>
			<i class="icon-chevron-sign-right icon-large"></i>
		</div>
	</div>
</section>

	<hr />

<section id="contents">
  <div class="row">
  	<div class="col-md-12">
  		<c:forEach items="${ contentList }" var="obj" varStatus="status">
  			<c:if test="${ status.count le 12 }">
				<div class="col-md-2">
					<a href="#" class="thumbnail">
						${ obj.CONTENTS_NM }
						<img src="${ obj.IMG_PATH }" style="width: 100%; height: 130px;" alt="${ obj.CONTENTS_NM }">
					</a>
				</div>
  			</c:if>
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
</section>
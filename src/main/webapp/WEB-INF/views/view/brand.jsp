<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<section id="brand">
	<div class="row">
		<div class="col-md-12 text-center">아기월드 클래식</div>
		<hr>
	</div>
		<div class="col-md-12 text-center">
			<a class="btn btn-default">LITTLE BABY PICTURE BOOK</a>
			<a class="btn btn-default">ZOO ZOO PICTURE BOOK</a>
			<a class="btn btn-default">World Classics</a>
			<a class="btn btn-default">AGAWORLD Classics</a>
			<a class="btn btn-default">영어교실 KIDS</a>
			<a class="btn btn-default">STORY CUBE</a>
			<a class="btn btn-default">LITTLE WHY?</a>
		</div>
		<div class="col-md-12">
			<a href="#" class="thumbnail"> <img data-src="holder.js/100%x180"
				src="../img/171_180.png" alt="...">
			</a>
			<p>월드 클레식 아가월드는 아이들에게 상상력을 길러주며 꿈과 동화의 나라 속 에서 희망의 꿈을 키워줍니다.</p>
		</div>
</section>

	<hr />

<section id="contents">
	<div class="row">
		<div class="col-md-12 text-center">
			<a class="btn btn-default">전체연령</a>
			<a class="btn btn-default">0-1세</a>
			<a class="btn btn-default">2-3세</a>
			<a class="btn btn-default">4-5세</a>
			<a class="btn btn-default">6-7세</a>
		</div>
		<div class="btn-group pull-right">
			<button type="button" class="btn btn-default">
				<i class="icon-th-large"></i>
			</button>
			<button type="button" class="btn btn-default">
				<i class="icon-th-list"></i>
			</button>
		</div>
	</div>
	
	<div class="row">
		  <div class="col-md-1"></div>
		<c:forEach begin="1" end="5" varStatus="status">
		  <div class="col-md-2">

				<c:forEach begin="1" end="2">
					<div class="row">
						<div class="col-md-12">
							<a href="${ contextPath }/play.do" class="thumbnail">
								<img style="width: 100%; height: 130px;"
									alt="콘텐츠 영역 ${ status.count }">
									설명<br>
							</a>
							<c:if test="true">
								<button class="btn btn-default disabled">free</button>
							</c:if>
							<button type="button" class="btn btn-default pull-right">
								<i class="icon-heart"></i> ${ 15 }
							</button>
						</div>
					</div>
					<br />
				</c:forEach>

			</div>
		</c:forEach>
		  <div class="col-md-1"></div>
	</div>
	<div class="row">
		<div class="col-md-12">
			아가월드 프린트 학습지
			<hr>
		</div>
	</div>
	
	<div class="row">
		  <div class="col-md-1"></div>
		<c:forEach begin="1" end="5" varStatus="status">
		  <div class="col-md-2">

				<c:forEach begin="1" end="2">
					<div class="row">
						<div class="col-md-12">
							<a href="${ contextPath }/play.do" class="thumbnail">
								<img style="width: 100%; height: 130px;" alt="콘텐츠 영역 ${ status.count }">
							</a>
							<button type="button" class="btn btn-default pull-right">인쇄</button>
						</div>
					</div>
					<br />
				</c:forEach>

			</div>
		</c:forEach>
		  <div class="col-md-1"></div>
	</div>
</section>
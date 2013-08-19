<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
    
<div class="row">
	<div class="col-lg-12">
		The Ugly Ducking 월드클래식 ♥ ${ 15 }
	</div>
</div>
<hr>
<div class="row">
	<div class="col-lg-12">
		<img style="width: 100%; height: 300px;" alt="동영상">
	</div>
</div>
<br>
<div class="row">
	<div class="col-lg-12">
		<button class="btn btn-primary pull-left">개요</button>
		<button class="btn btn-default pull-left">리뷰</button>
		<button class="btn btn-default pull-left">관련콘텐츠</button>
		<button class="btn btn-default pull-right">유료회원 가입하기</button>
	</div>
</div>

<div class="well">
	<div class="row">
	<div class="col-lg-1">
		<a class="btn btn-default pull-right">&lt;</a>
	</div>
	<div class="col-lg-5">
		<img style="width:100%; height:220px" data-src="holder.js/100%x180" src="../img/171_180.png" alt="...">
	</div>
	<div class="col-lg-1">
		<a class="btn btn-default">&gt;</a>
	</div>
	<div class="col-lg-5">
	유아영어에서 다루는 모든 영역을 하나의<br> 
	애플리케이션에 담았습니다<br>
	<br>
	아기놀이터 - 시각발달<br>
	같은 그림을 찾아보면서 시각적으로 아이가 얼마나<br> 
	성장했는지 알아볼 수 있습니다.<br>
	Specifications<br>
	• 분류: 창작동화<br>
	• 대상: 2~5세<br>
	• 언어:   다국어 개발중<br>
	• 서비스 플랫폼:<br><br>
	</div>
	</div>
</div>

<div class="well">
	<div class="row">
		<div class="col-lg-3">
			콘텐츠 평가하기
			<hr>
			★★★☆☆
			<textarea class="form-control" rows="7" placeholder="학습완료시 작성 가능합니다." disabled="disabled"></textarea>
			<div class="text-center">
				<button type="button" class="btn btn-default">게시</button>
				<button type="button" class="btn btn-default">취소</button>
			</div>
		</div>
		<div class="col-lg-9">
			<div class="row">
				<div class="col-lg-3 pull-right">
					<select class="form-control">
						<option>전체보기</option>
						<option>2</option>
						<option>3</option>
						<option>4</option>
						<option>5</option>
					</select>
				</div>
			</div>
			<hr>
			<c:forEach begin="1" end="3">
				<div class="row">
					<div class="col-lg-3">
						<img style="width: 100%; height: 50px"
							data-src="holder.js/100%x180" src="../img/171_180.png" alt="...">
					</div>
					<div class="col-lg-9">
						${ "userid" } ${ "2012년 1월 1일" } 
						<br> Lorem ipsum dolor sit
						amet, consectetur adipisicing elit, sed do eiusmod tempor
						incididunt ut labore et dolore magna aliqua.
						<hr>
					</div>
				</div>
			</c:forEach>
			<div class="row text-center">
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
	</div>
</div>

<div class="well">
	<div class="row">
		<div class="col-lg-12">
			<c:forEach begin="1" end="4">
				<c:forEach begin="1" end="4">
					<div class="col-lg-3">
						<div class="row">
							<div class="col-lg-5">
								<img style="width: 100%; height: 70px"
								data-src="holder.js/100%x180" src="../img/171_180.png" alt="...">
							</div>
							<div class="col-lg-7">
								title<br>
								★★★☆☆<br>
								<a class="btn btn-default">상세보기</a>
							</div>
						</div>
						<br>
					</div>
				</c:forEach>
			</c:forEach>
		</div>
	</div>
</div>

<div class="row">
	<div class="col-lg-12">
		<img style="width: 100%; height: 200px;" alt="동영상 재생 지원기기">
	</div>
</div>
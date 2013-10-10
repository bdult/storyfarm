<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
    
<div class="row">
	<div class="col-md-12">
		<img src="" alt="${ cateDetail.CATE_NM } 자녀방 대표 이미지" style="width: 100%; height: 150px;"/>
	</div>
</div>

<br />

<div class="row">
	<div class="col-md-6">
		사랑하는 우리 { 자녀이름 } 의 방입니다.
	</div>
	<div class="col-md-6 text-right">
		<button class="btn btn-default btn-xs">학습자변경</button>
	</div>
</div>

<br />

<div class="row">
	<div class="col-md-12">
		<div class="panel panel-default">
			<div class="panel-heading">우리 아이가 가장 자주 보는 동영상입니다.</div>
			<div class="panel-body">
				<c:forEach begin="1" end="6" step="1">
					<div class="col-md-2" style="font-size: 11px;">
						<input type="checkbox" value=""/> 선택
						<a href="/play.do?contents_id=235" class="thumbnail">
							<img src="source/thumbnail/48/p09.jpg" style="width: 100%; height: 130px;" alt="숨바꼭질 하자">
						</a>
						<div class="text-center">숨바꼭질 하자</div>
					</div>
				</c:forEach>
			</div>
		</div>
	</div>
</div>

<div class="row">
	<div class="col-md-6">
		<div class="panel panel-default">
			<div class="panel-heading">오즈월드 추천 동영상</div>
			<div class="panel-body">
				<c:forEach begin="1" end="3" step="1">
					<div class="col-md-4" style="font-size: 11px;">
						<input type="checkbox" value=""/> 선택
						<a href="/play.do?contents_id=235" class="thumbnail">
							<img src="source/thumbnail/48/p09.jpg" style="width: 100%; height: 130px;" alt="숨바꼭질 하자">
						</a>
						<div class="text-center">숨바꼭질 하자</div>
					</div>
				</c:forEach>
			</div>
		</div>
	</div>
	<div class="col-md-6">
		<div class="panel panel-default">
			<div class="panel-heading">또래가 가장 많이 보는 동영상</div>
			<div class="panel-body">
				<c:forEach begin="1" end="3" step="1">
					<div class="col-md-4" style="font-size: 11px;">
						<input type="checkbox" value=""/> 선택
						<a href="/play.do?contents_id=235" class="thumbnail">
							<img src="source/thumbnail/48/p09.jpg" style="width: 100%; height: 130px;" alt="숨바꼭질 하자">
						</a>
						<div class="text-center">숨바꼭질 하자</div>
					</div>
				</c:forEach>
			</div>
		</div>
	</div>
</div>

<div class="row">
	<div class="col-md-12 text-right">
		<a class="btn btn-default" href="${ contextPath }/children/play.do">선택보기</button>
	</div>
</div>
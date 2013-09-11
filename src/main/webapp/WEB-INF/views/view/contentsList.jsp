<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

	<h4>오즈월드 한글</h4>
	
	<hr />
	
	<div class="row">
		<div class="col-md-12">
			<img src="http://bigstarglobal.com/en/wp-content/uploads/2013/05/little_math_books.png" alt="" style="width: 100%;"/>
		</div>
	</div>

<!-- 
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
 -->
	
	<br />
	
	<div class="row">
		<div class="col-md-1"></div>
		<div class="col-md-10">
			<div class="row">
				<c:forEach begin="1" end="6" varStatus="status">
				  <div class="col-md-2">
		
						<c:forEach begin="1" end="2">
							<div class="row">
								<div class="col-md-12">
									<label>
									 	<input type="checkbox"> 선택
    								</label>
									<a href="${ contextPath }/play.do" class="thumbnail">
										<img src="http://bigstarglobal.com/en/wp-content/uploads/2013/05/LittleMathBooks_33.png" style="width: 100%; height: 130px;" alt="콘텐츠 영역 ${ status.count }"> 미운아기새끼<br>
									</a>
									<!-- 
									<c:if test="true">
										<button class="btn btn-default disabled">free</button>
									</c:if>
									<button type="button" class="btn btn-default pull-right">
										<i class="icon-heart"></i> ${ 15 }
									</button>
									 -->
								</div>
							</div>
							<br />
						</c:forEach>
		
					</div>
				</c:forEach>
			</div>
		</div>
		<div class="col-md-1"></div>
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
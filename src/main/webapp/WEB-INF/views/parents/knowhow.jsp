<%@ page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<div class="row">
	<div class="col-lg-12">
		<h4>학습노하우</h4>
	</div>
</div>

<div class="row">
	<div class="col-lg-12">
		<a href="#" class="btn btn-primary">최신글</a>
		<a href="#" class="btn btn-default">베스트</a>
	</div>
</div>
<div class="row">
	<div class="col-lg-12">
		<table class="table table-hover table-striped">
			<thead>
				<tr>
					<th>No</th>
					<th>글제목</th>
					<th>조회수</th>
					<th>추천</th>
					<th>작성자</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach begin="1" end="20" varStatus="status">
					<tr>
						<td>${ status.count }</td>
						<td></td>
						<td></td>
						<td></td>
						<td></td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
	</div>
</div>

<div class="row">
	<div class="col-lg-12">
		<a class="btn btn-primary pull-right" href="#">글쓰기</a>
	</div>
	<div class="col-lg-12 text-center">
		<ul class="pagination">
		  <li><a href="#">&laquo;</a></li>
		  <li class="active"><a href="#">1</a></li>
		  <li><a href="#">2</a></li>
		  <li><a href="#">3</a></li>
		  <li><a href="#">4</a></li>
		  <li><a href="#">5</a></li>
		  <li><a href="#">&raquo;</a></li>
		</ul>
	</div>
</div>

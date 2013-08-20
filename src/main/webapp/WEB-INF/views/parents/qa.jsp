<%@ page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<h4>문의내역</h4>

<div class="row">
	<div class="col-lg-12">
		<span>정대원 님의 문의 내역입니다.</span>
	</div>
</div>

<div class="row">
	<div class="col-lg-12">
		<table class="table table-hover table-striped">
			<thead>
				<tr>
					<th>No</th>
					<th>문의내역</th>
					<th>답변상태</th>
					<th>문의일</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach begin="1" end="15" varStatus="status">
					<tr>
						<td>${ status.count }</td>
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

<%@ page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<h4>쿠폰내역</h4><br>
<a href="${ contextPath }/mypage/addCoupon.do" class="btn btn-default">쿠폰등록</a>

<div class="row">
	<div class="col-lg-12">
		<a href="#" class="btn btn-primary">포인트</a>
		<a href="#" class="btn btn-default">쿠폰</a>
		<span class="pull-right">포인트 적립 및 사용내역을 한눈에 확인해 보실 수 있습니다.</span>
	</div>
</div>

<div class="row">
	<div class="col-lg-12">
		<table class="table table-hover table-striped">
			<thead>
				<tr>
					<th>적립날짜</th>
					<th>포인트</th>
					<th>적립방법</th>
					<th>만료예정</th>
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

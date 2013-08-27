<%@ page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<h4>월별학습현황</h4>

<div class="row">
	<div class="col-lg-12">
		<h4>과거 이용내역</h4><br>
		<a href="${ contextPath }/mypage/purchasingInfo.do" class="btn btn-default">현재이용내역</a>
	</div>
</div>

<div class="row">
	<div class="col-lg-12">
		<a href="#" class="btn btn-primary">서비스 이용현황</a>
		<a href="#" class="btn btn-default">이용정지</a>
		<span class="pull-right">결제내역: cha3345 님의 정액제 결제 내역입니다.</span>
	</div>
</div>
<div class="row">
	<div class="col-lg-12">
		<table class="table table-hover table-striped">
			<thead>
				<tr>
					<th>구매날짜</th>
					<th>요금제</th>
					<th>가격</th>
					<th>결제방법</th>
					<th>현재상태</th>
					<th>사용개시</th>
					<th>만료예정</th>
					<th>잔여기간</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach begin="1" end="15" varStatus="status">
					<tr>
						<td>${ status.count }</td>
						<td></td>
						<td></td>
						<td></td>
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

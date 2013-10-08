<%@ page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<div class="row">
	<div class="col-lg-12">
		<table class="table table-hover table-striped">
			<thead>
				<tr>
					<th>등록날짜</th>
					<th>쿠폰번호</th>
					<th>쿠폰명</th>
					<th>쿠폰만료일</th>
					<th>상태</th>
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
		<a class="btn btn-default pull-right" id="addCoupon">쿠폰등록</a>
	</div>
</div>

<script type="text/javascript">
	$("#addCoupon").click(function(){
		window.open("${ contextPath }/mypage/addCoupon.do", 'window', 'width=500,height=250');
	});
</script>
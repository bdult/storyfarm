<%@ page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<div id="divContent">
	<h2 class="divTit">
		<img src="${ contextPath }/assets/images/mypage/title_coupon.gif" alt="쿠폰내역">
	</h2>
	<!-- location -->
	<div id="divLocation">
		<ul class="location">
			<li class="first"><a href="${ contextPath }" class="home"><img src="${ contextPath }/assets/images/common/blt_home.gif" alt="home"></a></li>
			<li><a href="${ contextPath }/mypage/info.do">마이페이지</a></li>
			<li class="current">쿠폰내역</li>
		</ul>
	</div>
	<!-- //location -->

	<table class="list">
		<colgroup>
			<col width="105">
			<col width="190">
			<col width="190">
			<col width="110">
			<col width="*">
		</colgroup>
		<thead>
			<tr>
				<th class="fir">등록날짜</th>
				<th>쿠폰번호</th>
				<th>쿠폰명</th>
				<th>쿠폰만료일</th>
				<th class="last">상태</th>
			</tr>
		</thead>
		<tbody>
			<tr>
				<td>2013-09-25</td>
				<td>7532-aser-9632-tgbv</td>
				<td>8월 이벤트</td>
				<td>2013-10-30</td>
				<td>미사용</td>
			</tr>
			<tr>
				<td>2013-09-25</td>
				<td>7532-aser-9632-tgbv</td>
				<td>8월 이벤트</td>
				<td>2013-10-30</td>
				<td>미사용</td>
			</tr>
			<tr>
				<td>2013-09-25</td>
				<td>7532-aser-9632-tgbv</td>
				<td>8월 이벤트</td>
				<td>2013-10-30</td>
				<td>미사용</td>
			</tr>
			<tr>
				<td>2013-09-25</td>
				<td>7532-aser-9632-tgbv</td>
				<td>8월 이벤트</td>
				<td>2013-10-30</td>
				<td>미사용</td>
			</tr>
			<tr>
				<td>2013-09-25</td>
				<td>7532-aser-9632-tgbv</td>
				<td>8월 이벤트</td>
				<td>2013-10-30</td>
				<td>미사용</td>
			</tr>
			<tr>
				<td>2013-09-25</td>
				<td>7532-aser-9632-tgbv</td>
				<td>8월 이벤트</td>
				<td>2013-10-30</td>
				<td>미사용</td>
			</tr>
			<tr>
				<td>2013-09-25</td>
				<td>7532-aser-9632-tgbv</td>
				<td>8월 이벤트</td>
				<td>2013-10-30</td>
				<td>미사용</td>
			</tr>
			<tr>
				<td>2013-09-25</td>
				<td>7532-aser-9632-tgbv</td>
				<td>8월 이벤트</td>
				<td>2013-10-30</td>
				<td>미사용</td>
			</tr>
			<tr>
				<td>2013-09-25</td>
				<td>7532-aser-9632-tgbv</td>
				<td>8월 이벤트</td>
				<td>2013-10-30</td>
				<td>미사용</td>
			</tr>
			<tr>
				<td>2013-09-25</td>
				<td>7532-aser-9632-tgbv</td>
				<td>8월 이벤트</td>
				<td>2013-10-30</td>
				<td>미사용</td>
			</tr>
		</tbody>
	</table>

	<!--paginate -->
  <div class="paginate_complex"><a class="direction prev" href="#"><img src="${ contextPath }/assets/images/common/btn_pagingPre_off.gif" alt="이전 페이지 이동" class="rollimg"></a><a href="#" class="first">1</a><a href="#">2</a><a href="#">3</a><a href="#">4</a><strong>5</strong><a href="#">6</a><a href="#">7</a><a href="#">8</a><a href="#">889</a><a class="direction next" href="#"><img src="${ contextPath }/assets/images/common/btn_pagingNext_off.gif" alt="다음 페이지 이동" class="rollimg"></a>
  </div>
		<!--//paginate -->
	<div class="btnSc aright">
		<a id="addCoupon"><img src="${ contextPath }/assets/images/common/btn_coupon_off.gif" alt="쿠폰등록" class="rollimg"></a>
	</div>

</div>

<script type="text/javascript">
	$("#addCoupon").click(function() {
		window.open("${ contextPath }/mypage/addCoupon.do", 'window', 'width=500,height=250');
	}).hover(function(){
		$(this).css("cursor", "pointer");
	});
</script>
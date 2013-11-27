<%@ page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<div id="divContent">
	<h2 class="divTit">
		<img src="${ contextPath }/assets/images/mypage/title_buy.gif" alt="구매내역">
	</h2>
	<!-- location -->
	<div id="divLocation">
		<ul class="location">
			<li class="first"><a href="${ contextPath }/" class="home"><img src="${ contextPath }/assets/images/common/blt_home.gif" alt="home"></a></li>
			<li><a href="${ contextPath }/mypage/purchasingInfo.do">구매내역</a></li>
			<li class="current">현재이용내역</li>
		</ul>
	</div>
	<!-- //location -->

	<div class="divTab">
		<ul class="tab01">
			<li><a href="${ contextPath }/mypage/purchasingInfo.do" class="on"><span>현재 이용내역</span></a></li>
			<li><a href="${ contextPath }/mypage/purchasingInfoPast.do"><span>과거 이용내역</span></a></li>
		</ul>
	</div>

	<div class="mypageTx01 mgt20">
		<span class="fontOrange">현재 유료로 이용중인 서비스내역은 아래와 같습니다!</span>
	</div>

	<table class="data mgt20">
		<colgroup>
			<col width="25%">
			<col width="*">
		</colgroup>
		<tbody>
			<tr>
				<th><strong>구매일자</strong></th>
				<td class="fontBlue">2013-09-28</td>
			</tr>
			<tr>
				<th><strong>이용 요금제</strong></th>
				<td class="fontBlue">프리미엄 요금제</td>
			</tr>
			<tr>
				<th><strong>서비스 이용기간</strong></th>
				<td class="fontBlue">2013년 9월 1일 -2013년 10월 1일</td>
			</tr>
			<tr>
				<th><strong>서비스 요금</strong></th>
				<td class="fontBlue">9,900 원</td>
			</tr>
			<tr>
				<th><strong>결제방법</strong></th>
				<td class="fontBlue">신용카드</td>
			</tr>
			<tr>
				<th><strong>잔여기간</strong></th>
				<td class="fontBlue">30일</td>
			</tr>
		</tbody>
	</table>

	<div class="btnSc aright">
		<a href="#"><img src="${ contextPath }/assets/images/common/btn_receipt_off.gif" alt="영수증발급" class="rollimg"></a>
	</div>

</div>

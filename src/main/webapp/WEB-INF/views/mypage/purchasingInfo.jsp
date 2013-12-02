<%@ page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>

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
				<td class="fontBlue"><fmt:formatDate value="${ purchaseInfo.REG_DT }" pattern="yyyy년MM월dd일"/></td>
			</tr>
			<tr>
				<th><strong>이용 요금제</strong></th>
				<td class="fontBlue">${ purchaseInfo.PAYMENT_CODE }</td>
			</tr>
			<tr>
				<th><strong>서비스 이용기간</strong></th>
				<td class="fontBlue"><fmt:formatDate value="${ purchaseInfo.START_DT }" pattern="yyyy년MM월dd일"/> - <fmt:formatDate value="${ purchaseInfo.EXPIRE_DT }" pattern="yyyy년MM월dd일"/></td>
			</tr>
			<tr>
				<th><strong>서비스 요금</strong></th>
				<td class="fontBlue"><fmt:formatNumber value="${ purchaseInfo.PRICE }" type="currency" currencySymbol="￦"/> 원</td>
			</tr>
			<tr>
				<th><strong>결제방법</strong></th>
				<td class="fontBlue">${ purchaseInfo.PAYMENT_PROCESS }</td>
			</tr>
			<tr>
				<th><strong>잔여기간</strong></th>
				<td class="fontBlue">${ purchaseInfo.REMAIN_DAYS }</td>
			</tr>
		</tbody>
	</table>
	
	<div class="btnSc aright">
		<a href="#"><img src="${ contextPath }/assets/images/common/btn_receipt_off.gif" alt="영수증발급" class="rollimg"></a>
	</div>

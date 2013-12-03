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
			<li class="current">과거이용내역</li>
		</ul>
	</div>
	<!-- //location -->
	
	<div class="divTab">
		<ul class="tab01">
			<li><a href="${ contextPath }/mypage/purchasingInfo.do"><span>현재 이용내역</span></a></li>
			<li><a href="${ contextPath }/mypage/purchasingInfoPast.do" class="on"><span>과거 이용내역</span></a></li>
		</ul>
	</div>
	
	<table class="list mgt10">
		<colgroup>
			<col width="105">
			<col width="88">
			<col width="88">
			<col width="88">
			<col width="100">
			<col width="100">
			<col width="*">
		</colgroup>
		<thead>
			<tr>
				<th class="fir">구매날짜</th>
				<th>요금제</th>
				<th>가격</th>
				<th>결제방법</th>
				<th>사용개시</th>
				<th>만료일</th>
				<th class="last">영수증발급요청</th>
			</tr>
		</thead>
		<tbody>
			<c:forEach items="${ purchaseList }" var="obj">
				<tr>
					<td><fmt:formatDate value="${ obj.REG_DT }" pattern="yyyy년MM월dd일"/></td>
					<td>${ obj.PAYMENT_CODE }</td>
					<td><fmt:formatNumber value="${ obj.PRICE }" type="currency" currencySymbol="￦"/> 원</td>
					<td>${ obj.PAYMENT_PROCESS }</td>
					<td><fmt:formatDate value="${ obj.START_DT }" pattern="yy년MM월dd일"/></td>
					<td><fmt:formatDate value="${ obj.EXPIRE_DT }" pattern="yy년MM월dd일"/></td>
					<td><a href="javascript:receiptSubmit()" class="fontBlue">[영수증발급]</a></td>
				</tr>
			</c:forEach>
		</tbody>
	</table>
	

<!--paginate -->
<div class="paginate_complex">
	<c:if test="${ not empty pageLink }">
		<c:if test="${ not empty pageLink.pagePrev }">
		<a class="direction prev" href="${ contextPath }/cscenter/notice.do?pageNum=${ pageLink.pagePrev }${ empty search.search? '' : search.search }"><img src="${ contextPath }/assets/images/common/btn_pagingPre_off.gif"  alt="이전 페이지 이동"  class="rollimg"></a>
		</c:if>
		<c:forEach items="${ pageLink.pageList }" var="page">
			<c:choose>
				<c:when test="${ page.pageNum eq pageLink.pageNum }">
					<strong>${ page.pageNum }</strong>
				</c:when>
				<c:otherwise>
					<a href="${ contextPath }/cscenter/notice.do?pageNum=${ page.pageNum }${ empty search.search? '' : search.search }&search=${ searchList.search }">${ page.pageNum }</a>
				</c:otherwise>
			</c:choose>
		</c:forEach>
		<c:if test="${ not empty pageLink.pageNext }">
		<a class="direction next" href="${ contextPath }/cscenter/notice.do?pageNum=${ pageLink.pageNext }${ empty search.search? '' : search.search }"><img src="${ contextPath }/assets/images/common/btn_pagingNext_off.gif" alt="다음 페이지 이동"  class="rollimg"></a>
		</c:if>
	</c:if>
</div>
<!--//paginate -->
                       
<script type="text/javascript">
	
	function receiptSubmit(){
		alert("서비스 준비중 입니다.");
	}

</script>

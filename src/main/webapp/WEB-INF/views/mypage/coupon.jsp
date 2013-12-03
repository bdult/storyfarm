<%@ page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>

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
			<col width="110">
			<col width="170">
			<col width="*">
			<col width="110">
			<col width="50">
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
			<c:forEach items="${ couponList }" var="obj">
				<tr>
					<td><fmt:formatDate value="${ obj.REG_DT }" pattern="yyyy년MM월dd일"/></td>
					<td>${ obj.COUPON }</td>
					<td>${ obj.NAME }</td>
					<td><fmt:formatDate value="${ obj.EXPIRE_DT }" pattern="yyyy년MM월dd일"/></td>
					<td>${ obj.STATUS }</td>
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

	<div class="btnSc aright">
		<a href="javascript:showHide('popCoupon');"><img src="${ contextPath }/assets/images/common/btn_coupon_off.gif" alt="쿠폰등록" class="rollimg"></a>
	</div>

</div>

<!-- 쿠폰등록팝업 -->
<div class="layPop" id="popCoupon" style="display:none;">
	<div class="bg"></div>
    <div class="popCoupon">
    	<h3 class="tit"><img src="${ contextPath }/assets/images/mypage/title_coupon2.gif" alt="오즈월드 쿠폰등록"></h3>
        <div class="popCon">
        	<p>쿠폰에 등록된 코드를 정확하게 입력해주세요.</p>
          	<div class="regForm">
           		<p>
           	  		<input name="" type="text" style="width:90px;"> <input name="" type="text" style="width:90px;"> <input name="" type="text" style="width:90px;"> <input name="" type="text" style="width:90px;">
              	</p>
              	<p class="btnSc"><a id="addCoupon" href="#"><img src="${ contextPath }/assets/images/common/btn_coupon2_off.gif" alt="쿠폰등록" class="rollimg"></a></p>
            </div>
            <div class="box06 mgt20">
            	<ul class="ulLst01 mgl20">
                	<li>지급 받으신 쿠폰번호를 정확히 입력해주세요.</li>
                	<li>쿠폰에 명시된 유효기간을 확인해 주세요. </li>
                	<li>입력된 쿠폰은 재 사용이 안됩니다.</li>
                </ul>
                <span class="bg1"></span><span class="bg2"></span><span class="bg3"></span><span class="bg4"></span>
            </div>
        </div>
        <p class="btClose"><a href="javascript:showHide('popCoupon');"><img src="${ contextPath }/assets/images/common/btn_x.gif" alt="close"></a></p>
    </div>
</div>
<!-- //쿠폰등록팝업 -->

<script type="text/javascript">
$(function(){
	
	$("#addCoupon").click(function(e) {
		e.preventDefault();
		
		$.getJSON( "${ contextPath }/mypage/addCoupon.ajax", { coupon : 1111222233334444 } )
		  .done(function( json ) {
			  alert( json.msg );
			  window.location.reload();
		  })
		  .fail(function( jqxhr, textStatus, error ) {
			  alert( json.msg );
				showHide('popCoupon');
		});
		
	});
	
});
</script>
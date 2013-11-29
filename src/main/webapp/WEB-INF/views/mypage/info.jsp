<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!-- divContent -->
<div id="divContent">
	<h2 class="divTit">
		<img src="${ contextPath }/assets/images/mypage/title_mypage.gif" alt="마이페이지">
	</h2>
	<!-- location -->
	<div id="divLocation">
		<ul class="location">
			<li class="first"><a href="${ contextPath }/" class="home"><img src="${ contextPath }/assets/images/common/blt_home.gif" alt="home"></a></li>
			<li class="current">마이페이지</li>
		</ul>
	</div>
	<!-- //location -->

	<div class="mypageTx01">
		안녕하세요. <strong>${ userInfoSession.MEMBER_ID }</strong>님!
	</div>

	<div class="mypageRow">
		<dl>
			<dt>
				현재 이용중인 서비스 <a href="${ contextPath }/mypage/purchasingInfo.do"><img src="${ contextPath }/assets/images/common/btn_detailVew_off.gif" alt="자세히보기" class="btVew rollimg"></a>
			</dt>
			<dd>
				<ul class="ulLst04 mgl20">
					<li class="mgt20">프리미엄 서비스를 이용하시고 계십니다.</li>
					<li>이용가능메뉴 : 전체 메뉴 이용가능</li>
					<li>이용기간 : 2013.09.15까지</li>
				</ul>
			</dd>
		</dl>
		<dl class="floatR">
			<dt>
				1:1 문의 내역 <a href="${ contextPath }/mypage/question.do"><img src="${ contextPath }/assets/images/common/btn_detailVew_off.gif" alt="자세히보기" class="btVew rollimg"></a>
			</dt>
			<dd>
				<ul class="ulLst04 brdB">
					<c:forEach var="questionList" items="${ questionList }">
						<li>
							<c:choose>
								<c:when test="${ questionList.STATUS == 0 }">
									<span class="fontRed">미처리</span>
								</c:when>
								<c:otherwise>
									<span>답변</span>
								</c:otherwise>
							</c:choose>
							<a href="${ contextPath }/mypage/questionDetail.do?contentsId=${ questionList.CONTENTS_ID }">${ questionList.TITLE }</a>
						</li>
					</c:forEach>
				</ul>
			</dd>
		</dl>
	</div>

	<div class="mypageLst">
		<ul>
			<li class="mn01"><a href="javascript:showHide('popCoupon');"><img src="${ contextPath }/assets/images/common/btn_mypage1_off.png" alt="쿠폰등록" class="rollimg"></a></li>
			<li class="mn02"><a href="${ contextPath }/mypage/userInfo.do"><img src="${ contextPath }/assets/images/common/btn_mypage2_off.png" alt="회원정보수정" class="rollimg"></a></li>
			<li class="mn03"><a href="${ contextPath }/mypage/pause.do"><img src="${ contextPath }/assets/images/common/btn_mypage3_off.png" alt="일시중지" class="rollimg"></a></li>
		</ul>
	</div>

	<p class="mgt30">
		<img src="${ contextPath }/assets/images/customer/event_banner.jpg" alt="">
	</p>

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
		  })
		  .fail(function( jqxhr, textStatus, error ) {
			  alert( json.msg );
		});
		
		showHide('popCoupon');
		
	});
	
});
</script>

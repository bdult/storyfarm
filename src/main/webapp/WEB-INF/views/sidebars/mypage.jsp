<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<h2><img src="${ contextPath }/assets/images/common/h2_mypage.gif" alt="마이페이지"></h2>
<ul id="lm">
	<li><a href="${ contextPath }/mypage/payment.do" class="lm0501">유료서비스 결제</a></li>
	<li><a href="${ contextPath }/mypage/purchasingInfo.do" class="lm0502">구매내역</a>
    	<ul>
        	<li><a href="${ contextPath }/mypage/purchasingInfo.do" class="lm050201">현재이용내역</a></li>
            <li><a href="${ contextPath }/mypage/purchasingInfoPast.do" class="lm050202">과거이용내역</a></li>
        </ul>
    </li>
	<li><a href="${ contextPath }/mypage/coupon.do" class="lm0503">쿠폰내역</a></li>
	<li><a href="${ contextPath }/mypage/pauseRequest.do" class="lm0504">일시중지</a>
    	<ul>
        	<li><a href="#" class="lm050401">일시중지 신청</a></li>
            <li><a href="#" class="lm050402">일시중지 해지</a></li>
        </ul>
    </li>
	<li><a href="${ contextPath }/mypage/question.do" class="lm0505">1:1문의</a></li>
	<li><a href="${ contextPath }/mypage/userInfo.do" class="lm0506">회원정보수정</a></li>
</ul>

<script>
$("#lm").find("a").each(function(){
	var $this = $(this);
	if( $this.attr("href") == window.location.pathname ) {
		$this.addClass("on");

		if( '${ contextPath }/mypage/purchasingInfoPast.do' == window.location.pathname ) {
			$("a.lm0502").addClass("on");
		}
	}
});
</script>

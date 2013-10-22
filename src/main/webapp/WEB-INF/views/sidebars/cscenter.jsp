<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<h2><img src="${ contextPath }/assets/images/common/h2_customer.gif" alt="고객센터"></h2>
<ul id="lm" data-seq="${ lmSeq }">
	<li><a href="${ contextPath }/cscenter/notice.do" class="lm0201">공지사항</a></li>
	<li><a href="${ contextPath }/cscenter/event.do" class="lm0202">이벤트</a></li>
	<li><a href="${ contextPath }/cscenter/faq.do" class="lm0203">FAQ</a></li>
	<li><a href="${ contextPath }/cscenter/ask.do" class="lm0204">문의하기</a></li>
</ul>

<script>
$(function(){
	
	//CSCENTER LNB HIGHLIGHT
	var $leftMenu = $("#lm");
	$leftMenu
		.find("li").eq( $leftMenu.data("seq") )
			.find("a").addClass("on");
	
});
</script>

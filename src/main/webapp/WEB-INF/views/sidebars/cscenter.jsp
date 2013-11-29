<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<h2><img src="${ contextPath }/assets/images/common/h2_customer.gif" alt="고객센터"></h2>
<ul id="lm" data-seq="${ lmSeq }">
	<li><a href="${ contextPath }/cscenter/notice.do" class="lm0201">공지사항</a></li>
	<li><a href="${ contextPath }/cscenter/event.do" class="lm0202">이벤트</a>
    	<ul>
        	<li><a href="${ contextPath }/cscenter/event.do" class="lm020201">진행중인이벤트</a></li>
            <li><a href="${ contextPath }/cscenter/winner.do" class="lm020202">당첨자발표</a></li>
        </ul>
    </li>
	<li><a href="${ contextPath }/cscenter/faq.do?contents_code=BOT001" class="lm0203">FAQ</a></li>
	<li><a href="${ contextPath }/cscenter/email.do" class="lm0204">문의하기</a></li>
</ul>

<script>
$("#lm").find("a").each(function(){
	var $this = $(this);
	if( $this.attr("href") == window.location.pathname ) {
		$this.addClass("on");

		if( '${ contextPath }/cscenter/winner.do' == window.location.pathname ) {
			$("a.lm0202").addClass("on");
		}
	}
});
</script>

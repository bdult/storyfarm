<%@ page contentType="text/html" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<h2 class="divTit"><img src="../assets/images/customer/title_faq.gif" alt="FAQ"></h2>

<!-- location -->
<div id="divLocation">
	<ul class="location">
		<c:forEach items="${ breadcrumbs }" var="obj" varStatus="status">
			<c:choose>
				<c:when test="${ status.first }">
					<li class="first"><a href="${ contextPath }" class="home"><img src="${ contextPath }/assets/images/common/blt_home.gif" alt="home"></a></li>
				</c:when>
				<c:when test="${ status.last }">
					<li class="current">${ obj.name }</li>
				</c:when>
				<c:otherwise>
					<li><a href="${ contextPath }${ obj.url }">${ obj.name }</a></li>
				</c:otherwise>
			</c:choose>
		</c:forEach>
	</ul>
</div>
<!-- //location -->

<div class="divTab">
	<ul class="tab01">
		<c:forEach var="codeList" items="${ codeList }">
    	<li><a><span>${ codeList.CODE_DETAIL }</span></a></li>
        </c:forEach>
    </ul>
</div>

<div class="faqLst mgt20">
	<ul>
    	<li>
        	<div class="fa" id="out">
            	<span class="bltQ">Q</span>
                <p class="titTx">유료회원과 무료회원의 차이는 무엇인가요?</p>
            </div>
            <div class="divA" id="dpno0" style="display:none;">
            	<span class="bltA">A</span>
                <p class="txt">
                    무료 회원은 [무료체험] 메뉴를 통해 재미나라에서 제공하는 다양한 단계별 학습 콘텐츠를 언제든지 무료로 이용하실 수 있습니다.<br>
                    재미나라의 학습 형태와 학습 구조, 학습별 난이도를 미리 확인하실 수 있으며, 일부 제한되어 있는 학습만 이용할 수 있습니다<br> 
                    유료 회원은 결제하신 내역의 서비스를 이용하실 수 있으며 부모방 내 [학습정보] 메뉴에서 실시간으로 자녀의 학습진도를 확인하여 체계적인 학습 진행이 가능합니다.<br>
                    최대 2명의 자녀에 대한 개별 학습관리가 가능하며 재미나라에서 진행하는 무료강좌/시사회/전시회/이벤트 진행 시 우선 혜택을 드립니다.<br>
                    다음와 같이 재미나라 이용 요금을 안내하오니 참고해주시기 바랍니다. 
                </p>
            </div>
        </li>
        
        <c:forEach var="faqList" items="${ faqList }">
    	<li>
        	<div class="fa" id="out">
            	<span class="bltQ">Q</span>
                <p class="titTx">${ faqList.title }</p>
            </div>
            <div class="divA" id="dpno0" style="display:none;">
            	<span class="bltA">A</span>
                <p class="txt">
                 	${ faqList.contents }
                </p>
            </div>
        </li>
        </c:forEach>
    </ul>
</div>

<script type="text/javascript">

	$(".tab01 li a").eq(0).addClass("on");
	$(".lm0203").addClass("on");
	
	$(".tab01 li a").eq(0).click(function(){
		alert("test");
	});
</script>

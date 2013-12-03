<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<h2 class="divTit">
	<img src="${ contextPath }/assets/images/mypage/title_pause.gif" alt="일시중지">
</h2>
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

<div class="box01 memExit">
	
    <div class="tx01">
		<c:if test="${ userInfoSession.MEMBER_STATUS == 0 }">
				<h3>현재 고객님은 현재 서비스 <a href="#">이용중</a>입니다<br>
				이용정지를 신청하시려면 아래 정보를 입력해주세요</h3>
		</c:if>
		<c:if test="${ userInfoSession.MEMBER_STATUS == 1 }">
				<h3>현재 고객님은 서비스 일시중지중 입니다<br>
				다시 이용하시려면 아래 정보를 입력해주세요</h3>
		</c:if>
    </div>
	<div class="box03 exitForm">
    
    	<form id="pauseForm">
    	<ul>
        	<li><span class="titTx"><img src="${ contextPath }/assets/images/mypage/tx_id.gif" alt="아이디"></span>
        	  	<input type="text" class="input" name="member_id" placeholder="아이디">
        	</li>
        	<li><span class="titTx"><img src="${ contextPath }/assets/images/mypage/tx_pw.gif" alt="비밀번호"></span>
            	<input type="password" class="input" name="member_pw" placeholder="비밀번호">
            </li>
        </ul>
        </form>
		<c:if test="${ userInfoSession.MEMBER_STATUS == 0 }">
	        <p class="btExit"><a id="submit"><img src="${ contextPath }/assets/images/mypage/bt_pause2_off.gif" alt="일시중지 신청" class="rolling"></a></p>
	    </c:if>
		<c:if test="${ userInfoSession.MEMBER_STATUS == 1 }">
	        <p class="btExit"><a id="submit"><img src="${ contextPath }/assets/images/mypage/bt_pause_off.gif" alt="일시중지 해지" class="rolling"></a></p>
	    </c:if>
    	<span class="bg1"></span><span class="bg2"></span><span class="bg3"></span><span class="bg4"></span>
  	</div>
    <span class="bg1"></span><span class="bg2"></span><span class="bg3"></span><span class="bg4"></span>
</div>

<div class="boxDot mgt20">
	<div class="inner">
        <ul class="ulLst01 mgl50">
			<li>일시정지 신청 후 익일 오전 12시부터  서비스 이용이 정지됩니다.</li>
			<li>예시: 2013년 9월 5일 오후 3시 이용정지 신청 9월 6일 오전 0시 이용정지 반영</li>
			<li>일시정지 해지는 해지 후 재로그인 하시면 서비스를 이용하실 수 있습니다.</li>
			<li>일시정지를 해지하시는 날로부터 바로 해당 일자가 포함되어 남은 서비스 이용기간에 차감되오니 이점 유넘하시기 바랍니다.</li>
        </ul>
    </div>
</div>

<script type="text/javascript">
	if("${ msg }" == 'pauseSuccess'){
		alert("일시중지 되었습니다. 다시 로그인해 주세요.")
	}else if("${ msg }" == 'pauseCancelSuccess') {
		alert("일시중지해지 되었습니다. 다시 로그인해 주세요.")
	}else if("${ msg }" == 'pauseFail') {
		alert("아이디 혹은 비밀번호가 틀립니다. 다시 입력해 주세요.")
	}

	$("#submit").click(function(){
		$("#pauseForm").attr({
			method: 'post',
			action: '${ contextPath }/mypage/pauseRequest.do'
		}).submit();
	});
</script>
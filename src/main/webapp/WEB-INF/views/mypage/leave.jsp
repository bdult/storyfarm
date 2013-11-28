<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<h2 class="divTit"><img src="${ contextPath }/assets/images/mypage/title_exit.gif" alt="회원탈퇴"></h2>
<!-- location -->
<div id="divLocation">
    <ul class="location">
        <li class="first"><a href="${ contextPath }" class="home"><img src="${ contextPath }/assets/images/common/blt_home.gif" alt="home"></a></li>
        <li><a href="${ contextPath }/mypage/info.do">마이페이지</a></li>
        <li class="current">회원탈퇴</li>
    </ul>
</div>
<!-- //location -->

<div class="box01 memExit">
	
    <div class="tx01">회원 탈퇴를 위해 아래의 정보를 입력해 주시고,<br>탈퇴시의 불이익에 대한 유의사항에 대해서 꼭 확인해주시기 바랍니다.</div>
	<div class="box03 exitForm">
    
    	<form class="form" id="leaveForm">
    	<ul>
        	<li><span class="titTx"><img src="${ contextPath }/assets/images/mypage/tx_id.gif" alt="아이디"></span>
        	  	<input type="text" class="input" name="member_id" placeholder="아이디">
        	</li>
        	<li><span class="titTx"><img src="${ contextPath }/assets/images/mypage/tx_pw.gif" alt="비밀번호"></span>
            	<input type="password" class="input" name="member_pw" placeholder="비밀번호">
            </li>
        </ul>
        </form>
        <p class="btExit"><a id="submit"><img src="${ contextPath }/assets/images/mypage/btn_confiem_off.gif" alt="확인" class="rollimg"></a></p>
        <c:if test="${ msg == 'loginFail' }">
			아이디 혹은 비밀번호가 틀립니다. 다시 입력해 주세요.
		</c:if>
    	<span class="bg1"></span><span class="bg2"></span><span class="bg3"></span><span class="bg4"></span>
  	</div>
    <span class="bg1"></span><span class="bg2"></span><span class="bg3"></span><span class="bg4"></span>
</div>

<div class="boxDot mgt20">
	<div class="inner">
        <ul class="ulLst01 mgl50">
            <li>탈퇴 신청과 동시에 서비스 이용이 불가능하게 됩니다.</li>
            <li>유료회원일 경우 고객님의 변심으로 인한 경우 환불은 되지 않습니다.</li>
            <li>회원님의 신상정보 등의 경우 1개월간 보관 후 영구 삭제됩니다.</li>
            <li>탈퇴 신청 후 1개월 이내에는 신규 회원가입이 불가능합니다</li>
            <li>단순 실수로 인한 탈퇴나 기타 문의사항에 대해서는 고객센터(1588-9856)로 문의하여주시기 바랍니다. </li>
        </ul>
    </div>
</div>

<script type="text/javascript">
	$("#submit").click(function(){
		$("#leaveForm").attr({
			method: 'post',
			action: '${ contextPath }/mypage/leaveResult.do'
		}).submit();
	});
</script>

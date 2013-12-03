<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<div id="content">
	<h2 class="divTit"><img src="${ contextPath }/assets/images/member/title_login.gif" alt="로그인"></h2>
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
	
    <form id="login">
    <div class="box01 loginBox">
		<p class="txt01"><img src="${ contextPath }/assets/images/member/login_tx01.gif" alt="아이디와 패스워드를 입력하세요."></p>
		<fieldset>
		<legend>로그인하기</legend>
		<ul>
			<li><label for="userId"><img src="${ contextPath }/assets/images/member/login_txId.gif" alt="아이디"></label><input name="id" id="userId" type="text" class="input"></li>
			<li><label for="userPw"><img src="${ contextPath }/assets/images/member/login_txPw.gif" alt="비밀번호"></label><input name="pwd" id="userPw" type="password" class="input"></li>
			<li class="saveTx">
				<input name="userSaveId" id="userSave1" type="checkbox"> <label for="userSave1">ID 저장</label>
				<input name="userSavePw" id="userSave2" type="checkbox"> <label for="userSave2">PW 저장</label>
			</li>
		</ul>
		<p class="btLogin"><a href="#"><img src="${ contextPath }/assets/images/member/btn_login_off.gif" alt="login" class="rollimg"></a></p>
		</fieldset>
		<span class="bg1"></span><span class="bg2"></span><span class="bg3"></span><span class="bg4"></span>
    </div>
    </form>
    
    <ul class="loginBt">
		<li><span class="titTx">아이디를 모르시는 경우</span> <a href="${ contextPath }/findIdView.do"><img src="${ contextPath }/assets/images/member/btn_idFind_off.gif" alt="아이디찾기" class="rollimg"></a></li>
		<li><span class="titTx">비밀번호를 모르시는 경우</span> <a href="${ contextPath }/findPwdView.do"><img src="${ contextPath }/assets/images/member/btn_pwFind_off.gif" alt="비밀번호 찾기" class="rollimg"></a></li>
		<li class="btPay"><a href="${ contextPath }/introduce2.do"><img src="${ contextPath }/assets/images/member/btn_pay_off.gif" alt="유료결제서비스" class="rollimg"></a></li>
    </ul>
    
    <p class="loginBanner"><a href="${ contextPath }/joinProvision.do"><img src="${ contextPath }/assets/images/member/login_join.jpg" alt="무료회원가입 오즈월드 신규회원 가입하시면 다양한 혜택과 서비스를 제공 받으실 수 있습니다." ></a></p>
    
</div>
    
<script>

	//validate 초기화
	setValid();
	loginValidateCall();

if("${ msg }" == 'login_fail'){
	alert("회원정보가 일치하지 않습니다.");
}else if("${ msg }" == 'requiredUser'){
	alert("탈퇴된 회원입니다. 관리자에게 문의해 주세요.");
}

$(".btLogin").click(function(){
	$("#login").attr({
		method: 'post',
		action: '${ contextPath }/loginResult.do'
	}).submit();
});

$("#userSave2").change(function(){
	if($("#userSave2").is(":checked") == true){
		$("#userSave1").attr("checked", true);	
		$("#userSave2").attr("checked", true);	
	}
	
});

var idCheck = "${ cookie.userIdCheck.value }";
var pwdCheck = "${ cookie.userPwdCheck.value }";

if(idCheck == "on"){
	$("#userSave1").attr("checked", true);	
	$("#userId").val("${ cookie.userIdCookie.value }");
}else {
	$("#userSave1").attr("checked", false);	
}
if(pwdCheck == "on"){
	$("#userSave2").attr("checked", true);	
	$("#userPw").val("${ cookie.userPwdCookie.value }");
}else {
	$("#userSave2").attr("checked", false);	
}
</script>
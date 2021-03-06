<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<div id="content">

	<h2 class="divTit"><img src="${ contextPath }/assets/images/member/title_pwFind.gif" alt="비밀번호찾기"></h2>
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
 
	<div class="idFindBox">
	 	
	<div class="box01 fLeft">
		<h3><img src="${ contextPath }/assets/images/member/idFind_tx01.gif" alt="등록한 정보로 찾기"></h3>
	<p class="tx01">오즈월드에 등록한 정보로 비밀번호를 찾으실 수 있습니다.</p>
	<div class="formFind">
		<div class="divChk">
		<label for="userChk01"><input name="optionsRadios" id="phone_radio" type="radio" value="option1" checked> 휴대폰</label>
		<label for="userChk02" class="mgl10"><input name="optionsRadios" id="email_radio" type="radio" value="option2"> 이메일</label>
		<label for="userChk03" class="mgl10"><input name="optionsRadios" id="birth_radio" type="radio" value="option3"> 생년월일</label>
	</div>
	
	<div class="divForm" id="changeTextArea">
		<form id="memberFind-tel">
			<ul>
				<li>
					<label for="userId">아이디</label>
						<input name="member_id" id="userId" type="text" class="input" style="width:240px;">
					</li>
				<li>
					<label for="userName">이름</label>
					<input name="member_nm" id="userName" type="text" class="input" style="width:240px;">
				</li>
				<li>
			  		<label for="userHp">휴대폰</label>
					<input type="hidden" id="member_cel" name="member_cel">
					<select name="cel1" id="cel1" class="select" style="width:85px;">
					  	<option>선택</option>
					  	<option>011</option>
					</select> - 
					<input name="cel2" id="cel2" class="input" type="text" style="width:144px;">
					</li>
			</ul>
		</form>
	
		<form id="memberFind-email" style="display: none;">
			<ul>
				<li>
					<label for="userId">아이디</label>
					<input name="member_id" id="userId" type="text" class="input" style="width: 240px;">
				</li>
				<li>
					<label for="userName">이름</label>
					<input name="member_nm" type="text" class="input" style="width: 240px;">
				</li>
				<li>
					<label for="userMail">이메일</label>
					<input name="member_email" id="member_email" type="text" class="input" style="width: 240px;">
				</li>
			</ul>
		</form>
		
		<form id="memberFind-birth" style="display: none;">
			<ul>
				<li>
					<label for="userId">아이디</label>
					<input name="member_id" id="userId" type="text" class="input" style="width:240px;">
			  	</li>
				<li>
			  		<label for="userName">이름</label>
					<input name="member_nm" type="text" class="input" style="width:240px;">
			  	</li>
				<li>
					<label for="userMail">생년월일</label>
					<select name="member_year" id="yearBox" class="select" style="width:73px;">
						<option>년도</option>
					</select> -
					<select name="member_month" id="monthBox" class="select" style="width:73px;">
						<option>월</option>
					</select> -
					<select name="member_day" id="dayBox" class="select" style="width:73px;">
						<option>일</option>
					</select>
				</li>
				<li>
					<label>성별</label>
					<input name="member_gender" type="radio" value="남"> 남
					<input name="member_gender" type="radio" value="여" class="mgl10"> 여
				</li>
			</ul>
		</form>
	</div>
	
	</div>

	<div class="btnSc">
		<a href="#" id="submit_btn"><img src="${ contextPath }/assets/images/common/btn_confirm_off.gif" alt="확인" class="rollimg"></a>
	</div>

	<span class="bg1"></span><span class="bg2"></span><span class="bg3"></span><span class="bg4"></span>

	</div>
  
	<div class="box01 fRight">
	<h3><img src="${ contextPath }/assets/images/member/idFind_tx02.gif" alt="등록한 정보로 찾기"></h3>
	<p class="tx01">실명이 확인된 아이디는 아이핀 또는 본인 명의의 휴대폰으로 찾을 수 있습니다.</p>
		<div class="formFind">
			<div class="divChk">
				<label for="userChk011"><input name="rightRadioBtn" id="userChk011" type="radio" value="" checked> 아이핀</label>
				<label for="userChk022" class="mgl10"><input name="rightRadioBtn" id="userChk022" type="radio" value=""> 휴대폰</label>
			</div>
			<div class="divForm" id="changeTextArea2">
			<div class="changeP">
				아이핀으로 본인 확인을 합니다.<br>
				아이핀이 없다면, 아래의 링크에서 <strong class="fontRed"><span>바로 발급</span></strong> 받으실 수 있습니다.
			<div class="btnSc">
				<a href="#"><img src="${ contextPath }/assets/images/member/btn_ipin_off.gif" alt="아이핀 발급받기" class="rollimg"></a>
				</div>
			</div>
			<div class="changeH" style="display: none;">
				본의 명의의 휴대폰으로 아이디를 찾으려면 아래의 <strong class="fontRed"><span>[확인]</span></strong> 버튼을 클릭하세요.
			</div>
			</div>
		</div>

	<div class="btnSc">
		<a href="#"><img src="${ contextPath }/assets/images/common/btn_confirm_off.gif" alt="확인" class="rollimg"></a>
	</div>

	<span class="bg1"></span><span class="bg2"></span><span class="bg3"></span><span class="bg4"></span>
	</div>
  
	</div>
 
</div>

<script type="text/javascript">

	//validate 초기화
	setValid();
	findValidateCall();

	$("#userChk011").change(function(){
		$(".changeP").show();
		$(".changeH").css("display", "none");
	});
	$("#userChk022").change(function(){
		$(".changeP").css("display", "none");
		$(".changeH").show();
	});
	
	$("#phone_radio").change(function(){
		$("#memberFind-tel").show();
		$("#memberFind-email").css("display", "none");
		$("#memberFind-birth").css("display", "none");
	});
	$("#email_radio").change(function(){
		$("#memberFind-email").show();
		$("#memberFind-tel").css("display", "none");
		$("#memberFind-birth").css("display", "none");
	});
	$("#birth_radio").change(function(){
		birth();
		$("#memberFind-birth").show();
		$("#memberFind-tel").css("display", "none");
		$("#memberFind-email").css("display", "none");
	});
	
	$("#submit_btn").click(function(){
		
		if($("#phone_radio").is(":checked") == true){
			$("#member_cel").attr({
				value: $("#cel1").val() + "-" + $("#cel2").val()
			});
			$("#memberFind-tel").attr({
				method: 'post',
				action: '${ contextPath }/findPwdResult.do'
			}).submit();
		}else if($("#email_radio").is(":checked") == true){
			$("#memberFind-email").attr({
				method: 'post',
				action: '${ contextPath }/findPwdResult.do'
			}).submit();
		}else if($("#birth_radio").is(":checked") == true){
			$("#memberFind-birth").attr({
				method: 'post',
				action: '${ contextPath }/findPwdResult.do'
			}).submit();
		}
	});
</script>
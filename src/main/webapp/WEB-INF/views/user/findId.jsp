<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<div class="row">
	<div class="col-lg-12 text-left">
		<h3>아이디 찾기_사이트내 등록한 정보와 본인인증수단으로 찾으실 수 있습니다.</h3>
	</div>
</div>
<div class="row">
	<div class="col-lg-6">
		<div class="well">
			<p class="text-center">등록한 정보로 찾기</p>
			오즈월드에 등록한 정보로 아이디를 찾으실 수 있습니다.<br><br>
			<div class="col-lg-12 text-center">
			<label class="inline">
				<input type="radio" id="phone_radio" name="optionsRadios" value="option1" checked>휴대폰 &nbsp;&nbsp;
			</label>
			<label class="inline">
				<input type="radio" id="email_radio" name="optionsRadios" value="option2">이메일 &nbsp;&nbsp;
			</label>
			<label class="inline">
				<input type="radio" id="birth_radio" name="optionsRadios" value="option3">생년월일
			</label>
			</div>

			<br>

			<form class="form-horizontal" id="memberFind-tel" method="get" action="${ contextPath }/findIdResult.do">
				<div class="form-group">
					<label class="col-lg-2 control-label">이름</label>
					<div class="col-lg-10">
						<input type="text" name="member_nm" class="form-control">
					</div>
				</div>
				
				<div class="form-group" id="phone_group">
					<label for="inputPassword1" class="col-lg-2 control-label">휴대폰</label>
					<input type="hidden" id="member_tel" name="member_tel">
					<div class="col-lg-3"> 
						<select class="form-control" id="tel1">
							<option>010</option>
							<option>011</option>
							<option>012</option>
							<option>013</option>
							<option>014</option>
						</select>
					</div>
					<div class="col-lg-3">
						<input type="text" id="tel2" class="form-control">
					</div>
					<div class="col-lg-3">
						<input type="text" id="tel3" class="form-control">
					</div>
				</div>
				<div class="col-lg-12 text-center">
					<button class="btn btn-default" id="submit-btn">확인</button>
				</div>
			</form>
			
			<form class="form-horizontal" id="memberFind-email" method="get" action="${ contextPath }/findIdResult.do" style="display:none;"> 
				<div class="form-group">
					<label class="col-lg-2 control-label">이름</label>
					<div class="col-lg-10">
						<input type="text" name="member_nm" class="form-control">
					</div>
				</div>
				
				<div class="form-group">
					<label class="col-lg-2 control-label">이메일</label>
					<div class="col-lg-10">
						<input type="text" name="member_email" class="form-control">
					</div>
				</div>
				<div class="col-lg-12 text-center">
					<button class="btn btn-default" id="submit-btn">확인</button>
				</div>
				
			</form>
			<form class="form-horizontal" id="memberFind-birth" method="get" action="${ contextPath }/findIdResult.do" style="display:none;">
				<div class="form-group" >
					<label class="col-lg-2 control-label">이름</label>
					<div class="col-lg-10">
						<input type="text" name="member_nm" class="form-control">
					</div>
				</div>
			
				<div class="row">
				<label class="col-lg-2 control-label">생년월일</label>
				<div class="col-lg-3">
					<select class="form-control" id="yearBox" name="member_year">
						<option>년도</option>
					</select>
				</div>
				<div class="col-lg-3">
					<select class="form-control" id="monthBox" name="member_month">
						<option>월</option>
					</select>
				</div>
				<div class="col-lg-3">
					<select class="form-control" id="dayBox" name="member_day">
						<option>일</option>
					</select>
				</div>
				</div>
				<div class="row">
				<div class="form-group row" id="gender_group">
					<label class="col-lg-2 control-label">성별</label>
					
					<div class="col-lg-2 text-center">
					<label class="inline">
						<input type="radio" name="member_gender" name="optionsRadios" value="남">남
					</label>
					
					<label class="inline">
						<input type="radio" name="member_gender" name="optionsRadios" value="여">여
					</label>
					</div>
				</div>
				</div>
				<div class="col-lg-12 text-center">
					<button class="btn btn-default" id="submit-btn">확인</button>
				</div>
			</form>
		</div>
	</div>
	<div class="col-lg-6">
		<div class="well">
			<p class="text-center">본인 인증 수단으로 찾기</p>
			오즈월드에 등록한 정보로 아이디를 찾으실 수 있습니다.<br><br>
			<div class="col-lg-12 text-center">
				<label class="inline">
					<input type="radio"  name="optionsRadios" value="option1">아이핀 &nbsp;&nbsp;
				</label>
				<label class="inline">
					<input type="radio"  name="optionsRadios" value="option2">휴대폰 &nbsp;&nbsp;
				</label>
			</div>
			<br>
			아이핀으로 본인확인을 합니다.<br>
			아이핀이 없다면, 아래의 링크에서 바로 발급 받으실 수 있습니다.<br><br>
			<div class="col-lg-12 text-center">
				<a class="btn btn-default">아이핀 발급 받기</a>
			</div><br><br>
			<div class="col-lg-12 text-center">
				<a class="btn btn-default">확인</a>
			</div>
		</div>
	</div>
</div>
<!--/row-fluid-->

<script type="text/javascript">

	for(var i=2013; i >= 1900; i--){
		$("#yearBox").append("<option value=" + i +">" + i + "</option>");
	}
	for(var i=1; i <= 12; i++){
		$("#monthBox").append("<option value=" + i +">" + i + "</option>");
	}
	for(var i=1; i <= 31; i++){
		$("#dayBox").append("<option value=" + i +">" + i + "</option>");
	}
	
	$("#phone_radio").change(function(){
		$("#memberFind-tel").show();
		$("#memberFind-email").css("display", "none");
		$("#memberFind-birth").css("display", "none");
	});
	$("#email_radio").change(function(){
		$("#memberFind-email").show();
		$("#memberFind-tel").css("display", "none");
		$("#memberFind-birth").css("display", "none");
	});;
	$("#birth_radio").change(function(){
		$("#memberFind-birth").show();
		$("#memberFind-tel").css("display", "none");
		$("#memberFind-email").css("display", "none");
	});
	
	$("#submit-btn").click(function(){
		$("#member_tel").attr({
			value: $("#tel1").val() + "-" + $("#tel2").val() + "-" + $("#tel3").val()
		});
		
		$("#memberFind-form").attr({
			method: 'get',
			action: '${ contextPath }/findIdResult.do'
		});
	});
</script>
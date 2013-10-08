<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<div class="row">
	<div class="col-lg-12 text-left">
		<h3>회원가입_이용약관동의</h3><br>
	</div>
	<div class="col-lg-12 text-left">
		<div class="well">
		오즈월드 회원 가입을 환영합니다.<br> 
		전 세계 명작 학습 동화 와 다양한 콘텐츠를 최적의 환경에서 제공 하겠습니다.<br><br>
		회원 가입을 위해서 아ㅐ의 이용약관 및 개인정보 수집 및 이용에 대한 안내를 읽고 동의해 주세요<br>
		</div>
	</div>
	<div class="col-lg-12">
		<div class="well">
			<h4>약관동의</h4>
			<input type="checkbox" id="checkall"> 이용약관, 개인정보 수집 및 이용에 모두 동의 합니다.<br><br>
			오즈월드 이용약관<br>
			<div class="col-lg-12 text-right">
			<textarea class="form-control" rows="3" disabled="disabled">이용약관 a</textarea><br>
			<input type="checkbox" id="checkbox1"> 오즈월드 이용약관에 동의합니다.
			</div>
			개인정보 수집 및 이용에 대한 안내<br>
			<div class="col-lg-12 text-right">
			<textarea class="form-control" rows="3" disabled="disabled">이용약관 b</textarea><br>
			<input type="checkbox" id="checkbox2"> 개인정보 수집 및 이용에 동의합니다.
			</div>
		</div>
	</div>
	<div class="col-lg-12">
		<div class="well">
			<h4>본인인증</h4>
			오즈월드는 깨끗하고 안전한 인터넷 환경 조성과 소중한 회원님의 개인정보 보호를 위하여 주민등록법<br>
			 제21조 제2항 제9호(시행일 2006년 9월 25일), 정보통신망 이용촉진 및 정보보호 등에 관한 법률 제44<br>
			 조의 5항(2007년7월27일 시행)에 의거, 회원가입 시 본인확인 절차를 거치고 있습니다.<br><br>
			
			<a class="btn btn-default">휴대폰인증</a>
			<a class="btn btn-default">아이핀인증</a>
		</div>
	</div>
	<div class="col-lg-12">
		<div class="well">
			『정보통신망 이용 촉진 및 정보보호 등에 관한 법률(이하 정보통신망법) 』 제 23조의 2 "주민등록<br>
			번호의 사용 제한"에 따라 저희 오즈월드 사이트에서는 주민등록번호를 받지 않습니다.<br><br>
			
			본인인증을 위해 입력하신 개인정보는 본인인증기관에서 수집하는 정보이며, 이때 수집된 정보는<br>
			 본인인증 외 어떠한 용도로도 이용되거나 별도 저장되지 않습니다.<br>
		</div>
	</div>
	<div class="col-lg-12 text-right">
		<a class="btn btn-default" id="submit-btn">확인</a>
		<a class="btn btn-default">취소</a>
	</div>
</div>

<script type="text/javascript">
	$("#checkall").change(function(){
		var chk = $("#checkall").is(':checked');
		if(chk == true){
			$("#checkbox1").prop('checked', true);
			$("#checkbox2").prop('checked', true);
		}else if(chk == false){
			$("#checkbox1").prop('checked', false);
			$("#checkbox2").prop('checked', false);
		}
	});

	$("#submit-btn").click(function(){
		if($("#checkbox1").is(':checked') == false || $("#checkbox2").is(':checked') == false){
			alert("이용약관에 동의해주세요");
		}else {
			$("#submit-btn").attr({
				href: '${ contextPath }/signUp.do'
			});
		}
	});
</script>
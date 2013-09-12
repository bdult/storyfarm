<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<div class="row">
	<div class="col-lg-12 text-left">
		<h3>회원가입_회원정보 입력</h3><br>
	</div>
	<div class="col-lg-12 text-left">
		<div class="well">
		오즈월드 회원 가입을 환영합니다.<br> 
		전 세계 명작 학습 동화 와 다양한 콘텐츠를 최적의 환경에서 제공 하겠습니다.<br><br>
		회원 가입을 위해서 아래의 정보를 입력해 주세요.
		</div>
	</div>
	<div class="col-lg-12">
		<form class="form-horizontal well" id="joinForm">
			<p class="text-center">기본정보 입력</p><br>
			
			<div class="form-group">
				<label class="col-lg-2 control-label">아이디 :</label>
				<div class="col-lg-3">
					<input class="form-control" id="member_id" name="member_id">
				</div>
				<a class="btn btn-default">중복확인</a>
			</div>
			<div class="form-group">
				<label class="col-lg-2 control-label">비밀번호 :</label>
				<div class="col-lg-3">
					<input class="form-control" id="member_pw" name="member_pw" type="password">
				</div>
				<label class="col-lg-2 control-label">비밀번호 재입력 :</label>
				<div class="col-lg-3">
					<input class="form-control" type="password">
				</div>
			</div>
			<div class="form-group">
				<label class="col-lg-2 control-label">이름 :</label>
				<div class="col-lg-3">
					<input class="form-control" name="member_nm">
				</div>
			</div>
			<div class="form-group">
				<label class="col-lg-2 control-label">이메일 :</label>
				<input class="hidden" id="member_email" name="member_email">
				<div class="col-lg-3">
					<input class="form-control" id="email1">
				</div>
				<div class="col-lg-2">
					<select class="form-control" id="email2">
						<option>naver.com1</option>
						<option>naver.com2</option>
						<option>naver.com3</option>
						<option>naver.com4</option>
						<option>naver.com5</option>
					</select>
				</div>
			</div>
			<div class="form-group">
				<label class="col-lg-2 control-label">휴대번호 : </label>
				<input class="hidden" id="member_tel" name="member_tel">
				<div class="col-lg-2">
					<select class="form-control" id="tel1">
						<option>010</option>
						<option>011</option>
						<option>012</option>
						<option>013</option>
						<option>014</option>
					</select>
				</div>
				<div class="col-lg-2">
					<input class="form-control" id="tel2">
				</div>
				<div class="col-lg-2">
					<input class="form-control" id="tel3">
				</div>
			</div>
			<div class="form-group">
				<label class="col-lg-2 control-label">주소 : </label>	
				<div class="col-lg-4">
					<input class="form-control" placeholder="동/읍/리 입력">
				</div>
				<div class="col-lg-2">
					<a class="btn btn-default">찾아보기</a>
				</div>
			</div>
			<div class="form-group">
				<label class="col-lg-2"></label>
				<div class="col-lg-4">
					<input class="form-control" placeholder="주소1" name="member_addr_1">
				</div>
				<div class="col-lg-4">
					<input class="form-control" placeholder="상세주소 입력" name="member_addr_2">
				</div>
			</div>
			
			<!-- <div class="form-group">
				<label class="col-lg-2 control-label">성별 : </label>	
				<div class="col-lg-2">
					<label>
    					<input type="radio" value="option1" checked>남  
						<input type="radio" value="option2">여
					</label>
				</div>
			</div>
			<div class="form-group">
				<label class="col-lg-2 control-label">생년월일 : </label>	
				<div class="col-lg-2">
					<input class="form-control" placeholder="연도">
				</div>
				<div class="col-lg-2">
					<input class="form-control" placeholder="월">
				</div>
				<div class="col-lg-2">
					<input class="form-control" placeholder="일">
				</div>
			</div> -->
			
			<div class="row">
				<div class="col-lg-12 text-center">
					<button class="btn btn-default" id="submit-btn">가입하기</button>
					<a class="btn btn-default">취소</a>
				</div>
			</div>
		</form>
	</div>
</div>

<script type="text/javascript">
	$("#submit-btn").click(function(){
		$("#member_email").attr({
			value: $("#email1").val() + "@" + $("#email2").val()
		});
		$("#member_tel").attr({
			value: $("#tel1").val() + "-" + $("#tel2").val() + "-" + $("#tel3").val()
		});
		
		$("#joinForm").attr({
			method: 'post',
			action: '${ contextPath }/joinStep3.do'
		});
	});
</script>

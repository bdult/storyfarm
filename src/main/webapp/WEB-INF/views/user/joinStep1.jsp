<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<div class="row">
	<div class="col-lg-12 text-center">
		회원가입<br> 
		Enjoy  whenever our contents
	</div>
	<div class="col-lg-12 text-left">
		<br>스토리팜 회원 가입을 환영합니다.<br> 
		전 세계 명작 학습 동화 와 다양한 콘텐츠를 최적의 환경에서 제공 하겠습니다.<br> 
		회원가입 여부를 먼저 확인해주세요.<br> 
 		*휴대전화 국번 3자리(01X)를 제외한 번호가 7자리인 경우, 0을 포함하여 입력 (Ex. 011-123-4567 &gt; 01234567 입력)<br><br>
	</div>
	<div class="col-lg-12 text-center">
		<div class="well">
			<form class="form-horizontal">
				<div class="form-group">
					<label class="col-lg-2 control-label">이름 : </label>
					<div class="col-lg-3">
						<input class="form-control">
					</div>
				</div>
				<div class="form-group">
					<label class="col-lg-2 control-label">휴대번호 : </label>
					
					<div class="col-lg-2">
						<select class="form-control">
							<option>010</option>
							<option>011</option>
							<option>012</option>
							<option>017</option>
							<option>019</option>
						</select>
					</div>
					<div class="col-lg-2">
						<input class="form-control">
					</div>
					<div class="col-lg-2">
						<input class="form-control">
					</div>
					<div class="col-lg-2">
						<a class="btn btn-default" href="${ contextPath }/joinStep2.do">확인</a>
					</div>
				</div>
			</form>
		</div>
	</div>
	<div class="col-lg-12 text-center">
		스토리팜은 고객님의 개인정보를 보호하며 스토리팜 마케팅 활동 외 다른 용도로서 제공되지 않습니다.<br>
		스토리팜은 하나의 아이디로 3명의 자녀의 학습관리를 제공합니다.
	</div>
</div>
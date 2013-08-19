<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<div class="row">
	<div class="col-lg-12 text-center">
		회원가입<br>
		Enjoy whenever our contents<br><br>
	</div>
	<div class="col-lg-12">
		<div class="form-horizontal well">
			<p class="text-center">기본정보 입력</p> <br>
			
			<div class="form-group">
				<label class="col-lg-2 control-label">아이디 :</label>
				<div class="col-lg-3">
					<input class="form-control">
				</div>
			</div>
			<div class="form-group">
				<label class="col-lg-2 control-label">비밀번호 :</label>
				<div class="col-lg-3">
					<input class="form-control">
				</div>
			</div>
			<div class="form-group">
				<label class="col-lg-2 control-label">비밀번호 재입력 :</label>
				<div class="col-lg-3">
					<input class="form-control">
				</div>
			</div>
			<div class="form-group">
				<label class="col-lg-2 control-label">이름 :</label>
				<div class="col-lg-3">
					<input class="form-control" disabled="disabled" value="김아무개">
				</div>
			</div>
			<div class="form-group">
				<label class="col-lg-2 control-label">이메일 :</label>
				<div class="col-lg-3">
					<input class="form-control">
				</div>
				<div class="col-lg-2">
					<select class="form-control">
						<option>naver.com</option>
						<option>naver.com</option>
						<option>naver.com</option>
						<option>naver.com</option>
						<option>naver.com</option>
					</select>
				</div>
			</div>
			<div class="form-group">
				<label class="col-lg-2 control-label">휴대번호 : </label>	
				<div class="col-lg-2">
					<input class="form-control" disabled="disabled" value="010">
				</div>
				<div class="col-lg-2">
					<input class="form-control" disabled="disabled" value="1111 ">
				</div>
				<div class="col-lg-2">
					<input class="form-control" disabled="disabled" value="1111">
				</div>
			</div>
			<div class="form-group">
				<label class="col-lg-2 control-label">주소 : </label>	
				<div class="col-lg-2">
					<input class="form-control">
				</div>	
				<div class="col-lg-2">
					<input class="form-control">
				</div>
				<div class="col-lg-2">
					<a class="btn btn-default">주소찾기</a>
				</div>
			</div>
			<div class="form-group">
				<label class="col-lg-2"></label>	
				<div class="col-lg-4">
					<input class="form-control">
				</div>
				<div class="col-lg-4">
					<input class="form-control" placeholder="상세주소 입력">
				</div>
			</div>
			<div class="form-group">
				<div class="col-lg-offset-2 col-lg-10">
					<div class="checkbox">
						<label><input type="checkbox"> <a href="#">이용약관</a> 동의</label><br>
						<label><input type="checkbox"> <a href="#">개인정보 취급방침</a> 동의</label>
					</div>
				</div>
			</div>
			<p class="text-center">자녀정보 입력</p> <br>
			<div class="form-group">
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
			</div>
			<div class="form-group">
				<label class="col-lg-2 control-label">자녀이름 :</label>
				<div class="col-lg-4">
					<input class="form-control">
				</div>
			</div>
			<div class="form-group">
				<label class="col-lg-2 control-label">사진등록 :</label>
				<div class="col-lg-4">
					<input class="form-control">
				</div>
				<div class="col-lg-2">
					<a class="btn btn-default">찾아보기</a>
				</div>
			</div>
			<div class="form-group">
				<label class="col-lg-1 control-label"></label>
				<p>자녀 학습 정보 관리는 1-3명까지 하실 수 있어요.</p>
			</div>
		</div>
		<div class="row">
			<div class="col-lg-12 text-center">
				<a class="btn btn-default">가입하기</a>
				<a class="btn btn-default">취소</a>
			</div>
		</div>
	</div>
</div>
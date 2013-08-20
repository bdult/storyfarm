<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<div class="row">
	<div class="col-lg-offset-2 col-lg-8 col-lg-offset-2">
		<div class="row">
			<div class="col-lg-12 text-center">
				<h3>로그인</h3>
				<small>Enjoy whenever out contents</small>
			</div>
		</div>
		<div class="row">
			<div class="col-lg-12 well">
				스토리팜 서비스를 찾아주셔서 감사합니다.
				<br />
				스토리팜 서비스는 언제 어디서든 편하게 즐길 수 있는
				<br />
				국내 최고의 아동 콘텐츠를 최적의 환경으로 제공하고 있습니다.
				<br />
			</div>
		</div>
		<div class="row">
			<div class="col-lg-12 well">
				<div class="row">
					<div class="col-lg-offset-3 col-lg-6 col-lg-offset-3">
						<form role="form">
						  <div class="form-group">
						    <input type="email" class="form-control" id="id" placeholder="아이디">
						  </div>
						  <div class="form-group">
						    <input type="password" class="form-control" id="pwd" placeholder="비밀번호">
						  </div>
						  <div class="form-group">
					      <input type="checkbox"> 로그인 유지하기
					      <a href="${ contextPath }/loginStep2.do" class="btn btn-info pull-right">로그인</a>
						  </div>
						  <div class="form-group">
					      <a href="${ contextPath }/cs/find.do">아이디/비밀번호 찾기</a>
						  </div>
						</form>
					</div>
				</div>
			</div>
		</div>
		<div class="row">
			<div class="col-lg-12 well text-center">
				<h3>무료회원가입</h3>
				<div>Join member</div>
				<div>스토리팜서비스 멤버가입 시 다양한 혜택과 서비스를 제공 받으실 수 있습니다.</div>
				<a href="${ contextPath }/joinStep1.do" class="btn btn-info">회원가입</a>
			</div>
		</div>
		
	</div>
</div>
<!--/row-fluid-->
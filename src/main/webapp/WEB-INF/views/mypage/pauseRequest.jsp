<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<div class="row">
	<div class="col-lg-12 text-center">
		<c:if test="${ userInfoSession.MEMBER_STATUS == 0 }">
			<h3>현재 고객님은 현재 서비스 <a href="#">이용중</a>입니다<br>
			이용정지를 신청하시려면 아래 정보를 입력해주세요</h3>
		</c:if>
		<c:if test="${ userInfoSession.MEMBER_STATUS == 1 }">
			<h3>현재 고객님은 서비스 일시중지중 입니다<br>
			다시 이용하시려면 아래 정보를 입력해주세요</h3>
		</c:if>
	</div>

	<div class="col-lg-offset-2 col-lg-8 col-lg-offset-2">
	<form class="form">
		<table class="table">
			<tr>
				<td>
					<div class="row">
						<div class="form-group">
				    		<label class="col-lg-3 control-label">아이디 : </label>
				    		<div class="col-lg-9">
								<input type="text" class="form-control" name="member_id" placeholder="아이디">
							</div>
						</div>
					</div>
					<div class="row">
						<div class="form-group">
				    		<label class="col-lg-3 control-label">비밀번호 : </label>
				    		<div class="col-lg-9">
								<input type="text" class="form-control" name="member_pw" placeholder="비밀번호">
							</div>
						</div>
					</div>
				</td>
				<td>
					<c:if test="${ userInfoSession.MEMBER_STATUS == 0 }">
						<button class="btn btn-default">일시중지 신청</button>
					</c:if>
					<c:if test="${ userInfoSession.MEMBER_STATUS == 1 }">
						<button class="btn btn-default">일시중지 해지</button>
					</c:if>
				</td>
			</tr>
		</table>
	</form>
	</div>
</div>
<div class="row">
	<div class="col-lg-12">
		<ul>
			<li>일시정지 신청 후 익일 오전 12시부터  서비스 이용이 정지됩니다.</li>
			<li>예시: 2013년 9월 5일 오후 3시 이용정지 신청 9월 6일 오전 0시 이용정지 반영</li>
			<li>일시정지 해지는 해지 후 재로그인 하시면 서비스를 이용하실 수 있습니다.</li>
			<li>일시정지를 해지하시는 날로부터 바로 해당 일자가 포함되어 남은 서비스 이용기간에 차감되오니 이점 유넘하시기 바랍니다.</li>
		</ul>
	</div>
</div>
<!--/row-fluid-->
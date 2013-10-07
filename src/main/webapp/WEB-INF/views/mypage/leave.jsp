<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<div class="row">
	<div class="col-lg-12">
		회원 탈퇴를 위해 아래의 정보를 입력해 주시고, 탈퇴시의 불이익에 대한 유의사항에 대해<br>
		서 꼭 확인해주시기 바랍니다.<br><br>
	</div>
	
	<div class="col-lg-offset-2 col-lg-8 col-lg-offset-2">
	<form class="form" method="post" action="${ contextPath }/mypage/leaveResult.do">
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
					<c:if test="${ msg == 'loginFail' }">
						아이디 혹은 비밀번호가 틀립니다. 다시 입력해 주세요.
					</c:if>
				</td>
				<td>
					<button class="btn btn-default">확인</button>
				</td>
			</tr>
		</table>
	</form>
	</div>
</div>
<div class="row">
	<div class="col-lg-12">
		<ul>
			<li>탈퇴 신청과 동시에 서비스 이용이 불가능하게 됩니다.</li>
			<li>유료회원일 경우 고객님의 변심으로 인한 경우 환불은 되지 않습니다.</li>
			<li>회원님의 신상정보 등의 경우 1개월간 보관 후 영구 삭제됩니다.</li>
			<li>탈퇴 신청 후 1개월 이내에는 신규 회원가입이 불가능합니다</li>
			<li>단순 실수로 인한 탈퇴나 기타 문의사항에 대해서는 고객센터(1588-9856)로 문의하여주시기 바랍니다.</li>
		</ul>
	</div>
</div>
<!--/row-fluid-->
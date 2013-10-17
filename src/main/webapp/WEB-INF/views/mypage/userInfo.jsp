<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<div class="row">
	<div class="col-lg-12 text-center">
		<h3>회원정보 확인</h3>
	</div>
	
	<div class="col-lg-12">
		<form class="form-horizontal well" id="update_form">
			<input type="hidden" name="member_id" value="${ userInfo.MEMBER_ID }">
			<div class="form-group">
				<label class="col-lg-2 control-label">아이디 :</label>
				<div class="col-lg-3">
					<input class="form-control" id="member_id" name="member_id" disabled="disabled" value="${ userInfo.MEMBER_ID }">
				</div>
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
					<input class="form-control" name="member_nm" value="${ userInfo.MEMBER_NM }">
				</div>
			</div>
			<div class="form-group">
				<label class="col-lg-2 control-label">이메일 :</label>
				<input class="hidden" id="member_email" name="member_email">
				<div class="col-lg-3">
					<input class="form-control" id="email1" value="${ userInfo.MEMBER_EMAIL }">
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
				<input class="hidden" id="member_cel" name="member_cel">
				<div class="col-lg-2">
					<select class="form-control" id="cel1">
						<option>011</option>
						<option>010</option>
						<option>012</option>
						<option>013</option>
						<option>014</option>
					</select>
				</div>
				<div class="col-lg-2">
					<input class="form-control" id="cel2">
				</div>
				<div class="col-lg-2">
					<input class="form-control" id="cel3">
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
					<input class="form-control" placeholder="주소1" name="member_addr_1" value="${ userInfo.MEMBER_ADDR_1 }">
				</div>
				<div class="col-lg-4">
					<input class="form-control" placeholder="상세주소 입력" name="member_addr_2" value="${ userInfo.MEMBER_ADDR_2 }">
				</div>
			</div>
			
			<div class="form-group">
				<label class="col-lg-2 control-label">성별 : </label>	
				<div class="col-lg-2">
					<label>
    					<input type="radio" name="member_gender" value="남">남  
						<input type="radio" name="member_gender" value="여">여
					</label>
				</div>
			</div>
			<div class="form-group">
					<label class="col-lg-2 control-label">생년월일 : </label>
					<div class="col-lg-2">
						<select class="form-control" id="yearBox" name="member_year">
							<option>년도</option>
							<option>00</option>
						</select>
					</div>
					<div class="col-lg-2">
						<select class="form-control" id="monthBox" name="member_month">
							<option>월</option>
						</select>
					</div>
					<div class="col-lg-2">
						<select class="form-control" id="dayBox" name="member_day">
							<option>일</option>
						</select>
					</div>
			</div><br><br>
			<div class="row">
				<div class="col-lg-4 text-left">
					<a class="btn btn-default" id="delete_btn" href="${ contextPath }/mypage/leave.do">회원탈퇴</a>
				</div>
				<div class="col-lg-4 text-center">
					<button class="btn btn-default" id="update_btn">회원정보 수정</button>
				</div>
				<div class="col-lg-4 text-right">
					<a class="btn btn-default" href="${ contextPath }/mypage/info.do">취소</a>
				</div>
			</div>
		</form>
	</div>
</div>
<!--/row-fluid-->

<script type="text/javascript">

	birth.call();

	var memberEmail = "${ userInfo.MEMBER_EMAIL }";
	var emailBreak = memberEmail.split("@");
	
	$("#email1").attr("value", emailBreak[0]);
	$("#email2").val(emailBreak[1]);
	
 	var memberCel = "${ userInfo.MEMBER_CEL }";
 	var memberCelBreak = memberCel.split("-");
 	$("#cel1").val(memberCelBreak[0]);
 	$("#cel2").attr("value", memberCelBreak[1]);
 	$("#cel3").attr("value", memberCelBreak[2]);
 	
 	$("input[name=member_gender]:input[value='${ userInfo.MEMBER_GENDER }']").attr("checked", true);
 	
 	$("#yearBox").val("${ userInfo.MEMBER_YEAR }");
 	$("#monthBox").val("${ userInfo.MEMBER_MONTH }");
 	$("#dayBox").val("${ userInfo.MEMBER_DAY }");
 	

	$("#update_btn").click(function(){
		
		combineEmail.call();
		combineCel.call();
		
		$("#update_form").attr({
			method: 'post',
			action: '${ contextPath }/mypage/userInfoUpdate.do'
		});
	});
	
</script>
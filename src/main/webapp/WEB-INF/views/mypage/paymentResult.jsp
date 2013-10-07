<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<div class="row">
	<div class="col-lg-12 text-center">
		<h3>정상적으로 결제가 완료 되었습니다.<br>
		결제 후 이용가능하신 서비스는 아래와 같습니다.</h3>
	</div>
	<table class="table">
		<tr>
			<td>신청 요금제</td>
			<td>프리미엄 요금제</td>
		</tr>
		<tr>
			<td>서비스 이용기간</td>
			<td>2013년 9월 1일 ~ 2013년 10월 1일</td>
		</tr>
		<tr>
			<td>서비스 요금</td>
			<td>9,900원</td>
		</tr>
	</table>
</div>
<div class="row">
	<div class="col-lg-12 text-center">
		<a class="btn btn-default" href="${ contextPath }/dashboard.do">메인으로 가기</a>
		<a class="btn btn-default" href="${ contextPath }/mypage.do">마이페이지로 가기</a>
	</div>
</div>
<!--/row-fluid-->
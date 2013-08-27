<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<div class="row">
	<div class="col-lg-12 text-center">
		<h3>1:1 문의</h3>
		<small>Enjoy whenever out contents</small>
	</div>
	<div class="col-lg-12 text-center">
		<a class="btn btn-default" href="${ contextPath }/mypage/questionDetail.do">상세화면</a>
	</div>
	<div class="col-lg-12 text-center">
		<a class="btn btn-default" href="${ contextPath }/mypage/questionInsert.do">쓰기화면</a>
	</div>
	<div class="col-lg-12 text-center">
		<a class="btn btn-default" href="${ contextPath }/mypage/questionUpdate.do">수정화면</a>
	</div>
	<div class="col-lg-12 text-center">
		<a class="btn btn-default" href="${ contextPath }/dashboard.do">메인으로</a>
	</div>
</div>
<!--/row-fluid-->
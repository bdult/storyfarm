<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<div class="row">
	<div class="col-lg-12 text-center">
		<h3>아이디 찾기</h3>
		<small>Enjoy whenever out contents</small>
	</div>
	<div class="col-lg-12 text-center">
		<a class="btn btn-default" href="${ contextPath }/findIdResult.do">성공view</a>
	</div>
	<div class="col-lg-12 text-center">
		<a class="btn btn-default" href="${ contextPath }/findIdFail.do">실패view</a>
	</div>
	<div class="col-lg-12 text-center">
		<a class="btn btn-default" href="${ contextPath }/dashboard.do">메인으로</a>
	</div>
</div>
<!--/row-fluid-->
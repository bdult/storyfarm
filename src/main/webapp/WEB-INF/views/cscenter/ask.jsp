<%@ page contentType="text/html" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<div class="alert alert-success">문의하기</div>

<div class="row">
	<div class="col-md-12 text-center">
		<p>로그인 하지 않을경우 문의하기.<br> 메일 로그인 할 경우 마이페이지-문의하기로 작성.</p>
		<a class="btn btn-default" href="${ contextPath }/cscenter/email.do">문의 신청</a>
	</div>
</div>

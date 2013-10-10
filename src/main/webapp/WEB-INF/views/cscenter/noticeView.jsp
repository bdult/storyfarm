<%@ page contentType="text/html" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<div class="row">
	<div class="col-lg-12">
		<div class="panel panel-default">
			<div class="panel-heading">
			<table class="table">
				<tr>
					<td>제목</td>
					<td>${ writing.TITLE }</td>
					<td></td>
					<td></td>
				</tr>
				<tr>
					<td>게시일</td>
					<td>${ writing.REG_DT }</td>
					<td>조회수</td>
					<td>${ writing.HITS }</td>
				</tr>
			</table>
			
			</div>
			  <div class="panel-body">${ writing.CONTENTS }</div>
		</div>
	</div>
</div>
<div class="row">
	<div class="col-lg-12 text-center">
		<a href="javascript:history.back();" class="btn btn-default">&nbsp;&nbsp;&nbsp;&nbsp;목록&nbsp;&nbsp;&nbsp;&nbsp;</a>
	</div>
</div>

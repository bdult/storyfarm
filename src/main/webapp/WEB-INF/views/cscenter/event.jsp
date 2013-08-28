<%@ page contentType="text/html" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<h4>이벤트</h4>
<br />

<div class="row">
	<div class="col-md-12">
		<table class="table table-striped table-hover">
			<tr>
				<th>No</th>
				<th>제목</th>
				<th>등록일</th>
			</tr>
			<c:forEach items="${ eventList }" var="obj">
				<tr>
					<td>${ obj.CONTENTS_ID }</td>
					<td><a href="${ contextPath }/cscenter/eventView.do?contentsId=${ obj.CONTENTS_ID }">${ obj.TITLE }</a></td>
					<td>${ obj.REG_DT }</td>
				</tr>
			</c:forEach>
		</table>
	</div>
</div>

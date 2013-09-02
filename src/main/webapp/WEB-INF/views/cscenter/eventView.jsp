<%@ page contentType="text/html" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<div class="row">
	<div class="col-lg-12">
		
		<div class="panel panel-info">
		  <div class="panel-heading">
		  	${ writing.TITLE } 
		  	<div class="pull-right">${ writing.REG_DT }</div>
	  	</div>
		  <div class="panel-body">${ writing.CONTENTS }</div>
		</div>

		<c:forEach var="comment" items="${ detailComments }">
			<tr>
				<div class="panel panel-info">
					<td><div class="panel-body">아이디 : ${ comment.MEMBER_ID }</div></td>
					<td>
						<c:if test="">내용 : <input type="text" value="${ comment.COMMENT }"></c:if>
						<div class="panel-body">내용 : ${ comment.COMMENT }</div>
					</td>
					<td>
						<div class="panel-body">
							<c:if test="${ comment.MEMBER_ID == login_session.MEMBER_ID }">
								<a class="btn btn-default">수정</a>
								<form method="get" action="${ contextPath }/cscenter/commentDelete.do">
									<button class="btn btn-default">삭제</button>
								</form>
							</c:if>
						</div>
					</td>
				</div>
			</tr>
		</c:forEach>
		
		<form method="get" action="${ contextPath }/cscenter/commentCreate.do">
			<div class="panel panel-info">
				<input type="hidden" name="contents_id" value="${contentsId}">
				<input type="hidden" name="member_id" value="${login_session.MEMBER_ID}">
				<textarea class="form-control" name="comment" rows="3"></textarea>
				<button class="btn btn-default pull-right">입력</button>
			</div>
		</form>
		
		<c:if test="${ msg == 'login_fail' }">로그인을 해주세요</c:if>
		
		<a href="javascript:history.back();" class="btn btn-default">뒤로</a>
		
		
	</div>
</div>

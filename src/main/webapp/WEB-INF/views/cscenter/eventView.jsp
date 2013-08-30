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
					<td><div class="panel-body">내용 : ${ comment.COMMENT }</div></td>
				</div>
			</tr>
		</c:forEach>
		<a href="javascript:history.back();" class="btn btn-default">뒤로</a>
		
	</div>
</div>

<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<div class="row">
	<div class="col-lg-12 text-center">
		<h3>1:1 문의 상세</h3>
		<small>Enjoy whenever out contents</small>
	</div>
	<div class="col-lg-12 text-center">
		<a class="btn btn-default" href="${ contextPath }/dashboard.do">메인으로</a>
	</div>
</div>

<div class="row">
	<div class="col-lg-12">
		
		<div class="panel panel-info">
		  <div class="panel-heading">
		  	${ writing.TITLE } 
		  	<div class="pull-right">${ writing.REG_DT }</div>
	  	</div>
		  <div class="panel-body">${ writing.CONTENTS }</div>
		</div>

		<ul class="list-unstyled">
			<c:forEach var="comment" items="${ detailComments }">
				<li>
					<dl class="panel panel-info">
						<dt class="pull-right">
							<a class="btn btn-default" id="commentModify">수정</a>
							<a class="btn btn-default" id="commentDelete">삭제</a>
						</dt>
					</dl>
					<dl>
						<dt>아이디 : ${ comment.MEMBER_ID }</dt>
					</dl>
					<dl>
						<dt>${ comment.COMMENT }</dt>
					</dl>
					<form id="commentCreate" method="post" action="${ contextPath }/cscenter/commentModify.do" style="display:none;">
						<input type="hidden" name="fLocation" value="mypage">
						<input type="hidden" name="sLocation" value="questionDetail">
						<input type="hidden" name="contents_id" value="${ comment.CONTENTS_ID }">
						<input type="hidden" name="comment_id" value="${ comment.COMMENT_ID }">
						<textarea name="comment" class="form-control" rows="3">${ comment.COMMENT }</textarea>
						<button class="btn btn-default">덧글입력</button>
					</form>
				</li>
			</c:forEach>
		</ul>
		
		<form method="post" action="${ contextPath }/cscenter/commentCreate.do">
			<div class="panel panel-info">
				<input type="hidden" name="fLocation" value="mypage">
				<input type="hidden" name="sLocation" value="questionDetail">
				<input type="hidden" name="contents_id" value="${contentsId}">
				<input type="hidden" name="member_id" value="${login_session.MEMBER_ID}">
				<textarea class="form-control" rows="3" name="comment"></textarea>
				<button class="btn btn-default pull-right">덧글입력</button>
			</div>
		</form>
		
		<a href="javascript:history.back();" class="btn btn-default">뒤로</a>
		
		<%-- <form method="post" action="${ contextPath }/cscenter/commentCreate.do">
			<div class="panel panel-info">
				<input type="hidden" name="contents_id" value="${contentsId}">
				<input type="hidden" name="member_id" value="${login_session.MEMBER_ID}">
				<textarea class="form-control" name="comment" rows="3"></textarea>
				<button class="btn btn-default pull-right">입력</button>
			</div>
		</form>

		<c:forEach var="comment" items="${ detailComments }">
			<tr>
				<div class="panel panel-info">
					<td><div class="panel-body">아이디 : ${ comment.MEMBER_ID }</div></td>
					<td>
						<div class="panel-body" id="commentArea">
							<p>내용 : ${ comment.COMMENT }</p>
							<form method="post" ></form>
						</div>
					</td>
					<td>
						<div class="panel-body">
							<c:if test="${ comment.MEMBER_ID == login_session.MEMBER_ID }">
									<button class="btn btn-default" id="comment_ModifyComplete">수정완료</button>
									<button class="btn btn-default" id="comment_ModifyCancel">수정취소</button>
									<button class="btn btn-default" id="comment_Modify">수정</button>
									<button class="btn btn-default">삭제</button>
							</c:if>
						</div>
					</td>
				</div>
			</tr>
		</c:forEach>
		<form method="post" action="${ contextPath }/cscenter/commentCreate.do">
			<div class="panel panel-info">
				<input type="hidden" name="contents_id" value="${contentsId}">
				<input type="hidden" name="member_id" value="${login_session.MEMBER_ID}">
				<textarea class="form-control" name="comment" rows="3"></textarea>
				<button class="btn btn-default pull-right">입력</button>
			</div>
		</form>
		
		<c:if test="${ msg == 'login_fail' }">로그인을 해주세요</c:if>
		
		<a href="javascript:history.back();" class="btn btn-default">뒤로</a> --%>
		
		
	</div>
</div>
<!--/row-fluid-->

<script type="text/javascript">

	$("[id=commentModify]").each(function(index){
		$(this).click(function(){
			if($(this).text() == "수정"){
				$(this).text("수정취소");
			}else if($(this).text() == "수정취소"){
				$(this).text("수정");
			}
			
			$(this).parent().parent().parent().children().eq(2).toggle();
			$(this).parent().parent().parent().children().eq(3).toggle();
		});
	});


	/* $("[id=comment_ModifyCancel]").each(function(){
		$(this).hide();
	});
	$("[id=comment_ModifyComplete]").each(function(){
		$(this).hide();
	});
	
	$("[id=comment_Modify]").each(function(index){
		$(this).click(function(){
			$(this).parent().parent().children("#commentArea").children().replaceWith("<textarea class='form-control' rows='3'>" + "sad" + "</textarea>");
			$(this).parent().children("[id=comment_ModifyCancel]").show();
			$(this).parent().children("[id=comment_ModifyComplete]").show();
			$(this).parent().children("[id=comment_Modify]").hide();
		});
		
		$("[id=comment_ModifyCancel]").click(function(){
			$(this).parent().children("[id=comment_ModifyCancel]").hide();
			$(this).parent().children("[id=comment_ModifyComplete]").hide();
			$(this).parent().children("[id=comment_Modify]").show();
			$(this).parent().parent().children("#commentArea").children().replaceWith("<p>" + $(this).parent().parent().children("#commentArea").children().text() + "</p>");
		})
	}); */
	
	
</script>
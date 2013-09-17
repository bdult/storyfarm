<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<div class="row">
	<div class="col-lg-12 text-center">
		<h3>1:1 문의 상세</h3>
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
			
				<li class="panel panel-info commentList">
					<c:if test="${ comment.MEMBER_ID == login_session.MEMBER_ID }">
						<dl>
							<dt class="pull-right">
								<a class="btn btn-default commentModify">수정</a>
								<a class="btn btn-default commentDelete">삭제</a>
							</dt>
						</dl>
					</c:if>
					<dl>
						<dt class="member_id">${ comment.MEMBER_ID }</dt>
					</dl>
					<dl>
						<dt class="comment">${ comment.COMMENT }</dt>
					</dl>
					<form class="commentCreate" method="post" action="${ contextPath }/cscenter/commentModify.do" style="display:none;">
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
		
	</div>
</div>
<!--/row-fluid-->

<script type="text/javascript">
	$(".commentModify").each(function(index){
		var $this = $(this);
		
		$this.click(function(){
			if($this.text() == "수정"){
				$this.text("수정취소");
			}else if($this.text() == "수정취소"){
				$this.text("수정");
			}
			$this.closest(".commentList").children().eq(2).toggle();
			$this.closest(".commentList").children().eq(3).toggle();
		});
	});
	
	$(".commentDelete").each(function(index){
		var $this = $(this);
		
		$this.click(function(){
			
			$.ajax({
				type: "POST",
				url: "${ contextPath }/cscenter/commentDelete.do",
				data: {
					id : $.trim($this.closest(".commentList").find(".member_id").text()),
					comment : $.trim($this.closest(".commentList").find(".comment").text()),
					comment_id : $.trim($this.closest(".commentList").find(":input[name=comment_id]").val())
				}
			}).done(function(data){
		    	if(data.code == 200) {
		    		$this.closest(".commentList").remove();
		    	}else {
		    		alert("실패");
		    	}
			}).fail(function(data){
				alert("서버에러");
			});
		});
	});
	
	
</script>
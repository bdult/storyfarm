<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>


<h2 class="divTit"><img src="" alt="이벤트상세"></h2>
<!-- location -->
<div id="divLocation">
	<ul class="location">
		<c:forEach items="${ breadcrumbs }" var="obj" varStatus="status">
			<c:choose>
				<c:when test="${ status.first }">
					<li class="first"><a href="${ contextPath }" class="home"><img src="${ contextPath }/assets/images/common/blt_home.gif" alt="home"></a></li>
				</c:when>
				<c:when test="${ status.last }">
					<li class="current">${ obj.name }</li>
				</c:when>
				<c:otherwise>
					<li><a href="${ contextPath }${ obj.url }">${ obj.name }</a></li>
				</c:otherwise>
			</c:choose>
		</c:forEach>
	</ul>
</div>
<!-- //location -->

<table class="view">
	<colgroup>
	<col width="98">
	<col width="*">
	</colgroup>
	<tbody>
	<tr>
	  <th>제목</th>
	  <td colspan="3">${ writing.TITLE }</td>
	</tr>
	<tr>
		<th scope="row">작성자</th>
	    <td>관리자</td>
		<th scope="row">작성일</th>
	    <td>${ writing.REG_DT }</td>
	</tr>
	<tr>
		<th>내용</th>
	  	<td class="vewTd" colspan="3">
	    	${ writing.CONTENTS } 
	  	</td>
	</tr>
	</tbody>
</table>
                
<div class="btnSc">
	<a href="javascript:history.back();"><img src="../assets/images/common/btn_list_off.png" alt="목록" class="rollimg"></a> 
</div>
                

<script type="text/javascript">

	$(".lm0202").addClass("on");
	$(".lm020201").addClass("on");

/* 	$(".commentModify").each(function(index){
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
			var r=confirm("삭제 하시겠습니까?");
			if (r==true){
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
			}
		});
	}); */
	
	
</script>
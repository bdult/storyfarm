<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<h2 class="divTit"><img src="${ contextPath }/assets/images/mypage/title_ask.gif" alt="1:1문의"></h2>
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

<form id="contentForm" method="post">
<table class="view">
	<colgroup>
		<col width="98">
		<col width="*">
	</colgroup>
	<tbody>
	<tr>
	  <th>제목</th>
	  <td><input type="text" class="input" name="title" style="width: 100%;"></td>
	</tr>
	<tr>
		<th>작성자</th>
	    <td>${ userInfoSession.MEMBER_ID }</td>
	</tr>
	<tr>
		<th>내용</th>
	  	<td class="vewTd">
			    <textarea name="contents"></textarea>
	  	</td>
	</tr>
	</tbody>
</table>
</form>
                
<div class="btnSc">
   	<a id="submit"><img src="${ contextPath }/assets/images/common/btn_confirm2_off.gif" alt="확인" class="rollimg"></a>
   	<a href="javascript:history.back(-1);"><img src="${ contextPath }/assets/images/common/btn_cancel_off.gif" alt="취소" class="rollimg"></a> 
</div>

<script type="text/javascript">

$(".lm0505").addClass("on");

tinymce.init({
    selector: "textarea",
    menubar : false
});

$("#submit").click(function(){
	$("#contentForm").attr({
		method: 'post',
		action: '${ contextPath }/mypage/boardCreate.do'
	}).submit();
});

</script>
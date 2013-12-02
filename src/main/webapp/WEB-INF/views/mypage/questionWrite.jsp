<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<h2 class="divTit"><img src="" alt="1:1문의 작성"></h2>
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
    <div style="float: left;">
    	<a href="#"><img src="${ contextPath }assets/images/common/btn_list_off.png" alt="목록" class="rollimg"></a> 
    </div>
    <div style="float: right;">
    	<a id="submit"><img src="" alt="등록" class="rollimg"></a>
    	<!-- <a href="#"><img src="" alt="취소" class="rollimg"></a> --> 
    </div>
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
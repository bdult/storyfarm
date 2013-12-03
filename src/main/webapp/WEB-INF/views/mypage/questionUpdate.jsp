<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>


<h2 class="divTit">
	<img src="${ contextPath }/assets/images/mypage/title_ask.gif" alt="1:1문의">
</h2>
<!-- location -->
<div id="divLocation">
	<ul class="location">
		<li class="first"><a href="${ contextPath }/" class="home"><img src="${ contextPath }/assets/images/common/blt_home.gif" alt="home"></a></li>
		<li><a href="${ contextPath }/mypage/info.do">마이페이지</a></li>
		<li class="current">1:1문의</li>
	</ul>
</div>
<!-- //location -->

<form id="contentForm" method="post">
<input type="hidden" name="contents_id" value="${ writing.CONTENTS_ID }">
<table class="view">
	<colgroup>
		<col width="98">
		<col width="*">
	</colgroup>
	<tbody>
		<tr>
			<th>제목</th>
			<td><input type="text" class="input" name="title" style="width: 100%;" value="${ writing.TITLE }"></td>
		</tr>
		<tr>
			<th>작성자</th>
			<td>${ writing.MEMBER_ID }</td>
		</tr>
		<tr>
			<th>내용</th>
			<td class="vewTd"><textarea name="contents">${ writing.CONTENTS }</textarea></td>
		</tr>
	</tbody>
</table>

<br />

<c:if test="${ not empty detailComments }">
	<table class="view">
		<colgroup>
			<col width="98">
			<col width="*">
		</colgroup>
		<c:forEach var="comments" items="${ detailComments }">
			<tr>
				<th>답변자</th>
				<td>${ comments.MEMBER_ID }</td>
			</tr>
			<tr>
				<th>답변일시</th>
				<td>${ comments.REG_DT }</td>
			</tr>
			<tr>
				<th>답변내용</th>
				<td class="vewTd">${ comments.COMMENT }</td>
			</tr>
		</c:forEach>
		<tbody>
			
		</tbody>
	</table>
</c:if>
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
		action: '${ contextPath }/mypage/boardModify.do'
	}).submit();
});

</script>
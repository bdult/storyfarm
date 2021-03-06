<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<h2 class="divTit">
	<img src="${ contextPath }/assets/images/mypage/title_ask.gif" alt="1:1문의">
</h2>
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
			<td>${ writing.TITLE }</td>
		</tr>
		<tr>
			<th>작성자</th>
			<td>${ writing.MEMBER_ID }</td>
		</tr>
		<tr>
			<th>작성일시</th>
			<td>${ writing.REG_DT }</td>
		</tr>
		<tr>
			<th>내용</th>
			<td class="resetEditor">${ writing.CONTENTS }</td>
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


<div class="btnSc">
    <div style="float: left;">
    	<a href="javascript:history.back(-1);"><img src="${ contextPath }/assets/images/common/btn_list_off.png" alt="목록" class="rollimg"></a> 
    </div>
    <div style="float: right;">
    	<a id="update" href="${ contextPath }/mypage/questionUpdate.do?contentsId=${ writing.CONTENTS_ID }"><img src="${ contextPath }/assets/images/common/btn_edit_off.gif" alt="수정" class="rollimg"></a>
    	<!-- <a href="#"><img src="" alt="취소" class="rollimg"></a> --> 
    </div>
</div>

<script type="text/javascript">

$(".lm0505").addClass("on");

</script>

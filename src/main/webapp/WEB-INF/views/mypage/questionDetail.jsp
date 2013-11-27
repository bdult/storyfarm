<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<div id="divContent">
	<h2 class="divTit">
		<img src="" alt="1:1문의">
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
				<td class="vewTd">${ writing.CONTENTS }</td>
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
		<a href="javascript:history.back(-1);"><img src="${ contextPath }/assets/images/common/btn_list_off.png" alt="목록" class="rollimg"></a>
	</div>

</div>



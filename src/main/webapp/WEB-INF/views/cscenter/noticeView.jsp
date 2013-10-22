<%@ page contentType="text/html" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<h2 class="divTit"><img src="${ contextPath }/assets/images/customer/title_notice.gif" alt="공지사항"></h2>
<!-- location -->
<div id="divLocation">
	<ul class="location">
		<li class="first"><a href="#" class="home"><img src="${ contextPath }/assets/images/common/blt_home.gif" alt="home"></a></li>
		<li><a href="#">고객센터</a></li>
		<li class="current">공지사항</li>
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
			<td>관리자</td>
		</tr>
		<tr>
			<th>내용</th>
			<td class="vewTd">
				${ writing.CONTENTS }
			</td>
		</tr>
	</tbody>
</table>

<div class="btnSc">
	<a href="javascript:history.back();"><img src="${ contextPath }/assets/images/common/btn_list_off.png" alt="목록" class="rollimg"></a>
</div>


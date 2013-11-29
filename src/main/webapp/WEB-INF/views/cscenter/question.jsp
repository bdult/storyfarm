<%@ page contentType="text/html" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<h2 class="divTit"><img src="${ contextPath }/assets/images/customer/title_inquiry.gif" alt="문의메일보내기"></h2>
            	
<!-- location -->
<div id="divLocation">
	<ul class="location">
		<li class="first"><a href="${ contextPath }/" class="home"><img src="${ contextPath }/assets/images/common/blt_home.gif" alt="home"></a></li>
		<li class="current">문의메일 보내기</li>
	</ul>
</div>
<!-- //location -->

<form id="emailForm" action="${ contextPath }/cscenter/email.do" method="post">
	<table class="write">
		<colgroup>
		<col width="138">
		<col width="*">
		<col width="100">
		<col width="146">
		</colgroup>
		<tbody>
			<tr>
				<th scope="row">제목</th>
				<td><input name="subject" type="text" class="input" style="width:98%;"></td>
				<th scope="row">분류</th>
				<td>
				  	<select name="type">
				  		<option value="가입관련">가입관련</option>
				  		<option value="기타">기타</option>
			 	  	</select>
				</td>
			</tr>
			<tr>
				<th scope="row">답변 받을 이메일</th>
			    <td colspan="3">
			    	<input name="email1" type="text" class="input" style="width:180px;"> @ <input name="email2" type="text" class="input" style="width:120px;"> 
			        <select name="" class="select" style="width:120px;">
			    	  	<option>직접입력</option>
			   	  	</select>
			    </td>
			</tr>
			<tr>
			  	<td colspan="4" class="writeTd"><textarea name="contents" cols="" rows="20" style="width:98%;" class="textarea"></textarea></td>
			</tr>
		</tbody>
	</table>
</form>

<div class="btnSc">
	<a href="#" id="sendBtn"><img src="${ contextPath }/assets/images/common/btn_confirm2_off.gif" alt="확인" class="rollimg"></a>
	<a href="javascript:history.back(-1);"><img src="${ contextPath }/assets/images/common/btn_cancel_off.gif" alt="취소" class="rollimg"></a>
</div>

<div class="commentBox">
	<ul class="ulLst01">
	  <li>문의 : 고객센터 02-9874-5632(주말, 공휴일 휴무)</li>
	  <li>운영시간 : 평일 오전 10시~ 오후 5시(점심 12시~1시)</li>
	  <li>공휴일에는 고객센터의 문의하기 메뉴를 통해서 접수 부탁드립니다.</li>
	</ul>
</div>

<script>
$(function(){
	$("#sendBtn").click(function(e){
		e.preventDefault();
		if( confirm("문의메일을 보내시겠습니까? 보낸 후에는 메인화면으로 이동합니다.")) {
			$("#emailForm").submit();
		}
	});
});
</script>
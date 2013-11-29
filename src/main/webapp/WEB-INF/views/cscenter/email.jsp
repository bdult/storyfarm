<%@ page contentType="text/html" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!-- 
	 회원  : '마이페이지/1:1 문의' 로 이동
	비회원 : '메일 문의하기' 작성
 -->
 
<c:choose>
	<c:when test="${ empty sessionScope.userInfoSession }">
		<h2 class="divTit"><img src="${ contextPath }/assets/images/customer/title_inquiry.gif" alt="문의메일보내기"></h2>
              	
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
					<td><input name="" type="text" class="input" style="width:98%;"></td>
					<th scope="row">분류</th>
					<td>
					  	<select name="">
					  		<option>가입관련</option>
				 	  	</select>
					</td>
				</tr>
				<tr>
					<th scope="row">답변 받을 이메일</th>
				    <td colspan="3">
				    	<input name="" type="text" class="input" style="width:180px;"> @ <input name="" type="text" class="input" style="width:120px;"> 
				        <select name="" class="select" style="width:120px;">
				    	  <option>직접입력</option>
				   	  	</select>
				    </td>
				</tr>
				<tr>
				  	<td colspan="4" class="writeTd"><textarea name="" cols="" rows="20" style="width:98%;" class="textarea"></textarea></td>
				</tr>
			</tbody>
		</table>
		
		<div class="btnSc">
			<a href="#"><img src="${ contextPath }/assets/images/common/btn_confirm2_off.gif" alt="확인" class="rollimg"></a>
			<a href="#"><img src="${ contextPath }/assets/images/common/btn_cancel_off.gif" alt="취소" class="rollimg"></a>
		</div>
		
		<div class="commentBox">
		    <ul class="ulLst01">
		        <li>문의 : 고객센터 02-9874-5632(주말, 공휴일 휴무)</li>
		        <li>운영시간 : 평일 오전 10시~ 오후 5시(점심 12시~1시)</li>
		        <li>공휴일에는 고객센터의 문의하기 메뉴를 통해서 접수 부탁드립니다.</li>
		    </ul>
		</div>
	</c:when>
	<c:otherwise>
		<script>
			location.href='${ contextPath }/mypage/question.do';
		</script>
	</c:otherwise>
</c:choose>


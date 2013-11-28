<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>


            <!-- divContent -->
            <div id="divContent">
        
        	<h2 class="divTit"><img src="" alt="회원정보수정"></h2>
        	
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
            
            	<form id="update_form">
                	<table class="joinTbl">
                    <colgroup>
                    <col width="100">
                    <col width="*">
                    </colgroup>
                    <tbody>
                    <tr>
                    	<th scope="row">아이디</th>
                        <td colspan="3"><input id="member_id" name="member_id" value="${ userInfo.MEMBER_ID }" type="text" class="input" style="width:205px;" readonly></td>
                    </tr>
                    <tr>
                    	<th scope="row">비밀번호</th>
                        <td><input id="member_pw" name="member_pw" type="password" class="input" style="width:205px;"><p class="mgt5"><strong class="fontRed">* 패스워드는 6-10자리 숫자 영문 조합입니다.</strong></p></td>
                    </tr>
                    <tr class="brdB">
                   	  	<th scope="row">비밀번호 재입력</th>
                      	<td><input name="" type="password" class="input" style="width:205px;"></td>
                    </tr>
                    </tbody>
                    </table>
                    <table class="joinTbl mgt10">
                    <colgroup>
                    <col width="100">
                    <col width="*">
                    </colgroup>
                    <tbody>
                    <tr>
                    	<th scope="row">이름</th>
                        <td colspan="3"><input type="text" class="input" style="width:290px;" name="member_nm" value="${ userInfo.MEMBER_NM }" readonly></td>
                    </tr>
                    <tr>
                    	<th scope="row">이메일</th>
                        <td colspan="3"><input type="text" class="input" style="width:290px;" placeholder="exaple@mail.com" id="email1" value="${ userInfo.MEMBER_EMAIL }"></td>
                    </tr>
                    <tr>
                    	<th scope="row">휴대번호</th>
                        <td colspan="3">
							<input type="hidden" id="member_cel" name="member_cel">
                        	<select  id="cel1" class="select" style="width:95px;">
                        	  <option>010</option>
                        	</select> -
                        	<input type="text" class="input" style="width:95px;" id="cel2"> -
                        	<input type="text" class="input" style="width:95px;" id="cel3">
                      </td>
                    </tr>
                    <tr>
                    	<th scope="row">주소</th>
                        <td colspan="3">
                        	<input type="text" class="input" style="width:290px;" placeholder="동,읍,리 입력" readonly> <a href="#"><img src="../assets/images/common/btn_find_off.gif" alt="찾아보기" class="rollimg"></a>
                            <div class="mgt5">
                           	  	<input type="text" class="input" style="width:290px;" placeholder="주소 1" name="member_addr_1" value="${ userInfo.MEMBER_ADDR_1 }">
                           	  <input type="text" class="input" style="width:290px;" placeholder="상세주소 입력" name="member_addr_2" value="${ userInfo.MEMBER_ADDR_2 }">
                            </div>
                        </td>
                    </tr>
                    <tr>
                    	<th scope="row">성별</th>
                        <td colspan="3">
                        	<label for="sexM" class="radio"><input name="member_gender" id="sexM" type="radio" value="남" class="aln_middle"> 남</label>
                   	  	  <label for="sexW"><input name="member_gender" id="sexW" type="radio" value="여" class="aln_middle"> 여</label>
                   	  </td>
                    </tr>
                    <tr>
                    	<th scope="row">생년월일</th>
                        <td colspan="3">
                   	  	  <select id="yearBox" name="member_year" class="select" style="width:95px;">
                        	  <option>년도</option>
                        	</select>
                       	  <select id="monthBox" name="member_month" class="select" style="width:95px;">
                        	  <option>월</option>
                        	</select>
                       	  <select id="dayBox" name="member_day" class="select" style="width:95px;">
                        	  <option>일</option>
                        	</select>
                      </td>
                    </tr>
                    </tbody>
                    </table>
				</form>
                	<span class="bg1"></span><span class="bg2"></span><span class="bg3"></span><span class="bg4"></span>
                <div class="btnSc">
	                <div style="float: left;">
	                	<a id="delete_btn" href="${ contextPath }/mypage/leave.do"><img src="" alt="탈퇴" class="rollimg"></a>
	                </div>
	                <div style="float: right;">
	                	<a id="update_btn"><img src="" alt="수정" class="rollimg"></a>&nbsp;&nbsp;&nbsp;
	                    <a href="${ contextPath }/mypage/info.do"><img src="../assets/images/common/btn_cancel2_off.gif" alt="취소" class="rollimg"></a>
	                </div>
                </div>
            </div>
            

<script type="text/javascript">

	birth.call();

	var memberEmail = "${ userInfo.MEMBER_EMAIL }";
	var emailBreak = memberEmail.split("@");
	
	$("#email1").attr("value", emailBreak[0]);
	$("#email2").val(emailBreak[1]);
	
 	var memberCel = "${ userInfo.MEMBER_CEL }";
 	var memberCelBreak = memberCel.split("-");
 	$("#cel1").val(memberCelBreak[0]);
 	$("#cel2").attr("value", memberCelBreak[1]);
 	$("#cel3").attr("value", memberCelBreak[2]);
 	
 	$("input[name=member_gender]:input[value='${ userInfo.MEMBER_GENDER }']").attr("checked", true);
 	
 	$("#yearBox").val("${ userInfo.MEMBER_YEAR }");
 	$("#monthBox").val("${ userInfo.MEMBER_MONTH }");
 	$("#dayBox").val("${ userInfo.MEMBER_DAY }");
 	

	$("#update_btn").click(function(){
		
		combineEmail.call();
		combineCel.call();
		
		$("#update_form").attr({
			method: 'post',
			action: '${ contextPath }/mypage/userInfoUpdate.do'
		}).submit();
	});
	
</script>
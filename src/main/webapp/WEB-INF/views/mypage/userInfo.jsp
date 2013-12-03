<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<h2 class="divTit"><img src="${ contextPath }/assets/images/mypage/title_adjust.gif" alt="회원정보수정"></h2>

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

<form id="joinForm">
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
		<td><input name="member_pw_again" type="password" class="input" style="width:205px;"></td>
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
		<td colspan="3"><input type="text" class="input" style="width:290px;" name="member_email" placeholder="exaple@mail.com" value="${ userInfo.MEMBER_EMAIL }"></td>
	</tr>
	<tr>
		<th scope="row">휴대번호</th>
		<td colspan="3">
			<input type="hidden" id="member_cel" name="member_cel">
			<select  name="cel1" id="cel1" class="select" style="width:95px;">
				<option>010</option>
			</select> -
			<input type="text" class="input" style="width:95px;" name="cel2" id="cel2"> -
			<input type="text" class="input" style="width:95px;" name="cel3" id="cel3">
	  </td>
	</tr>
	<tr>
		<th scope="row">주소</th>
		<td colspan="3">
			<input type="text" class="input" style="width:290px;" placeholder="우편번호" name="member_post" value="${ userInfo.MEMBER_POST }" readonly> <a href="javascript:showHide('popAddr');"><img src="${ contextPath }/assets/images/common/btn_find_off.gif" alt="찾아보기" class="rollimg" style="vertical-align: middle;"></a>
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
			<a id="delete_btn" href="${ contextPath }/mypage/leave.do"><img src="${ contextPath }/assets/images/mypage/bt_secede_off.gif" alt="탈퇴" class="rollimg"></a>
		</div>
		<div style="float: right;">
			<a id="update_btn"><img src="${ contextPath }/assets/images/common/btn_edit_off2.gif" alt="수정" class=""></a>
			<a href="${ contextPath }/mypage/info.do"><img src="${ contextPath }/assets/images/common/btn_cancel3_off.gif" alt="취소" class="rollimg"></a>
		</div>
</div>

<!-- 주소찾기팝업 -->
<div class="layPop" id="popAddr" style="display:none;">
	<div class="bg"></div>
	<div class="popCoupon">
		<h2>주소정보를 입력해 주세요.</h2>
		<div class="divTab" style="text-align: center;">
			<ul class="tab01" style="display: inline-block;">
				<li><a class="tabGroup on" data-target="dong"><span>동명 검색</span></a></li>
				<li><a class="tabGroup" data-target="road"><span>도로명 검색</span></a></li>
				<li><a class="tabGroup" data-target="post"><span>우편번호 검색</span></a></li>
			</ul>
		</div>
		<div id="dong" style="margin-top: 10px">
			<label>동명 : <input id="dongNo" type="text" style="width:90px;"></label>
			<label>번지 : <input id="buildNo1" type="text" style="width:90px;"></label>
			<a id="dong-modify-btn"><img src="${ contextPath }/assets/images/common/btn_search.gif" alt="검색" class="rollimg" style="vertical-align: middle;"></a>
		</div>
		
		<div id="road" style="margin-top: 10px; display: none;">
			<label>도로명 : <input id="roadNo" type="text" style="width:90px;"></label>
			<label>건물번호 : <input id="buildNo" type="text" style="width:90px;"></label>
			<a id="road-modify-btn"><img src="${ contextPath }/assets/images/common/btn_search.gif" alt="검색" class="rollimg" style="vertical-align: middle;"></a>
		</div>
		
		<div id="post" style="margin-top: 10px; display: none;">
			우편번호 : <input class="span3" type="text" id="postNo" style="margin: 0;">
			<a id="post-modify-btn"><img src="${ contextPath }/assets/images/common/btn_search.gif" alt="검색" class="rollimg" style="vertical-align: middle;"></a>
		</div>
		
		<div style="margin-top: 10px">
			<div class="some-content-related-div">
				<div id="inner-content-div">
					<ul id="addrList"></ul>
				</div>
			</div>
		</div>
		
		<p class="btClose"><a href="javascript:showHide('popAddr');"><img src="${ contextPath }/assets/images/common/btn_x.gif" alt="close"></a></p>
	</div>
</div>
<!-- //주소찾기팝업 -->


<script type="text/javascript">
$(function(){

	//validate 초기화
	setValid();
	signUpValidateCall();
	
    $('#inner-content-div').slimScroll({
        height: '180px'
    });
});

	birth();

/* 	var memberEmail = "${ userInfo.MEMBER_EMAIL }";
	var emailBreak = memberEmail.split("@");
	
	$("#email1").attr("value", emailBreak[0]);
	$("#email2").val(emailBreak[1]); */
	
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
		
		combineEmail();
		combineCel();
		
		$.ajax({
			url: '${ contextPath }/mypage/userInfoUpdate.ajax',
			data: $("#joinForm").serialize(),
			type: 'post',
			success: function(res) {
				alert("회원정보가 수정 되었습니다.")
			},
			error: function(xhr, status, error) {
				console.log(error);
				console.log(xhr);
				console.log(status);
			}
		});
		
		/* $("#joinForm").attr({
			method: 'post',
			action: '${ contextPath }/mypage/userInfoUpdate.do'
		}).submit(); */
	});
	

	// addr function
	function addrSearchAjax(seComp, wrdComp){
		param = {
				searchSe : seComp,
				srchwrd : wrdComp
		};
		$.ajax({
			url: "${contextPath}/post/addr.ajax",
			data: param,
			dataType: "text",
			type: 'get',
		    success: function(res) {
				var $xml = $(res);
					
					$xml.find("cmmMsgHeader").each(function(){
						var $this = $(this);
						if($this.find("returnCode").text() != 0){
							$("#addrList li").remove();
							$("#addrList").append("<li>" + $this.find("errMsg").text() + "</li>");
						}else {
							$("#addrList li").remove();
							$xml.find("newAddressList").each(function(){
								var $this = $(this);
								var zipno = $this.find("zipNo").text();
								var lnmadres = $this.find("lnmadres").text();
								var rnAdres = $this.find("rnAdres").text();
								if(seComp == 'dong'){
								$("#addrList").append(
									"<li>" + rnAdres + "<br>" + lnmadres + ' ' + "<a data-zipNo='" + zipno + "' data-lnmadres='" + lnmadres + "' class='rollimg addrSelect'>" + "<img src='${ contextPath }/assets/images/common/btn_confirm_off.gif' alt='검색' class='rollimg' style='vertical-align: middle; width: 45px; height:22px;'>" + "</a>" + "</li>" 
								);
								}else {
									$("#addrList").append(
										"<li>" + lnmadres + ' ' + "<a data-zipNo='" + zipno + "' data-lnmadres='" + lnmadres + "' class='rollimg addrSelect'>" + "<img src='${ contextPath }/assets/images/common/btn_confirm_off.gif' alt='검색' class='rollimg' style='vertical-align: middle; width: 45px; height:22px;'>" + "</a>" + "</li>" 
									);	
								}
								
							});
							$("a.addrSelect").click(function(){
								var $this = $(this);
		
								$("input[name='member_post']").val($this.data("zipno"));
								$("input[name='member_addr_1']").val($this.data("lnmadres"));
		
								showHide('popAddr');
							});
						}
					});
					
			},
			error: function(xhr, status, error) {
				/* $("#addrList").append("<li>검색결과가 없습니다.</li>") */
				console.log(error);
				console.log(xhr);
				console.log(status);
			}
		});
	}

	$("#road-modify-btn").click(function(){
		var roadNo = $("#roadNo").val();
		var buildNo = $("#buildNo").val();
		var wrdComp = roadNo + " " + buildNo;
		var seComp = 'road';
		
		addrSearchAjax(seComp, wrdComp);
	});

	$("#dong-modify-btn").click(function(){
		var dongNo = $("#dongNo").val();
		var buildNo = $("#buildNo1").val();
		var wrdComp = dongNo + " " + buildNo;
		var seComp = 'dong';
		
		addrSearchAjax(seComp, wrdComp);
	});

	$("#post-modify-btn").click(function(){
		var wrdComp = $("#postNo").val();
		var seComp = 'post';
		
		addrSearchAjax(seComp, wrdComp);
	});

	$("a.tabGroup").click(function(){
		$("#addrList li").remove();
		var $this = $(this);
		$("a.tabGroup").removeClass("on");
		$this.addClass("on");
		
		$("#dong, #road, #post").css("display", "none");
		$("#" + $this.data("target")).show();
	});

	
</script>
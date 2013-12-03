<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

    
<div id="content">

	<h2 class="divTit"><img src="${ contextPath }/assets/images/member/title_join01.gif" alt="회원가입  이용약관동의"></h2>
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
	
	<div class="join01_hd"><img src="${ contextPath }/assets/images/member/join01_img1.jpg" alt="오즈월드 회원 가입을 환영합니다! 전 세계 명작 학습 동화와 다양한 콘텐츠를 최적의 환경에서 제공하겠습니다."></div>
	
	<div class="joinWrap mgt20">
		<ul class="ulLst01 brdB">
			<li>회원 가입을 위해서 아래의 이용약관 및 개인정보 수집 및 이용에 대한 안내를 읽고 동의해 주세요.</li>
		</ul>
		<form id="joinForm">
		<div class="box03 mgt20">
			<table class="joinTbl">
			<colgroup>
			<col width="90">
			<col width="*">
			<col width="120">
			<col width="">
			</colgroup>
			<tbody>
			<tr>
				<th scope="row">아이디</th>
				<td colspan="3"><input id="member_id" name="member_id" type="text" class="input" style="width:205px;">&nbsp;&nbsp;<strong class="fontRed" id="duplication_text"></strong></td>
			</tr>
			<tr class="brdB">
				<th scope="row">비밀번호</th>
				<td><input name="member_pw" id="member_pw" type="password" class="input" style="width:205px;"><p class="mgt5"><strong class="fontRed">* 패스워드는 6-10자리 숫자 영문 조합입니다.</strong></p></td>
				<th scope="row">비밀번호 재입력</th>
				<td><input name="member_pw_again" type="password" class="input" style="width:205px;"><p class="mgt5"><strong class="fontRed" id="duplication_pw"></strong></p></td>
			</tr>
			</tbody>
			</table>
			<table class="joinTbl mgt10">
			<colgroup>
			<col width="90">
			<col width="*">
			</colgroup>
			<tbody>
			<tr>
				<th scope="row">이름</th>
				<td colspan="3"><input name="member_nm" type="text" class="input" style="width:290px;"></td>
			</tr>
			<tr>
				<th scope="row">이메일</th>
				<td colspan="3"><input name="member_email" type="text" class="input" style="width:290px;" placeholder="exaple@mail.com"></td>
			</tr>
			<tr>
				<th scope="row">휴대번호</th>
				<td colspan="3">
					<input type="hidden" id="member_cel" name="member_cel">
					<select name="cel1" id="cel1" class="select" style="width:95px;">
						<option>010</option>
					</select> -
					<input name="cel2" id="cel2" type="text" class="input" style="width:95px;" > -
					<input name="cel3" id="cel3" type="text" class="input" style="width:95px;" >
				</td>
			</tr>
			<tr>
				<th scope="row">주소</th>
				<td colspan="3">
					<input name="member_post" type="text" class="input" style="width:290px;" placeholder="동,읍,리 입력"> <a href="javascript:showHide('popAddr');"><img src="${ contextPath }/assets/images/common/btn_find_off.gif" alt="찾아보기" class="rollimg" style="vertical-align: middle;"></a>
					<div class="mgt5">
						<input name="member_addr_1" type="text" class="input" style="width:290px;" placeholder="주소 1">
						<input name="member_addr_2" type="text" class="input" style="width:290px;" placeholder="상세주소 입력">
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
					<select name="member_year" id="yearBox" class="select" style="width:95px;">
						<option>년도</option>
					</select>
					<select name="member_month" id="monthBox" class="select" style="width:95px;">
						<option>월</option>
					</select>
					<select name="member_day" id="dayBox" class="select" style="width:95px;">
						<option>일</option>
					</select>
				</td>
			</tr>
			</tbody>
			</table>
			<span class="bg1"></span><span class="bg2"></span><span class="bg3"></span><span class="bg4"></span>
		</div>
		</form>
		<div class="btnSc">
			<a href="#" id="submit-btn"><img src="${ contextPath }/assets/images/common/btn_join_off.gif" alt="가입하기" class="rollimg"></a>&nbsp;&nbsp;&nbsp;
			<a href="#"><img src="${ contextPath }/assets/images/common/btn_cancel2_off.gif" alt="취소" class="rollimg"></a>
		</div>
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

	birth();

    $('#inner-content-div').slimScroll({
        height: '180px'
    });
});

$("input[name=member_pw_again]").focusout(function(event){
	if($("input[name=member_pw]").val().length >= 6 && $("input[name=member_pw_again]").val().length <= 10){
		if($("input[name=member_pw]").val() == $("input[name=member_pw_again]").val()){
			$("#duplication_pw").text("비밀번호가 일치합니다.");
		}else {
			$("#duplication_pw").text("비밀번호가 일치하지 않습니다.");
		}
	}else {
		$("#duplication_pw").text("");
	}
});

$("#member_id").keyup(function(event){
	$("#duplication_text").empty();
	if($("#member_id").val().length >= 4 && $("#member_id").val().length <= 15){
		if($("#member_id").val().match(/[^a-z0-9]/)){
			$("#duplication_text").text("영문 및 숫자만 입력해 주세요.");
		}else{
			$.ajax({
			    type: "POST",
			    url: "${ contextPath }/duplication.ajax",
			    data: {
			    	member_id : $('#member_id').val()
			    }
			}).done(function(data){
		    	console.info("code : " + data.code);
		    	if(data.code == 200) {
		    		$("#duplication_text").text("사용가능한 아이디 입니다.");
		    	} else {
		    		$("#duplication_text").text("사용 불가한 아이디 입니다.");
		    	}
		    }).fail(function(data){
		    	alert( "서버에러 죄송합니다.");
		    });	
		}	
	}else {
		$("#duplication_text").text("아이디를 4자리 이상 15자리 이하로 입력해 주세요.");
	}
});
	
	$("#submit-btn").click(function(){
		combineCel.call();

		$("#joinForm").attr({
			method: 'post',
			action: '${ contextPath }/signUpResult.do'
		}).submit();
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

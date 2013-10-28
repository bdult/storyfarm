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
                        <td colspan="3"><input id="member_id" name="member_id" type="text" class="input" style="width:205px;"></td>
                    </tr>
                    <tr class="brdB">
                    	<th scope="row">비밀번호</th>
                        <td><input name="member_pw" id="member_pw" type="password" class="input" style="width:205px;"><p class="mgt5"><strong class="fontRed">* 패스워드는 6-10자리 숫자 영문 조합입니다.</strong></p></td>
                   	  	<th scope="row">비밀번호 재입력</th>
                      	<td><input name="member_pw_again" type="password" class="input" style="width:205px;"></td>
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
                        	<input type="text" class="input" style="width:290px;" placeholder="동,읍,리 입력"> <a href="#"><img src="${ contextPath }/assets/images/common/btn_find_off.gif" alt="찾아보기" class="rollimg"></a>
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
    
<script type="text/javascript">

	//validate 초기화
	setValid();
	signUpValidateCall();

	birth();
	
$("#member_id").keyup(function(event){
	if($("#member_id").val() == null || $("#member_id").val() == ''){
		alert("한글자 이상 입력해 주세요");
	}else{
		$("#duplication_text").empty();
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
	    		$("#duplication_text").text("이미 사용중인 아이디 입니다.");
	    	}
	    }).fail(function(data){
	    	alert( "서버에러 죄송합니다.");
	    });
	}
});
	
	$("#submit-btn").click(function(){
		combineCel.call();

		$("#joinForm").attr({
			method: 'post',
			action: '${ contextPath }/signUpResult.do'
		}).submit();
	});
</script>

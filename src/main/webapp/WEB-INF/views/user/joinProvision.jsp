<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
    
   		<div id="content">
        
        	<h2 class="divTit"><img src="${ contextPath }/assets/images/member/title_join01.gif" alt="회원가입  이용약관동의"></h2>
            <!-- location -->
      		<div id="divLocation">
        		<ul class="location">
					<c:forEach items="${ breadcrumbs }" var="obj" varStatus="status">
						<c:choose>
							<c:when test="${ status.first }">
          						<li class="first"><a href="/" class="home"><img src="${ contextPath }/assets/images/common/blt_home.gif" alt="home"></a></li>
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
            	<ul class="ulLst01">
                	<li>회원 가입을 위해서 아래의 이용약관 및 개인정보 수집 및 이용에 대한 안내를 읽고 동의해 주세요.</li>
                </ul>
           	  	<h3 class="divTit mgt20"><img src="${ contextPath }/assets/images/member/join01_tit1.gif" alt="이용약관"></h3>
            	<div class="divChk"> 
                	<input name="" type="checkbox" value="" id="checkall"> <label for="userChk">이용약관, 개인정보 수집 및 이용에 모두 동의 합니다.</label>
                </div>
              	<h4 class="divTit"><img src="${ contextPath }/assets/images/member/join01_tx1.gif" alt="오즈월드 이용약관"></h4>
                <div class="scrollBx" style="height:90px;">
                	본 이용문의와 관련하여 아래와 같이 개인정보가 수집·이용됨을 알려드립니다. 이용문의의 사실 관계 확인 및 처리 내용 안내를 위하여 반드시 필요한 정보이므로 개인정보 수집·이용에 동의하지 않으실 경우 이용문의를 이용하실 수가 없습니다.
                </div>
                <div class="divChk noBrd"> 
                	<input name="" type="checkbox" value="" id="checkbox1"> <label for="userChk1">오즈월드 이용약관에 동의합니다.</label>
                </div>
                <h4 class="divTit"><img src="${ contextPath }/assets/images/member/join01_tx2.gif" alt="개인정보 수집 및 이용에 대한 안내"></h4>
                <div class="scrollBx" style="height:90px;">
                	본 이용문의와 관련하여 아래와 같이 개인정보가 수집·이용됨을 알려드립니다. 이용문의의 사실 관계 확인 및 처리 내용 안내를 위하여 반드시 필요한 정보이므로 개인정보 수집·이용에 동의하지 않으실 경우 이용문의를 이용하실 수가 없습니다.
                </div>
                <div class="divChk noBrd"> 
                	<input name="" type="checkbox" value="" id="checkbox2"> <label for="userChk2">개인정보 수집 및 이용에 동의합니다.</label>
                </div>
                <h3 class="divTit mgt20"><img src="${ contextPath }/assets/images/member/join01_tit2.gif" alt="본인인증"></h3>
                <div class="box02">
                	<p>오즈월드는 깨끗하고 안전한 인터넷 환경 조성과 소중한 회원님의 개인정보 보호를 위하여 주민등록법 제21조 제2항 제9호(시행일 2006년 9월 25일), 정보통신망 이용촉진 및 정보보호 등에 관한 법률 제44조의 5항(2007년7월27일 시행)에 의거, 회원가입 시 본인확인 절차를 거치고 있습니다.</p>
                    <div class="btnSc">
                    	<a href="#"><img src="${ contextPath }/assets/images/member/btn_mobile_off.gif" alt="휴대폰 인증"  class="rollimg"></a>
                        <a href="#"><img src="${ contextPath }/assets/images/member/btn_ipin2_off.gif" alt="아이핀 인증"  class="rollimg"></a>
                    </div>
                </div>
                <div class="box02 mgt10">
               	  	<ul class="ulLst02">
                    	<li>『정보통신망 이용 촉진 및 정보보호 등에 관한 법률(이하 정보통신망법) 』 제 23조의 2 "주민등록번호의 사용 제한"에 따라 저희 오즈월드 사이트에서는 주민등록번호를 받지 않습니다.</li>
                    	<li class="mgt10">본인인증을 위해 입력하신 개인정보는 본인인증기관에서 수집하는 정보이며, 이때 수집된 정보는 본인인증 외 어떠한 용도로도 이용되거나 별도 저장되지 않습니다.</li>
                    </ul>
                </div>
                <div class="btnSc aright">
                	<a href="#" id="submit_btn"><img src="${ contextPath }/assets/images/common/btn_confirm2_off.gif" alt="확인" class="rollimg"></a>
                	<a href="#"><img src="${ contextPath }/assets/images/common/btn_cancel_off.gif" alt="취소" class="rollimg"></a>
                </div>
            </div>
            
        </div>

<script type="text/javascript">
	$("#checkall").change(function(){
		var chk = $("#checkall").is(':checked');
		if(chk == true){
			$("#checkbox1").prop('checked', true);
			$("#checkbox2").prop('checked', true);
		}else if(chk == false){
			$("#checkbox1").prop('checked', false);
			$("#checkbox2").prop('checked', false);
		}
	});

	$("#submit_btn").click(function(){
		if($("#checkbox1").is(':checked') == false || $("#checkbox2").is(':checked') == false){
			alert("이용약관에 동의해주세요");
		}else {
			$("#submit_btn").attr({
				href: '${ contextPath }/signUp.do'
			});
		}
	});
</script>
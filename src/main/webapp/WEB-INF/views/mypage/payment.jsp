<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

            <!-- divContent -->
            <div id="divContent">
                <h2 class="divTit"><img src="../assets/images/mypage/title_pay.gif" alt="유료서비스 결제"></h2>
              	<!-- location -->
                <div id="divLocation">
                    <ul class="location">
                        <li class="first"><a href="#" class="home"><img src="../assets/images/common/blt_home.gif" alt="home"></a></li>
                        <li><a href="#">마이페이지</a></li>
                        <li class="current">유료서비스 결제</li>
                    </ul>
                </div>
              	<!-- //location -->
                
           	  <div class="myPageStep step01">
                	<ul>
                    	<li><strong>1. 상품선택</strong></li>
                    	<li>2. 결제하기</li>
                    	<li>3. 신청완료</li>
                    </ul>
                </div>
                
       	  	  <h3 class="divTit3 mgt30">오즈월드 프리미엄 요금제</h3>
                <p class="payHd"><img src="../assets/images/common/blt_dot6.gif" alt="" class="aln_middle"> 오즈월드 모든 컨텐츠 이용 + 자녀방,부모방서비스 이용 + 프린트학습 전체 이용 가능</p>
                <table class="data center">
               	<colgroup>
                <col width="*">
                <col width="20%">
                <col width="20%">
                <col width="20%">
                <col width="20%">
                </colgroup>
                <tbody>
                <tr>
               	  	<th><strong class="fontGreen">기간</strong></th>
                    <td class="bg">1개월</td>
                    <td class="bg brdL">3개월</td>
                    <td class="bg brdL">6개월</td>
                    <td class="bg brdL">12개월</td>
                </tr>
                <tr>
                	<th><strong class="fontGreen">이용금액</strong></th>
                    <td>15,000원</td>
                    <td class="brdL">45,000원</td>
                    <td class="brdL">90,000원</td>
                    <td class="brdL">180,000원</td>
                </tr>
                <tr>
                	<th><strong class="fontGreen">장기할인</strong></th>
                    <td class="fontRed">-</td>
                    <td class="brdL fontRed">-3,000원</td>
                    <td class="brdL fontRed">-11,000원</td>
                    <td class="brdL fontRed">-54,000원</td>
                </tr>
                <tr>
                	<th><strong class="fontGreen">결제금액</strong></th>
                    <td class="fontBlue">15,000원</td>
                    <td class="brdL fontBlue">42,000원</td>
                    <td class="brdL fontBlue">79,000원</td>
                    <td class="brdL fontBlue">126,000원</td>
                </tr>
                </tbody>
                </table>
                <div class="btPayDiv">
                	<ul>
                    	<li><a href="#"><img src="../assets/images/mypage/bt_pay01_off.gif" alt="1개월신청" class="rollimg"></a></li>
                    	<li><a href="#"><img src="../assets/images/mypage/bt_pay02_off.gif" alt="3개월신청" class="rollimg"></a></li>
                    	<li><a href="#"><img src="../assets/images/mypage/bt_pay03_off.gif" alt="6개월신청" class="rollimg"></a></li>
                    	<li><a href="#"><img src="../assets/images/mypage/bt_pay04_off.gif" alt="12개월신청" class="rollimg"></a></li>
                    </ul>
                </div>
                
           	  <h3 class="divTit3 mgt30">오즈월드 과목별 요금제</h3>
           	  <p class="payHd"><img src="../assets/images/common/blt_dot6.gif" alt="" class="aln_middle"> 오즈월드 각 과목별 컨텐츠 이용 +자녀방,부모방서비스 이용 + 프린트학습 부분 이용 가능</p>
                <table class="data center">
               	<colgroup>
                <col width="*">
                <col width="20%">
                <col width="20%">
                <col width="20%">
                <col width="20%">
                </colgroup>
                <tbody>
                <tr>
               	  	<th><strong class="fontGreen">과목</strong></th>
                    <td class="bg">1개월</td>
                    <td class="bg brdL">3개월</td>
                    <td class="bg brdL">6개월</td>
                    <td class="bg brdL">12개월</td>
                </tr>
                <tr>
                	<th><strong class="fontGreen">한글</strong></th>
                    <td><label><input name="subjKorean" type="radio" value="8000"> 8,000원</label></td>
                    <td class="brdL"></td>
                    <td class="brdL"><label><input name="subjKorean" type="radio" value="38000"> 38,000원</label></td>
                    <td class="brdL"><label><input name="subjKorean" type="radio" value="49000"> 49,000원</label></td>
                </tr>
                <tr>
                	<th><strong class="fontGreen">영어</strong></th>
                    <td><label><input name="subjEnglish" type="radio" value="6000"> 6,000원</label></td>
                    <td class="brdL"><label><input name="subjEnglish" type="radio" value="12000"> 12,000원</label></td>
                    <td class="brdL">&nbsp;</td>
                    <td class="brdL">&nbsp;</td>
                </tr>
                <tr>
                	<th><strong class="fontGreen">수학</strong></th>
                    <td><label><input name="subjMath" type="radio" value="9000"> 9,000원</label></td>
                    <td class="brdL">&nbsp;</td>
                    <td class="brdL"><label><input name="subjMath" type="radio" value="39000"> 39,000원</label></td>
                    <td class="brdL">&nbsp;</td>
                </tr>
                <tr>
                  <th><strong class="fontGreen">과학</strong></th>
                  <td><label><input name="subjScience" type="radio" value="12000">12,000원</label></td>
                  <td class="brdL">&nbsp;</td>
                  <td class="brdL"><label><input name="subjScience" type="radio" value="42000"> 42,000원</label></td>
                  <td class="brdL">&nbsp;</td>
                </tr>
                <tr>
                  <th><strong class="fontGreen">창의</strong></th>
                  <td><label><input name="subjCreative" type="radio" value="8000"> 8,000원</label></td>
                  <td class="brdL"><label><input name="subjCreative" type="radio" value="12000"> 12,000원</label></td>
                  <td class="brdL"><label><input name="subjCreative" type="radio" value="38000"> 38,000원</label></td>
                  <td class="brdL"><label><input name="subjCreative" type="radio" value="49000"> 49,000원</label></td>
                </tr>
                <tr>
                  <th><strong class="fontGreen">동요</strong></th>
                  <td><label><input name="subjSong" type="radio" value="6000"> 6,000원</label></td>
                  <td class="brdL">&nbsp;</td>
                  <td class="brdL">&nbsp;</td>
                  <td class="brdL">&nbsp;</td>
                </tr>
                <tr>
                  <th><strong class="fontGreen">동화</strong></th>
                  <td><label><input name="subjStory" type="radio" value="9000"> 9,000원</label></td>
                  <td class="brdL">&nbsp;</td>
                  <td class="brdL"><label><input name="subjStory" type="radio" value="39000"> 39,000원</label></td>
                  <td class="brdL">&nbsp;</td>
                </tr>
                <tr>
                  <th><strong class="fontGreen">생활</strong></th>
                  <td><label><input name="subjLife" type="radio" value="12000"> 12,000원</label></td>
                  <td class="brdL">&nbsp;</td>
                  <td class="brdL"><label><input name="subjLife" type="radio" value="42000"> 42,000원</label></td>
                  <td class="brdL">&nbsp;</td>
                </tr>
                </tbody>
                </table>
                
                <div class="btPayDiv">
                	<ul>
                   	  <li class="typ2">합계금액 <input id="subjTotal" name="" type="text" style="width:250px;" class="mgl20" readonly> 원 <a href="#"><img src="../assets/images/mypage/bt_pay05_off.gif" alt="과목별 요금제 신청" class="rollimg aln_middle"></a></li>
                    </ul>
                </div>
                
                <h3 class="divTit3 mgt30">오즈월드 전집별 요금제</h3>
           	  <p class="payHd"><img src="../assets/images/common/blt_dot6.gif" alt="" class="aln_middle"> 오즈월드 각 과목별 컨텐츠 이용 +자녀방,부모방서비스 이용 + 프린트학습 부분 이용 가능</p>
                <table class="data center">
               	<colgroup>
                <col width="*">
                <col width="20%">
                <col width="20%">
                <col width="20%">
                <col width="20%">
                </colgroup>
                <tbody>
                <tr>
               	  	<th><strong class="fontGreen">과목</strong></th>
                    <td class="bg">1개월</td>
                    <td class="bg brdL">3개월</td>
                    <td class="bg brdL">6개월</td>
                    <td class="bg brdL">12개월</td>
                </tr>
                <tr>
                	<th><strong class="fontGreen">ABC픽처북</strong></th>
                    <td><label><input name="" type="radio" value=""> 8,000원</label></td>
                    <td class="brdL"></td>
                    <td class="brdL"><label><input name="" type="radio" value=""> 38,000원</label></td>
                    <td class="brdL"><label><input name="" type="radio" value=""> 49,000원</label></td>
                </tr>
                <tr>
                	<th><strong class="fontGreen">아가월드</strong></th>
                    <td><label><input name="" type="radio" value="">
                    6,000원</label></td>
                    <td class="brdL"><label><input name="" type="radio" value=""> 12,000원</label></td>
                    <td class="brdL">&nbsp;</td>
                    <td class="brdL">&nbsp;</td>
                </tr>
                <tr>
                	<th><strong class="fontGreen">ABC픽처북</strong></th>
                    <td><label><input name="" type="radio" value=""> 
                    9,000원</label></td>
                    <td class="brdL">&nbsp;</td>
                    <td class="brdL"><label><input name="" type="radio" value=""> 39,000원</label></td>
                    <td class="brdL">&nbsp;</td>
                </tr>
                <tr>
                  <th><strong class="fontGreen">아가월드</strong></th>
                  <td><label><input name="" type="radio" value=""> 
                  12,000원</label></td>
                  <td class="brdL">&nbsp;</td>
                  <td class="brdL"><label><input name="" type="radio" value=""> 42,000원</label></td>
                  <td class="brdL">&nbsp;</td>
                </tr>
                <tr>
                  <th><strong class="fontGreen">ABC픽처북</strong></th>
                  <td><label><input name="" type="radio" value=""> 8,000원</label></td>
                  <td class="brdL"><label><input name="" type="radio" value=""> 12,000원</label></td>
                  <td class="brdL"><label><input name="" type="radio" value=""> 38,000원</label></td>
                  <td class="brdL"><label><input name="" type="radio" value=""> 49,000원</label></td>
                </tr>
                <tr>
                  <th><strong class="fontGreen">아가월드</strong></th>
                  <td><label><input name="" type="radio" value=""> 
                  6,000원</label></td>
                  <td class="brdL">&nbsp;</td>
                  <td class="brdL">&nbsp;</td>
                  <td class="brdL">&nbsp;</td>
                </tr>
                <tr>
                  <th><strong class="fontGreen">ABC픽처북</strong></th>
                  <td><label><input name="" type="radio" value=""> 
                  9,000원</label></td>
                  <td class="brdL">&nbsp;</td>
                  <td class="brdL"><label><input name="" type="radio" value=""> 
                  39,000원</label></td>
                  <td class="brdL">&nbsp;</td>
                </tr>
                <tr>
                  <th><strong class="fontGreen">아가월드</strong></th>
                  <td><label><input name="" type="radio" value=""> 
                  12,000원</label></td>
                  <td class="brdL">&nbsp;</td>
                  <td class="brdL"><label><input name="" type="radio" value=""> 42,000원</label></td>
                  <td class="brdL">&nbsp;</td>
                </tr>
                </tbody>
                </table>
                
                <div class="btPayDiv">
                	<ul>
                    	<li class="typ2">합계금액 <input name="" type="text" style="width:250px;" class="mgl20" readonly> 원 <a href="#"><img src="../assets/images/mypage/bt_pay06_off.gif" alt="전집별 요금제 신청" class="rollimg aln_middle"></a></li>
                  	</ul>
              	</div>
                
                <div class="boxDot mgt50">
                	<div class="inner">
                    	<ul class="ulLst01 mgl50">
                        	<li>프리미엄요금제, 과목별요금제,전집별요금제 중 한 개만 선택이가능합니다.</li>
                        	<li>과목별요금제에서 복수의 과목을 선택하실 수 있습니다. (예시, 한글 + 영어)</li>
                        	<li>전집별요금제에서 복수의 전접을 선택하실 수 있습니다. (예시, ABC 픽쳐북+아가월드)</li>
                        	<li>복수의 요금제 선택 시 하단의 합계금액에서 표시됩니다.</li>
                        </ul>
                    </div>
                </div>
                
          	</div>
            <!-- //divContent -->

<script type="text/javascript">

	$(".lm0501").addClass("on");

	$("[type=radio]").click(function(){
		var $this = $(this);
		console.info($this.is(":checked"));
		if($("[type=radio]").is(":checked") == $this.is(":checked")){
			alert("test");
		}
		
	});
	$("[type=radio]").click(function(){
		
		var total = parseInt($('[name=korean]:checked').val()) + parseInt($('[name=english]:checked').val()) + parseInt($('[name=math]:checked').val()) + parseInt($('[name=science]:checked').val()) + parseInt($('[name=creative]:checked').val()) + parseInt($('[name=song]:checked').val()) + parseInt($('[name=story]:checked').val()) + parseInt($('[name=life]:checked').val());
		$("#totalSubject").val(total);
	});
</script>
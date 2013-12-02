<%@ page contentType="text/html" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

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

<div class="myPageStep step02">
	<ul>
		<li>1. 상품선택</li>
		<li><strong>2. 결제하기</strong></li>
		<li>3. 신청완료</li>
	</ul>
</div>

<h3 class="divTit3 mgt30">선택하신 요금제 및 상세 내역</h3>
<form id="paymentSelectInfo">
<table class="data">
<colgroup>
<col width="20%">
<col width="*">
</colgroup>
<tbody>
<tr>
	<th><strong class="fontGreen">신청요금제</strong></th>
	<td>1달 정기요금제</td>
</tr>
<tr>
	<th><strong class="fontGreen">서비스 이용기간</strong></th>
	<td>2013년 9월 1일 -2013년 10월 1일</td>
</tr>
<tr>
	<th><strong class="fontGreen">서비스 요금</strong></th>
	<td>${ paymentInfo }</td>
</tr>
</tbody>
</table>

<h3 class="divTit3 mgt30">할인 및 결제방법 선택</h3>
<table class="data">
<colgroup>
<col width="20%">
<col width="*">
</colgroup>
<tbody>
<tr>
<th><strong class="fontGreen">쿠폰선택</strong></th>
	<td>
	<select name="" class="aln_middle">
		<option>선택하기</option>
	</select>
	<a href="#"><img src="../assets/images/common/btn_selUse_off.gif" alt="선택사용" class="rollimg aln_middle"></a>
		보유쿠폰 2종
	</td>
</tr>
<tr>
	<th><strong class="fontGreen">할인금액</strong></th>
	<td></td>
</tr>
<tr>
	<th><strong class="fontGreen">최종결제금액</strong></th>
	<td id="finalPayInfo">${ paymentInfo }</td>
</tr>
<tr>
	<th><strong class="fontGreen">결제방식</strong></th>
	<td>
		<label class="radio"><input name="selectPay" id="card" type="radio" value="" checked> 신용카드</label>
		<label class="radio"><input name="selectPay" id="transfer" type="radio" value=""> 실시간계좌이체</label>
		<label class="radio"><input name="selectPay" id="passbook" type="radio" value=""> 무통장입금</label>
		<label class="radio"><input name="selectPay" id="mobile" type="radio" value=""> 휴대폰결제</label>
	</td>
</tr>
</tbody>

<tbody id="cardForm">
<tr>
<th><strong class="fontGreen">카드종류</strong></th>
	<td>
		<select name="" class="aln_middle">
			<option>카드선택</option>
		</select>
	</td>
</tr>
<tr>
<th><strong class="fontGreen">할부기간</strong></th>
	<td>
		<select name="" class="aln_middle">
			<option>일시불</option>
		</select>
	</td>
</tr>
<tr>
	<th><strong class="fontGreen">카드사 공지사항</strong></th>
	<td><span  class="fontRed">카드사공지 확인 후 기재</span></td>
</tr>
<tr>
	<th><strong class="fontGreen">결제정보동의</strong></th>
	<td>
		<label class="radio"><input name="" type="checkbox" value=""> 정보제공동의</label> <a href="#" class="blue">결제 대행사별 상세제공안내</a>
	</td>
</tr>
</tbody>

<tbody id="transferForm" style="display: none;">
<tr>
	<th><strong class="fontGreen">계좌이체안내</strong></th>
	<td>회원님의 계좌에서 바로 이체되는 서비스이며, 이체 수수료는 무료입니다.<br>23시 이후에는 은행별 이용 가능시간을 미리 확인하신 후 결제를 진행해 주세요.</td>
</tr>
<tr>
	<th><strong class="fontGreen">소득공제대상</strong></th>
	<td>
		<p>
			<label><input name="" type="radio" value=""> 신청함</label>
			<label><input name="" type="radio" value=""> 신청안함</label>
		</p>
		<p class="mgt5">
			<label><input name="" type="radio" value=""> 개인소득공제</label>
			<label><input name="" type="radio" value=""> 사업자증빙용</label>
		</p>
		<p class="mgt5">
			<select name="" class="aln_middle">
				<option>현금영수증번호</option>
			</select>
			<input name="" type="text" style="width:70px;"> - <input name="" type="text" style="width:70px;"> - <input name="" type="text" style="width:70px;"> - <input name="" type="text" style="width:70px;">
		</p>
	</td>
</tr>
<tr>
	<th><strong class="fontGreen">결제정보동의</strong></th>
	<td>
		<label class="radio"><input name="" type="checkbox" value=""> 정보제공동의</label> <a href="#" class="blue">결제 대행사별 상세제공안내</a>
		</td>
</tr>
</tbody>

<tbody id="passbookForm" style="display: none;">
<tr>
	<th><strong class="fontGreen">환불계좌</strong></th>
	<td>
		<select name="" class="aln_middle">
			<option>은행선택</option>
		</select>
		<input name="" type="text" style="width:220px;">
		'-' 없이 숫자만 입력해 주세요.
    </td>
</tr>
<tr>
	<th><strong class="fontGreen">소득공제대상</strong></th>
	<td>
		<p>
			<label><input name="" type="radio" value=""> 신청함</label>
			<label><input name="" type="radio" value=""> 신청안함</label>
		</p>
		<p class="mgt5">
			<label><input name="" type="radio" value=""> 개인소득공제</label>
			<label><input name="" type="radio" value=""> 사업자증빙용</label>
		</p>
		<p class="mgt5">
			<select name="" class="aln_middle">
				<option>주민등록번호</option>
			</select>
			<input name="" type="text" style="width:110px;"> - <input name="" type="text" style="width:110px;">
		</p>
	</td>
</tr>
<tr>
	<th><strong class="fontGreen">결제정보동의</strong></th>
	<td>
		<label class="radio"><input name="" type="checkbox" value=""> 정보제공동의</label> <a href="#" class="blue">결제 대행사별 상세제공안내</a>
	</td>
</tr>
</tbody>

</table>
</form>

<div class="btnSc">
	<a id="submit"><img src="../assets/images/common/btn_pay2_off.gif" alt="결제하기" class="rollimg"></a>
	<a href="#"><img src="../assets/images/common/btn_cancel2_off.gif" alt="취소하기" class="rollimg"></a>
</div>

<div class="boxDot mgt50">
	<div class="inner">
		<ul class="ulLst01 mgl50">
			<li>결제 프로그램이 작동하지 않으면 수동설치버튼을 클릭하여 주세요</li>
			<li>결제관련 문의 : 고객센터 02-9874-5632</li>
			<li>운영시간 :평일 오전 10시~ 오후 5시(점심 12시~1시)</li>
		</ul>
	</div>
</div>
            
<script type="text/javascript">
	$(".lm0501").addClass("on");

	$("#submit").click(function(){
		var input = $("<input>").attr("type", "hidden").attr("name", "pay").val($("#finalPayInfo").text());
		$('#paymentSelectInfo').append($(input));
		$("#paymentSelectInfo").attr({
			method: 'post',
			action: '${ contextPath }/mypage/paymentResult.do'
		}).submit();
	});
	
	$("#card").change(function(){
		$("#cardForm").show();
		$("#transferForm").css("display", "none");
		$("#passbookForm").css("display", "none");
	});
	$("#transfer").change(function(){
		$("#cardForm").css("display", "none");
		$("#transferForm").show();
		$("#passbookForm").css("display", "none");
	});
	$("#passbook").change(function(){
		$("#cardForm").css("display", "none");
		$("#transferForm").css("display", "none");
		$("#passbookForm").show();
	});
	$("#mobile").change(function(){
		$("#cardForm").css("display", "none");
		$("#transferForm").css("display", "none");
		$("#passbookForm").css("display", "none");
	});

</script>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>


<div class="row">
	<div class="col-lg-4">
		<a class="btn btn-default">1.상품선택</a>
	</div>
	<div class="col-lg-4">
		<a class="btn btn-default" href="${ contextPath }/mypage/paymentSelect.do">2.결제하기</a>
	</div>
	<div class="col-lg-4">
		<a class="btn btn-default">3.신청완료</a>
	</div>
	<div class="col-lg-12 text-left">
		<h3><br>오즈월드 프리미엄 요금제<br><br></h3>
	</div>
</div>
<div class="row">
	<div class="well">
		<div class="col-lg-12 text-center">
			오즈월드 모든 컨텐츠 이용<br>
			자녀방, 부모방 서비스 이용 + 프린트학습 전체 이용가능<br>
		</div>
	</div>
	<table class="table table-striped">
		<tr>
			<td>기간</td>
			<td>1개월</td>
			<td>3개월</td>
			<td>6개월</td>
			<td>12개월</td>
		</tr>
		<tr>
			<td>이용금액</td>
			<td>15,000원</td>
			<td>45,000원</td>
			<td>90,000원</td>
			<td>180,000원</td>
		</tr>
		<tr>
			<td>장기할인</td>
			<td>-</td>
			<td>-3,000원</td>
			<td>-11,000원</td>
			<td>-54,000원</td>
		</tr>
		<tr>
			<td>결제금액</td>
			<td>15,000원</td>
			<td>42,000원</td>
			<td>79,000원</td>
			<td>126,000원</td>
		</tr>
		<tr>
			<td></td>
			<td><a class="btn btn-default">1개월신청</a></td>
			<td><a class="btn btn-default">3개월신청</a></td>
			<td><a class="btn btn-default">6개월신청</a></td>
			<td><a class="btn btn-default">12개월신청</a></td>
		</tr>
	</table>
</div>

<div class="row">
	<div class="col-lg-12 text-left">
		<h3><br>오즈월드 과목별 요금제<br><br></h3>
	</div>
</div>
<div class="row">
	<div class="well">
		<div class="col-lg-12 text-center">
			오즈월드 각 과목별 컨텐츠 이용<br>
			+자녀방,부모방서비스 이용+프린트학습 부분 이용 가능<br>
		</div>
	</div>
	<form method="get" action="${ contextPath }/mypage/paymentSelect.do">
	<table class="table table-striped">
		<tr>
			<td>과목</td>
			<td>1개월</td>
			<td>3개월</td>
			<td>6개월</td>
			<td>12개월</td>
			<td>선택안함</td>
		</tr>
		<tr>
			<td>한글</td>
			<td><input type="radio" name="korean" value="18000">18,000원</td>	
			<td></td>
			<td><input type="radio" name="korean" value="38000">38,000원</td>
			<td><input type="radio" name="korean" value="49000">49,000원</td>
			<td><input type="radio" name="korean" value="0" checked="checked"></td>
		</tr>
		<tr>
			<td>영어</td>
			<td><input type="radio" name="english" value="18000">6,000원</td>
			<td><input type="radio" name="english" value="18000">12,000원</td>
			<td></td>
			<td></td>
			<td><input type="radio" name="english" value="0" checked="checked"></td>
		</tr>
		<tr>
			<td>수학</td>
			<td><input type="radio" name="math" value="18000">9,000원</td>
			<td><input type="radio" name="math" value="18000">39,000원</td>
			<td></td>
			<td></td>
			<td><input type="radio" name="math" value="0" checked="checked"></td>
		</tr>
		<tr>
			<td>과학</td>
			<td><input type="radio" name="science" value="18000">12,000원</td>
			<td></td>
			<td><input type="radio" name="science" value="18000">42,000원</td>
			<td></td>
			<td><input type="radio" name="science" value="0" checked="checked"></td>
		</tr>
		<tr>
			<td>창의</td>
			<td><input type="radio" name="creative" value="18000">8,000원</td>
			<td></td>
			<td><input type="radio" name="creative" value="18000">38,000원</td>
			<td><input type="radio" name="creative" value="18000">49,000원</td>
			<td><input type="radio" name="creative" value="0" checked="checked"></td>
		</tr>
		<tr>
			<td>동요</td>
			<td><input type="radio" name="song" value="18000">6,000원</td>
			<td><input type="radio" name="song" value="18000">12,000원</td>
			<td></td>
			<td></td>
			<td><input type="radio" name="song" value="0" checked="checked"></td>
		</tr>
		<tr>
			<td>동화</td>
			<td><input type="radio" name="story" value="18000">9,000원</td>
			<td></td>
			<td><input type="radio" name="story" value="18000">39,000원</td>
			<td></td>
			<td><input type="radio" name="story" value="0" checked="checked"></td>
		</tr>
		<tr>
			<td>생활</td>
			<td><input type="radio" name="life" value="18000">12,000원</td>
			<td></td>
			<td><input type="radio" name="life" value="18000">42,000원</td>
			<td></td>
			<td><input type="radio" name="life" value="0" checked="checked"></td>
		</tr>
	</table>
    <label class="col-lg-2 control-label">합계금액 : </label>
    <div class="col-lg-6">
		<input type="text" class="form-control" id="totalSubject" style="width:300px;" value="0">
    </div>
	<div class="col-lg-4">
		<button class="btn btn-default">과목별 요금제 신청</button>
	</div>	
	</form>
</div>

<script type="text/javascript">
	var $this = $(this);
	$("[type=radio]").click(function(){
		var total = parseInt($('[name=korean]:checked').val()) + parseInt($('[name=english]:checked').val()) + parseInt($('[name=math]:checked').val()) + parseInt($('[name=science]:checked').val()) + parseInt($('[name=creative]:checked').val()) + parseInt($('[name=song]:checked').val()) + parseInt($('[name=story]:checked').val()) + parseInt($('[name=life]:checked').val());
		$("#totalSubject").val(total);
	});
</script>
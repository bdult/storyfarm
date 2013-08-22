<%@ page contentType="text/html" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<div class="row">
	<div class="col-lg-12">
		결제정보입력<br><br>
	</div>
	<div class="col-lg-12">
			상품정보<br>
		<table class="table">
			<tr>
				<td>신청요금제</td>
				<td>1달 정기요금제</td>
				<td>요금제변경</td>
				<td>
					<select class="form-control">
						<option>요금제선택</option>
						<option>2</option>
						<option>3</option>
						<option>4</option>
						<option>5</option>
					</select>
				</td>
			</tr>
			<tr>
				<td>서비스 이용기간</td>
				<td>2013년 9월 1일 - 2013년 10월 1일</td>
				<td></td>
				<td></td>
			</tr>
			<tr>
				<td>서비스 요금</td>
				<td>9900원</td>
				<td></td>
				<td></td>
			</tr>
		</table>
	</div>
	<br><br>
	<div class="col-lg-12">
			할인 및 최종결제금액<br>
		<table class="table">
			<tr>
				<td>포인트사용</td>
				<td>
					<div class="col-lg-3">
						<input type="text" class="form-control">
					</div>
					<a class="btn btn-default">전체사용</a>
					보유포인트 <a href="#">200</a> 포인트
				</td>
			</tr>
			<tr>
				<td>할인금액</td>
				<td>
					<div class="col-lg-3">0</div>
				</td>
			</tr>
			<tr>
				<td>최종결제금액</td>
				<td>
					<div class="col-lg-3">9,900원</div>
				</td>
			</tr>
			<tr>
				<td>결제방식</td>
				<td>
					<div class="col-lg-3">
					<div class="radio">
						<label> <input type="radio" name="optionsRadios" value="option1" checked>
							신용카드
						</label>
					</div>
					</div>
					<div class="col-lg-3">
					<div class="radio">
						<label> <input type="radio" id="radioa" name="optionsRadios" value="option2">
							실시간 계좌이체
						</label>
					</div>
					</div>
					<div class="col-lg-3">
					<div class="radio">
						<label> <input type="radio" name="optionsRadios"  value="option3">
							무통장입금
						</label>
					</div>
					</div>
					<div class="col-lg-3">
					<div class="radio">
						<label> <input type="radio" name="optionsRadios" value="option4">
							휴대폰결제
						</label>
					</div>
					</div>
				</td>
			</tr>
			
			<c:if test="true">
				<tr>
					<td>카드종류</td>
					<td>
						<div class="col-lg-3">
							<select class="form-control">
								<option>카드선택</option>
								<option>2</option>
								<option>3</option>
								<option>4</option>
								<option>5</option>
							</select>
						</div>
					</td>
				</tr>
				<tr>
					<td>할부기간</td>
					<td>
						<div class="col-lg-3">
							<select class="form-control">
								<option>일시불</option>
								<option>2</option>
								<option>3</option>
								<option>4</option>
								<option>5</option>
							</select>
						</div>
					</td>
				</tr>
				<tr>
					<td>카드사 공지사항</td>
					<td>
						<div class="col-lg-3">
							카드사공지 확인 후 기재
						</div>
					</td>
				</tr>
			</c:if>
			<c:if test="true">
				<tr>
					<td>계좌이체안내</td>
					<td>
						<div class="col-lg-12">
							회원님의 계좌에서 바로 이체되는 서비스이며, 이체 수수료는 무료입니다.<br>
							23시 이후에는 은행별 이용 가능시간을 미리 확인하신 후 결제를 진행해 주세요.
						</div>
					</td>
				</tr>
			</c:if>
			<c:if test="true">
				<tr>
					<td>환불계좌</td>
					<td>
						<div class="col-lg-3">
							<select class="form-control">
								<option>은행선택</option>
								<option>국민은행</option>
								<option>기업은행</option>
								<option>4</option>
								<option>5</option>
							</select>
						</div>
						<div class="col-lg-9">
							<input type="text" class="form-control">
						</div>
					</td>
				</tr>
			</c:if>
			<c:if test="true">
				<tr>
					<td>소득공제대상</td>
					<td>
						<div class="col-lg-3">
							<div class="radio">
								<label> <input type="radio" name="optionsRadios2" value="option1" checked>
									신청함
								</label>
							</div>
						</div>
						<div class="col-lg-9">
							<div class="radio">
								<label> <input type="radio" name="optionsRadios2" value="option2" >
									신청안함
								</label>
							</div>
						</div>
						<div class="col-lg-3">
							<div class="radio">
								<label> <input type="radio" name="optionsRadios3" value="option1" checked>
									개인소득공제
								</label>
							</div>
						</div>
						<div class="col-lg-9">
							<div class="radio">
								<label> <input type="radio" name="optionsRadios3" value="option2" >
									사업자증빙용
								</label>
							</div>
						</div>
						<div class="row">
						<div class="col-lg-3">
							<select class="form-control">
								<option>휴대폰번호</option>
								<option>주민등록번호</option>
								<option>현금영수증번호</option>
							</select>
						</div>
						</div>
						<c:if test="true">
							<div class="row">
								<div class="col-lg-3">
									<select class="form-control">
										<option>010</option>
										<option>011</option>
										<option>3</option>
										<option>4</option>
										<option>5</option>
									</select>
								</div>
								<div class="col-lg-3">
									<input type="text" class="form-control">
								</div>
								<div class="col-lg-3">
									<input type="text" class="form-control">
								</div>
							</div>
						</c:if>
						<c:if test="true">
							<div class="row">
								<div class="col-lg-2">
									<input type="text" class="form-control">
								</div>
								<div class="col-lg-2">
									<input type="text" class="form-control">
								</div>
								<div class="col-lg-2">
									<input type="text" class="form-control">
								</div>
								<div class="col-lg-2">
									<input type="text" class="form-control">
								</div>
							</div>
						</c:if>
					</td>
				</tr>
			</c:if>
			<tr>
				<td>결제정보동의</td>
				<td>
					<div class="col-lg-3">
						<div class="checkbox">
							<label> <input type="checkbox" value=""> 정보제공동의
							</label>
						</div>
					</div> <a href="#">결제 대행사별 상세제공안내</a>
				</td>
			</tr>
		</table>
	</div>
</div>
<div class="row">
	<div class="col-lg-12 text-center">
		<a class="btn btn-default">결제하기</a>
		<a class="btn btn-default">이전페이지</a>
	</div>
</div>


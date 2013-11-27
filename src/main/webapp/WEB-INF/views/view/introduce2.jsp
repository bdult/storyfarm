<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<div id="content">

	<h2 class="divTit">
		<img src="${ contextPath }/assets/images/intro/title_intro2.gif" alt="유료서비스 안내">
	</h2>
	<!-- location -->
	<div id="divLocation">
		<ul class="location">
			<li class="first"><a href="#" class="home"><img src="${ contextPath }/assets/images/common/blt_home.gif" alt="home"></a></li>
			<li><a href="#">서비스 소개</a></li>
			<li class="current">유료서비스 안내</li>
		</ul>
	</div>
	<!-- //location -->

	<div class="topBanner">
		<img src="${ contextPath }/assets/images/intro/intro2_tImg.jpg" alt="오즈월드 유료서비스 소개">
	</div>

	<h3 class="divTit">
		<img src="${ contextPath }/assets/images/intro/intro2_tit1.jpg" alt="오즈월드 프리미엄 학습 프로그램">
	</h3>

	<div id="subDiv">
		<div class="titArea mgt20">
			<h4 class="divTit2 mgt0">프리미엄 요금제</h4>
			<p class="right">
				<a href="#"><img src="${ contextPath }/assets/images/common/btn_pay_off.gif" alt="요금제결제" class="rollimg"></a>
			</p>
		</div>
		<table class="data mgt20">
			<colgroup>
				<col width="*">
				<col width="160">
				<col width="160">
				<col width="160">
				<col width="160">
			</colgroup>
			<tbody>
				<tr>
					<th class="center"><strong class="fontRed">요금제 설명</strong></th>
					<td colspan="4">
						<ul class="ulLst03">
							<li>어떤 과목이던, 전집이던 전영역의 컨텐츠를 자유롭게 이용이 가능합니다</li>
							<li>오즈월드에서 진행되는 이벤트 및 행사 진행시 우선 혜택 지원합니다.</li>
						</ul>
					</td>
				</tr>
				<tr>
					<th class="center"><strong class="fontRed">컨텐츠 구성</strong></th>
					<td colspan="4">
						<ul class="ulLst03">
							<li>한글/영어/수학/과학/창의/동요/동화/생활의 모든 컨텐츠</li>
						</ul>
					</td>
				</tr>
				<tr>
					<th class="center"><strong class="fontRed">부가서비스</strong></th>
					<td colspan="4">
						<ul class="ulLst03">
							<li>자녀방 서비스 이용가능(2명)</li>
							<li>부모방 서비스 전체 이용가능</li>
							<li>프린트 학습 전체 컨텐츠 이용가능</li>
						</ul>
					</td>
				</tr>
				<tr>
					<th class="center" rowspan="2"><strong class="fontRed">가격</strong></th>
					<td class="center bg">1개월</td>
					<td class="center bg brdL">3개월</td>
					<td class="center bg brdL">6개월</td>
					<td class="center bg brdL">12개월</td>
				</tr>
				<tr>
					<td class="center">15000원</td>
					<td class="center brdL">42000원</td>
					<td class="center brdL">79000원</td>
					<td class="center brdL">126000원</td>
				</tr>
			</tbody>
		</table>

	</div>

	<h3 class="divTit mgt50">
		<img src="${ contextPath }/assets/images/intro/intro2_tit2.jpg" alt="오즈월드 맞춤별 학습 프로그램">
	</h3>

	<div id="subDiv">

		<div class="titArea mgt20">
			<h4 class="divTit2 mgt0">과목별 요금제</h4>
			<p class="right">
				<a href="#"><img src="${ contextPath }/assets/images/common/btn_pay_off.gif" alt="요금제결제" class="rollimg"></a>
			</p>
		</div>

		<table class="data mgt20">
			<colgroup>
				<col width="*">
				<col width="130">
				<col width="130">
				<col width="130">
				<col width="130">
				<col width="130">
			</colgroup>
			<tbody>
				<tr>
					<th class="center"><strong class="fontRed">요금제 설명</strong></th>
					<td colspan="5">
						<ul class="ulLst03">
							<li>과목별 요금제를 선택하실 수 있습니다.</li>
							<li>프리미엄 이용권이 부담스러우시면 아래요금제로 선택해 보세요.</li>
						</ul>
					</td>
				</tr>
				<tr>
					<th class="center" rowspan="10"><strong class="fontRed">컨텐츠 구성 및 가격</strong></th>
					<td colspan="5">
						<ul class="ulLst03 floatL">
							<li>한글의 모든 컨텐츠</li>
							<li>영어의 모든 컨텐츠</li>
							<li>수학의 모든 컨텐츠</li>
						</ul>
						<ul class="ulLst03 floatL mgl50">
							<li>과학의 모든 컨텐츠</li>
							<li>창의의 모든 컨텐츠</li>
							<li>동요의 모든 컨텐츠</li>
						</ul>
						<ul class="ulLst03 floatL mgl50">
							<li>동화의 모든 컨텐츠</li>
							<li>생활의 모든 컨텐츠</li>
						</ul>
					</td>
				</tr>
				<tr>
					<td class="center bg">구분</td>
					<td class="center bg brdL">1개월</td>
					<td class="center bg brdL">3개월</td>
					<td class="center bg brdL">6개월</td>
					<td class="center bg brdL">12개월</td>
				</tr>
				<tr>
					<td class="center">한글</td>
					<td class="center brdL">8,000원</td>
					<td class="center brdL">-</td>
					<td class="center brdL">38,000원</td>
					<td class="center brdL">49,000원</td>
				</tr>
				<tr>
					<td class="center">영어</td>
					<td class="center brdL">6,000원</td>
					<td class="center brdL">12,000원</td>
					<td class="center brdL">-</td>
					<td class="center brdL">-</td>
				</tr>
				<tr>
					<td class="center">수학</td>
					<td class="center brdL">9,000원</td>
					<td class="center brdL">-</td>
					<td class="center brdL">39,000원</td>
					<td class="center brdL">-</td>
				</tr>
				<tr>
					<td class="center">과학</td>
					<td class="center brdL">12,000원</td>
					<td class="center brdL">-</td>
					<td class="center brdL">42,000원</td>
					<td class="center brdL">-</td>
				</tr>
				<tr>
					<td class="center">창의</td>
					<td class="center brdL">8,000원</td>
					<td class="center brdL">-</td>
					<td class="center brdL">38,000원</td>
					<td class="center brdL">49,000원</td>
				</tr>
				<tr>
					<td class="center">동요</td>
					<td class="center brdL">6,000원</td>
					<td class="center brdL">12,000원</td>
					<td class="center brdL">-</td>
					<td class="center brdL">-</td>
				</tr>
				<tr>
					<td class="center">동화</td>
					<td class="center brdL">9,000원</td>
					<td class="center brdL">-</td>
					<td class="center brdL">39,000원</td>
					<td class="center brdL">-</td>
				</tr>
				<tr>
					<td class="center">생활</td>
					<td class="center brdL">12,000원</td>
					<td class="center brdL">-</td>
					<td class="center brdL">42,000원</td>
					<td class="center brdL">-</td>
				</tr>
				<tr>
					<th class="center"><strong class="fontRed">컨텐츠 구성 및 가격</strong></th>
					<td colspan="5">
						<ul class="ulLst03">
							<li>자녀방 서비스 이용가능(2명)</li>
							<li>부모방 서비스 부분이용 가능</li>
							<li>프린트학습 부분 컨텐츠 이용가능</li>
						</ul>
					</td>
				</tr>
			</tbody>
		</table>

	</div>

	<h3 class="divTit mgt50">
		<img src="${ contextPath }/assets/images/intro/intro2_tit3.jpg" alt="오즈월드 맞춤별 학습 프로그램">
	</h3>

	<div id="subDiv">

		<div class="titArea mgt20">
			<h4 class="divTit2 mgt0">전집별 요금제</h4>
			<p class="right">
				<a href="#"><img src="${ contextPath }/assets/images/common/btn_pay_off.gif" alt="요금제결제" class="rollimg"></a>
			</p>
		</div>

		<table class="data mgt20">
			<colgroup>
				<col width="*">
				<col width="130">
				<col width="130">
				<col width="130">
				<col width="130">
				<col width="130">
			</colgroup>
			<tbody>
				<tr>
					<th class="center"><strong class="fontRed">요금제 설명</strong></th>
					<td colspan="5">
						<ul class="ulLst03">
							<li>전집별 요금제를 선택하실 수 있습니다.</li>
							<li>프리미엄 이용권이 부담스러우시면 아래요금제로 선택해 보세요.</li>
						</ul>
					</td>
				</tr>
				<tr>
					<th class="center" rowspan="10"><strong class="fontRed">컨텐츠 구성 및 가격</strong></th>
					<td colspan="5">
						<ul class="ulLst03 floatL">
							<li>한글의 모든 컨텐츠</li>
							<li>영어의 모든 컨텐츠</li>
							<li>수학의 모든 컨텐츠</li>
						</ul>
						<ul class="ulLst03 floatL mgl50">
							<li>과학의 모든 컨텐츠</li>
							<li>창의의 모든 컨텐츠</li>
							<li>동요의 모든 컨텐츠</li>
						</ul>
						<ul class="ulLst03 floatL mgl50">
							<li>동화의 모든 컨텐츠</li>
							<li>생활의 모든 컨텐츠</li>
						</ul>
					</td>
				</tr>
				<tr>
					<td class="center bg">구분</td>
					<td class="center bg brdL">1개월</td>
					<td class="center bg brdL">3개월</td>
					<td class="center bg brdL">6개월</td>
					<td class="center bg brdL">12개월</td>
				</tr>
				<tr>
					<td class="center">한글</td>
					<td class="center brdL">8,000원</td>
					<td class="center brdL">-</td>
					<td class="center brdL">38,000원</td>
					<td class="center brdL">49,000원</td>
				</tr>
				<tr>
					<td class="center">영어</td>
					<td class="center brdL">6,000원</td>
					<td class="center brdL">12,000원</td>
					<td class="center brdL">-</td>
					<td class="center brdL">-</td>
				</tr>
				<tr>
					<td class="center">수학</td>
					<td class="center brdL">9,000원</td>
					<td class="center brdL">-</td>
					<td class="center brdL">39,000원</td>
					<td class="center brdL">-</td>
				</tr>
				<tr>
					<td class="center">과학</td>
					<td class="center brdL">12,000원</td>
					<td class="center brdL">-</td>
					<td class="center brdL">42,000원</td>
					<td class="center brdL">-</td>
				</tr>
				<tr>
					<td class="center">창의</td>
					<td class="center brdL">8,000원</td>
					<td class="center brdL">-</td>
					<td class="center brdL">38,000원</td>
					<td class="center brdL">49,000원</td>
				</tr>
				<tr>
					<td class="center">동요</td>
					<td class="center brdL">6,000원</td>
					<td class="center brdL">12,000원</td>
					<td class="center brdL">-</td>
					<td class="center brdL">-</td>
				</tr>
				<tr>
					<td class="center">동화</td>
					<td class="center brdL">9,000원</td>
					<td class="center brdL">-</td>
					<td class="center brdL">39,000원</td>
					<td class="center brdL">-</td>
				</tr>
				<tr>
					<td class="center">생활</td>
					<td class="center brdL">12,000원</td>
					<td class="center brdL">-</td>
					<td class="center brdL">42,000원</td>
					<td class="center brdL">-</td>
				</tr>
				<tr>
					<th class="center"><strong class="fontRed">컨텐츠 구성 및 가격</strong></th>
					<td colspan="5">
						<ul class="ulLst03">
							<li>자녀방 서비스 이용가능(2명)</li>
							<li>부모방 서비스 부분이용 가능</li>
							<li>프린트학습 부분 컨텐츠 이용가능</li>
						</ul>
					</td>
				</tr>
			</tbody>
		</table>

	</div>

</div>

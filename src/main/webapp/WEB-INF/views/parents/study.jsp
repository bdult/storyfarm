<%@ page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<h4>학습통계</h4>

<div class="row">
	<div class="col-lg-12">
		<div class="well">이용통계 요약 및 최근 이용 컨텐츠 출력. 자녀 선택하여 데이터 전환 가능</div>
	</div>
	<div class="col-lg-12">
		<ul>
			<li><a href="${ contextPath }/parents/items.do">과목별학습현황</a></li>
			<li><a href="${ contextPath }/parents/series.do">전집별학습현황</a></li>
			<li><a href="${ contextPath }/parents/period.do">기간별학습현황</a></li>
		</ul>
	</div>
</div>


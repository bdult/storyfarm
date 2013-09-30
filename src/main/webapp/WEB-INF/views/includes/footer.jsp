<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<footer>
	<div class="container">
		<hr />
		<div class="row">
			<div class="col-md-1">
				<a href="#" class="btn btn-info btn-lg">로고</a>
			</div>
			<div class="col-md-11">
				<div class="row">
					<div class="col-md-12">
						<a href="${ contextPath }/cscenter/notice.do" class="btn btn-default"><spring:message code="cscenter"/></a>
						<a href="${ contextPath }/about.do" class="btn btn-default"><spring:message code="companyIntroduce"/></a>
						<a href="${ contextPath }/serviceRules.do" class="btn btn-default"><spring:message code="serviceRules"/></a>
						<a href="${ contextPath }/privacyRules.do" class="btn btn-default"><spring:message code="privacyRules"/></a>
						<a href="${ contextPath }/sitemap.do" class="btn btn-default"><spring:message code="sitemap"/></a>
					</div>
				</div>
				
				<br />
				
				<div class="row">
					<div class="col-md-12">
						<p>
						㈜빅스타 글로벌 대표이사 한영훈 서울시 금천구 가산동 371-50 에이스하이엔드 1407호 대표전화 02-843-8403<br />
						Copyright © 2013 BIGSTAR GLOBAL CO.,LTD All rights reserved.
						</p>
					</div>
				</div>
			</div>
		</div>
	</div>
</footer>
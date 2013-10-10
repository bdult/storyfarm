<%@ page contentType="text/html" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>

<div class="alert alert-success">이벤트</div>

<div class="row">
	<c:forEach items="${ list }" var="obj">
		<div class="col-md-6">
			<div class="row">
				<div class="col-md-8">
					<span class="label label-info">오즈월드 오픈 기념 이벤트</span>
				</div>
				<div class="col-md-2 col-md-offset-2 text-right">
					<c:choose>
						<c:when test="${ obj.STATUS == 0 }">
							<span class="label label-danger">진행중</span>
						</c:when>
						<c:when test="${ obj.STATUS == 1 }">
							<span class="label label-default">종료</span>
						</c:when>
						<c:otherwise>
							<a>오류</a>
						</c:otherwise>
					</c:choose>
				</div>
			</div>
			<div class="row">
				<div class="col-md-12">
						<a href="${ contextPath }/cscenter/eventView.do?contentsId=${ obj.CONTENTS_ID }" class="thumbnail">
							<img src="${ obj.IMG_PATH }" style="width: 100%; height: 200px;" alt="${ obj.TITLE }">
							${ obj.TITLE }
						</a>
				</div>
			</div>
		<br><br><br>
		</div>
	</c:forEach>
</div>
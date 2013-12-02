<%@ page contentType="text/html" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>

<h2 class="divTit"><img src="${ contextPath }/assets/images/customer/title_event.gif" alt="이벤트"></h2>
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

<div class="eventBrn"><img src="${ contextPath }/assets/images/customer/event_banner.jpg" alt=""></div>
<div class="eventWr mgt10">
	<ul>
		<c:forEach items="${ list }" var="obj">
    	<li>
        	<div class="eveHd">
            	<p class="tit"><img src="${ contextPath }/assets/images/customer/event_tx01.gif" alt="오즈월드 오픈기념 이벤트"></p>
                <p class="blt">
					<c:choose>
						<c:when test="${ obj.STATUS eq 0 }">
							<img src="${ contextPath }/assets/images/customer/icon_ing.gif" alt="진행중">
						</c:when>
						<c:otherwise>
							<img src="${ contextPath }/assets/images/customer/icon_end.gif" alt="종료">
						</c:otherwise>
					</c:choose>
                </p>
            </div>
            <div class="thum"><a href="${ contextPath }/cscenter/eventView.do?contentsId=${ obj.CONTENTS_ID }"><img src="${ contextPath }/assets/images/customer/thum.jpg" width="307" height="120" alt=""></a></div>
            <div class="eventTx"><a href="${ contextPath }/cscenter/eventView.do?contentsId=${ obj.CONTENTS_ID }">${ obj.TITLE }</a></div>
        </li>
        </c:forEach>
    </ul>
</div>


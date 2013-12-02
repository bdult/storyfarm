<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>

<div id="content">

	<h2 class="divTit">
		<img src="${ contextPath }/assets/images/children/title_player.gif" alt="플레이어">
	</h2>
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

	<div class="topBanner">
		<img src="${ contextPath }/assets/images/children/children_Timg.jpg" alt="자녀방">
	</div>

	<div class="childrenWr">
		<h3>
			<span>미운오리새끼</span>
		</h3>

		<div class="childrenConVew">
			<div class="conMov">
				<img src="${ contextPath }/assets/images/common/mov.jpg" alt="" style="width: 640px; height: 360px;">
			</div>

			<div class="btnSc aright">
				<a href="#"><img src="${ contextPath }/assets/images/common/btn_list2_off.png" alt="목록" class="rollimg"></a> 
				<a href="#"><img src="${ contextPath }/assets/images/common/btn_repeat_off.png" alt="반복보기" class="rollimg"></a> 
				<a href="#"><img src="${ contextPath }/assets/images/common/btn_close_off.png" alt="닫기" class="rollimg"></a>
			</div>

		</div>

	</div>
	<!-- //childrenWr -->

</div>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>


<div id="content">

	<h2 class="divTit">
		<img src="${ contextPath }/assets/images/children/title_children.gif" alt="자녀방">
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

		<div class="childrenTx01">
			사랑하는 우리 <strong>${ childRoomInfo.defaultChild.NAME }</strong>의 방입니다.
			<p class="right">
				<a href="${ contextPath }/parents/children.do"><img src="${ contextPath }/assets/images/common/btn_studyEdit_off.gif" alt="학습자변경" class="rollimg"></a>
			</p>
		</div>

		<div class="box05 childrenLst mgt30">

			<h3 class="divTit2">최근 이용 컨텐츠</h3>
			<ul>
				<c:forEach items="${ childRoomInfo.history }" var="obj">
					<li>
						<p class="thum">
							<a href="${ contextPath }/children/play.do?contents_id=${ obj.CONTENTS_ID }"><img src="http://115.71.237.215/${ obj.IMG_PATH }" alt=""></a>
						</p>
						<p class="txt">
							<label><input name="contentsId" type="checkbox" value="${ obj.CONTENTS_ID }"><span class="rnts-name">${ obj.CONTENTS_NM }</span></label>
						</p>
					</li>
				</c:forEach>
			</ul>


			<span class="bg1"></span><span class="bg2"></span><span class="bg3"></span><span class="bg4"></span>
		</div>

		<p class="divLine mgt20"></p>

		<div class="childrenRow mgt20">

			<div class="box05 childrenLst2">
				<h3 class="divTit2">오즈월드 추천 동영상</h3>
				<ul>
					<c:forEach items="${ childRoomInfo.ozworldRecommend }" var="obj">
					<li>
						<p class="thum">
							<a href="${ contextPath }/children/play.do?contents_id=${ obj.CONTENTS_ID }"><img src="http://115.71.237.215/${ obj.IMG_PATH }" alt=""></a>
						</p>
						<p class="txt">
							<label><input name="contentsId" type="checkbox" value="${ obj.CONTENTS_ID }"><span class="rnts-name">${ obj.CONTENTS_NM }</span></label>
						</p>
					</li>
				</c:forEach>
				</ul>

				<span class="bg1"></span><span class="bg2"></span><span class="bg3"></span><span class="bg4"></span>
			</div>

			<div class="box05 childrenLst3">
				<h3 class="divTit2">또래가 가장 많이 보는 동영상</h3>
				<ul>
					<c:forEach items="${ childRoomInfo.ageBestMovie }" var="obj">
					<li>
						<p class="thum">
							<a href="${ contextPath }/children/play.do?contents_id=${ obj.CONTENTS_ID }"><img src="http://115.71.237.215/${ obj.IMG_PATH }" alt=""></a>
						</p>
						<p class="txt">
							<label><input name="contentsId" type="checkbox" value="${ obj.CONTENTS_ID }"><span class="rnts-name">${ obj.CONTENTS_NM }</span></label>
						</p>
					</li>
				</c:forEach>
				</ul>

				<span class="bg1"></span><span class="bg2"></span><span class="bg3"></span><span class="bg4"></span>
			</div>

		</div>

		<div class="btnSc aright">
			<a href="#" id="playBtn"><img src="${ contextPath }/assets/images/common/btn_selVew_off.gif" alt="선택보기" class="rollimg"></a>
		</div>

	</div>
	<!-- //childrenWr -->

</div>

<script>
//init
$("span.rnts-name").each(function(){
	var $this = $(this);
  var han_count = 0;
  han_count = (escape($this.text())+"%u").match(/%u/g).length - 1;
	var hangulLength = $this.text().length + han_count;
	if( hangulLength > 13) {
		$this.text( $this.text().substring(0,10) + "..." ); 
	}
});

$(function(){
	//event
	$("#playBtn").click(function(){
	});
});
</script>

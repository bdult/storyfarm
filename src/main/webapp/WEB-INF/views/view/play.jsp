<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>

<div id="content">
        
	<h2 class="divTit"><img src="${ contextPath }/assets/images/content/title_hangul.gif" alt="오즈월드 한글"></h2>
    <!-- location -->
	<div id="divLocation">
	<ul class="location">
 			<li class="first"><a href="#" class="home"><img src="${ contextPath }/assets/images/common/blt_home.gif" alt="home"></a></li>
           <li><a href="#">한글</a></li>
 			<li class="current">${ contents.CONTENTS_NM }</li>
	</ul>
	</div>
	<!-- //location -->
    
    <div class="topBanner"><img src="${ contextPath }/assets/images/content/hangul_Timg.jpg" alt="오즈월드 한글"></div>
    
    <!-- conVew -->
  	<div class="conVew">
    	<h3><span>${ contents.CONTENTS_NM }</span></h3>
        <div class="conMov">
        	<video id="player" width="720px" height="458px" controls poster="http://115.71.237.215/${contents.IMG_PATH}">
			<source src="${contextPath}/streaming.do?contents_id=${contents.CONTENTS_ID}">
				video 요소를 지원하지 않는 브라우저입니다.
			</video>
           </div>
           <div class="movState">
           	<div class="box04 leftWrap">
               	<h4>동화설명</h4>
                   <div class="txt">
                   	${ fn:substring(contents.CONTENTS_DESC, 0, 100) }...
                </div>
                <p class="btMore"><a href="#"><img src="${ contextPath }/assets/images/common/btn_more_off.png" alt="더보기" class="rollimg"></a></p>
                <span class="bg1"></span><span class="bg2"></span><span class="bg3"></span><span class="bg4"></span>
            </div>
            <div class="box04 rightWrap">
            	<h4>학습지도</h4>
                <div class="txt">
					${ fn:substring(contents.LEARNING_DESC, 0, 100) }...
                </div>
                <p class="btMore"><a href="#"><img src="${ contextPath }/assets/images/common/btn_more_off.png" alt="더보기" class="rollimg"></a></p>
                <span class="bg1"></span><span class="bg2"></span><span class="bg3"></span><span class="bg4"></span>
            </div>
        </div>
        
        <div class="btnSc">
        	<p class="left">
            	<a href="#"><img src="${ contextPath }/assets/images/common/btn_repeat2_off.png" alt="다시보기" class="rollimg"></a>
            	<a href="#"><img src="${ contextPath }/assets/images/common/btn_viewBig_off.png" alt="크게보기" class="rollimg"></a>
            </p>
        	<a href="#"><img src="${ contextPath }/assets/images/common/btn_put_off.png" alt="내방에 담기" class="rollimg"></a>
            <a href="#"><img src="${ contextPath }/assets/images/common/btn_print_off.png" alt="프린트학습" class="rollimg"></a>
            <p class="right">
            	<a href="#"><img src="${ contextPath }/assets/images/common/btn_list_off.png" alt="목록" class="rollimg"></a>
            </p>
        </div>
        
	</div>
    <!-- conVew -->
    
</div>
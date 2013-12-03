<%@ page contentType="text/html" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<div id="content">
	<h2 class="divTit">
		<img src="${ contextPath }/assets/images/content/title_print.gif" alt="프린트학습">
	</h2>
	<!-- location -->
	<div id="divLocation">
		<ul class="location">
			<li class="first"><a href="${ contextPath }/" class="home"><img src="${ contextPath }/assets/images/common/blt_home.gif" alt="home"></a></li>
			<li class="current">프린트학습</li>
		</ul>
	</div>
	<!-- //location -->
	   
	<div class="topBanner"><img src="${ contextPath }/assets/images/content/print_Timg.jpg" alt="프린트 학습 메인 이미지"></div>
	
	<!-- conLst -->
	<div class="conLst print">
		<ul>
			<c:forEach begin="1" end="15" varStatus="util">
	    	<li>
        	<p class="photo">
        		<a href="http://downloads.bbc.co.uk/cbbc/all/packs/jbo-recipe-cheesy-corn-muffins/jbo-recipe-cheesy-corn-muffins.pdf" target="_blink">
        			<img src="http://wwwimg.bbc.co.uk/cbbc/all/packs/jbo-recipe-cheesy-corn-muffins/jbo-recipe-cheesy-corn-muffins_144x81.jpg" width="155" height="115" alt="">
        		</a>
        	</p>
          <p class="divChk"><label><input name="" type="checkbox" value=""> 프린트 ${ util.count }</label></p>
          <span class="bg1"></span><span class="bg2"></span><span class="bg3"></span><span class="bg4"></span>
        </li>
			</c:forEach>
		</ul>
			    
	  <!--paginate -->
	  <!-- 
	  <div class="paginate_complex">
		  <a class="direction prev" href="#"><img src="${ contextPath }/assets/images/common/btn_pagingPre_off.gif" alt="이전 페이지 이동" class="rollimg"></a>
		  <strong class="print">1</strong>
		  <a href="#">2</a>
		  <a href="#">3</a>
		  <a href="#">4</a>
		  <a href="#">5</a>
		  <a href="#">6</a>
		  <a href="#">7</a>
		  <a href="#">8</a>
		  <a href="#">889</a>
		  <a class="direction next" href="#"><img src="${ contextPath }/assets/images/common/btn_pagingNext_off.gif" alt="다음 페이지 이동" class="rollimg"></a>
	  </div>
	   -->
		<!--//paginate -->
	    
	</div>
	<!-- conLst -->
</div>
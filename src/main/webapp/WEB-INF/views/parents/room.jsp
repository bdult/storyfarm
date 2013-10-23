<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
    
<h2 class="divTit"><img src="${ contextPath }/assets/images/parent/title_parent.gif" alt="부모방"></h2>
<!-- location -->
<div id="divLocation">
    <ul class="location">
        <li class="first"><a href="${ contextPath }" class="home"><img src="${ contextPath }/assets/images/common/blt_home.gif" alt="home"></a></li>
        <!--<li><a href="#">부모방</a></li> -->
        <li class="current">부모방</li>
    </ul>
</div>
<!-- //location -->

<div class="parentWr">

	<div class="divRow01">
   	  	<div class="titArea">
       		<h3 class="divTit2">현재 이용중인 서비스</h3>
          	<p class="right"><a href="#"><img src="${ contextPath }/assets/images/common/btn_detailVew_off.gif" alt="자세히보기" class="rollimg"></a></p>
        </div>
        <table class="data">
        <colgroup>
        <col width="120">
        <col width="*">
        </colgroup>
        <tbody>
        <tr>
        	<th scope="row">신청 요금제</th>
            <td class="fontBlue">프리미엄 요금제</td>
        </tr>
        <tr>
        	<th scope="row">서비스 이용기간</th>
            <td class="fontBlue">2013년 9월 1일 -10월 1일</td>
        </tr>
        </tbody>
        </table>
    </div>
    
    <div class="divRow02">
   	  	<div class="titArea">
       		<h3 class="divTit2">학습자 변경</h3>
        </div>
        <div class="box05">
        	<div class="aln_center">
            	<label class="radio"><input name="" type="radio" value=""> 홍길동</label>
                <label><input name="" type="radio" value=""> 홍길순</label>
            </div>
            <div class="btnSc mgt10">
            	<a href="#"><img src="${ contextPath }/assets/images/parent/btn_studyEdit_off.gif" alt="학습자 변경" class="rollimg"></a>
            </div>
        	<span class="bg1"></span><span class="bg2"></span><span class="bg3"></span><span class="bg4"></span>
        </div>
    </div>
    
    <div class="divRow03">
   	  	<div class="titArea">
       		<h3 class="divTit2">오즈월드 공지사항</h3>
          	<p class="right"><a href="#"><img src="${ contextPath }/assets/images/common/btn_detailVew_off.gif" alt="자세히보기" class="rollimg"></a></p>
        </div>
        <ul>
        	<li><a href="#">결제가 안되는 경우에는</a></li>
        	<li><a href="#">카드 무이자 안내</a></li>
        	<li><a href="#">9월 이벤트 당첨자 발표</a></li>
        	<li><a href="#">9월 이벤트 당첨자 발표
        	</a></li><li><a href="#">9월 이벤트 당첨자 발표</a></li>
        	<li><a href="#">10월 컨텐츠 업데이트 예정</a></li>
        </ul>
    </div>
    
    <div class="divRow04">
   	  	<div class="titArea">
       		<h3 class="divTit2">최근 오즈월드 이용시간</h3>
          	<p class="right"><a href="#"><img src="${ contextPath }/assets/images/common/btn_detailVew_off.gif" alt="자세히보기" class="rollimg"></a></p>
        </div>
        <table class="data">
        <colgroup>
        <col width="120">
        <col width="*">
        </colgroup>
        <thead>
        <tr>
        	<th colspan="2" scope="col">홍길동</th>
        </tr>
        </thead>
        <tbody>
        <tr>
        	<th scope="row">2013-09-28</th>
            <td class="fontBlue">0시간 43분</td>
        </tr>
        <tr>
        	<th scope="row">2013-09-28</th>
            <td class="fontBlue">0시간 43분</td>
        </tr>
        </tbody>
        <thead>
        <tr>
        	<th colspan="2" scope="col">홍길동</th>
        </tr>
        </thead>
        <tbody>
        <tr>
        	<th scope="row">2013-09-28</th>
            <td class="fontBlue">0시간 43분</td>
        </tr>
        <tr>
        	<th scope="row">2013-09-28</th>
            <td class="fontBlue">0시간 43분</td>
        </tr>
        </tbody>
        </table>
    </div>
    
</div>

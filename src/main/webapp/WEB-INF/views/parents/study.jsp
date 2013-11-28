<%@ page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

            <!-- divContent -->
            <div id="divContent">
                <h2 class="divTit"><img src="../assets/images/parent/title_state.gif" alt="학습통계"></h2>
              	<!-- location -->
                <div id="divLocation">
                    <ul class="location">
                        <li class="first"><a href="#" class="home"><img src="../assets/images/common/blt_home.gif" alt="home"></a></li>
                        <li><a href="#">부모방</a></li>
                        <li class="current">학습통계</li>
                    </ul>
                </div>
              	<!-- //location -->
                
                <div class="box05">
                	<div class="parentState">
                    	<h3 class="divTit2">학습자 선택</h3>
                        <ul class="parentStateSel">
                        	<li><label><input name="" type="radio" value=""> 홍길동</label></li>
                        	<li><label><input name="" type="radio" value=""> 홍길순</label></li>
                        </ul>
                    </div>
                    <span class="bg1"></span><span class="bg2"></span><span class="bg3"></span><span class="bg4"></span>
                </div>
                
                <p class="divLine mgt20"></p>
                
                <div class="box05 mgt20">
               	  	<div class="parentStateLst">
                    	<h3 class="divTit2">최근 이용 컨텐츠</h3>
                      	<ul>
                       	  	<li>
                           	  	<p class="thum"><a href="#"><img src="../assets/images/content/thum.jpg" alt=""></a></p>
                                <p class="txt"><a href="#">Contents title</a></p>
                          	</li>
                       	  	<li>
                           	  	<p class="thum"><a href="#"><img src="../assets/images/content/thum.jpg" alt=""></a></p>
                                <p class="txt"><a href="#">Contents title</a></p>
                          	</li>
                       	  	<li>
                           	  	<p class="thum"><a href="#"><img src="../assets/images/content/thum.jpg" alt=""></a></p>
                                <p class="txt"><a href="#">Contents title</a></p>
                          	</li>
                       	  	<li>
                           	  	<p class="thum"><a href="#"><img src="../assets/images/content/thum.jpg" alt=""></a></p>
                                <p class="txt"><a href="#">Contents title</a></p>
                          	</li>
                       	  	<li>
                           	  	<p class="thum"><a href="#"><img src="../assets/images/content/thum.jpg" alt=""></a></p>
                                <p class="txt"><a href="#">Contents title</a></p>
                          	</li>
                      	</ul>
                    </div>
                	<span class="bg1"></span><span class="bg2"></span><span class="bg3"></span><span class="bg4"></span>
                </div>
                
                <p class="divLine mgt20"></p>
                
              <div class="box05 mgt20">
                	<div class="parentState">
                    	<h3 class="divTit2">학습현황</h3>
                        <ul class="parentStateSel">
                        	<li><label><input name="" type="radio" value=""> 과목별</label></li>
                        	<li><label><input name="" type="radio" value=""> 전집별</label></li>
                        	<li><label><input name="" type="radio" value=""> 기간별</label></li>
                        </ul>
                    </div>
                    <div class="stateGhp">
                    	<ul>
                        	<li class="fir">
                            	<span class="titTx">생활</span>
                                <p class="bar" style="width:40%;"><span></span></p>
                            </li>
                        	<li>
                            	<span class="titTx">동화</span>
                                <p class="bar" style="width:80%;"><span></span></p>
                            </li>
                        	<li>
                            	<span class="titTx">동요</span>
                                <p class="bar" style="width:100%;"><span></span></p>
                            </li>
                        	<li>
                            	<span class="titTx">창의</span>
                                <p class="bar" style="width:20%;"><span></span></p>
                            </li>
                        	<li>
                            	<span class="titTx">과학</span>
                                <p class="bar" style="width:10%;"><span></span></p>
                            </li>
                        	<li>
                            	<span class="titTx">영어</span>
                                <p class="bar" style="width:50%;"><span></span></p>
                            </li>
                        	<li>
                            	<span class="titTx">수학</span>
                                <p class="bar" style="width:30%;"><span></span></p>
                            </li>
                        	<li class="last">
                            	<span class="titTx">국어</span>
                                <p class="bar" style="width:20%;"><span></span></p>
                            </li>
                        </ul>
                  </div>
                <span class="bg1"></span><span class="bg2"></span><span class="bg3"></span><span class="bg4"></span>
                </div>
                
            </div>
            <!-- //divContent -->

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


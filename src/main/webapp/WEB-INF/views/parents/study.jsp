<%@ page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

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
                        	<c:forEach var="childrenInfo" items="${children}" varStatus="idx">
                        		<c:choose>
                        			<c:when test="${children_idx eq childrenInfo.IDX }">
			                        	<li><label><input class="child-radio-btn" name="child" type="radio" value="${childrenInfo.IDX}" checked="checked"> ${childrenInfo.CHILD_NM}</label></li>
                        			</c:when>
	                        		<c:otherwise>
			                        	<li><label><input class="child-radio-btn" name="child" type="radio" value="${childrenInfo.IDX}"> ${childrenInfo.CHILD_NM}</label></li>
	                        		</c:otherwise>
                        		</c:choose>
                        	</c:forEach>
                        </ul>
                    </div>
                    <span class="bg1"></span><span class="bg2"></span><span class="bg3"></span><span class="bg4"></span>
                </div>
                
                <p class="divLine mgt20"></p>
                
                <div class="box05 mgt20">
               	  	<div class="parentStateLst">
                    	<h3 class="divTit2">최근 이용 컨텐츠</h3>
                      	<ul id="view-history">
                      		<c:forEach var="contentsInfo" items="${history }">
	                       	  	<li>
	                           	  	<p class="thum"><a href="${contextPath }/play.do?contents_id=${contentsInfo.CONTENTS_ID}"><img src="${contentsInfo.PREFIX_URL }${contentsInfo.IMG_PATH}" alt=""></a></p>
	                                <p class="txt"><a href="${contextPath }/play.do?contents_id=${contentsInfo.CONTENTS_ID}">${contentsInfo.CONTENTS_NM}</a></p>
	                          	</li>
                      		</c:forEach>
                      	</ul>
                    </div>
                	<span class="bg1"></span><span class="bg2"></span><span class="bg3"></span><span class="bg4"></span>
                </div>
                
                <p class="divLine mgt20"></p>
                
               <!-- 커리큘럼이 없는 관계로 임시 data로 구성 -->
              <div class="box05 mgt20">
                	<div class="parentState">
                    	<h3 class="divTit2">학습현황</h3>
                        <ul class="parentStateSel">
                        	<li><label><input class="state-li" name="status_type" type="radio" value="category" checked="checked"> 과목별</label></li>
                        	<li><label><input class="state-li" name="status_type" type="radio" value="series"> 전집별</label></li>
                        	<li><label><input class="state-li" name="status_type" type="radio" value="reg-date"> 기간별</label></li>
                        </ul>
                    </div>
                    <div class="stateGhp" id="category-state">
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
                  <div class="stateGhp" id="series-state" hidden="true">
                    	<ul>
                        	<li class="fir">
                            	<span class="titTx">붐붐</span>
                                <p class="bar" style="width:40%;"><span></span></p>
                            </li>
                        	<li>
                            	<span class="titTx">픽쳐북</span>
                                <p class="bar" style="width:100%;"><span></span></p>
                            </li>
                        	<li>
                            	<span class="titTx">전래동화</span>
                                <p class="bar" style="width:10%;"><span></span></p>
                            </li>
                        	<li>
                            	<span class="titTx">전래동요</span>
                                <p class="bar" style="width:50%;"><span></span></p>
                            </li>
                        	<li>
                            	<span class="titTx">이야기</span>
                                <p class="bar" style="width:40%;"><span></span></p>
                            </li>
                        	<li>
                            	<span class="titTx">알파벳</span>
                                <p class="bar" style="width:20%;"><span></span></p>
                            </li>
                        	<li>
                            	<span class="titTx">수학나라</span>
                                <p class="bar" style="width:30%;"><span></span></p>
                            </li>
                        	<li class="last">
                            	<span class="titTx">과학나라</span>
                                <p class="bar" style="width:80%;"><span></span></p>
                            </li>
                        </ul>
                  </div>
                  <div class="stateGhp" id="regdt-state" hidden="true">
                    	<ul>
                        	<li class="fir">
                            	<span class="titTx">13.12.10</span>
                                <p class="bar" style="width:25%;"><span></span></p>
                            </li>
                        	<li>
                            	<span class="titTx">13.12.09</span>
                                <p class="bar" style="width:60%;"><span></span></p>
                            </li>
                        	<li>
                            	<span class="titTx">13.12.08</span>
                                <p class="bar" style="width:50%;"><span></span></p>
                            </li>
                        	<li>
                            	<span class="titTx">13.12.07</span>
                                <p class="bar" style="width:80%;"><span></span></p>
                            </li>
                        	<li>
                            	<span class="titTx">13.12.06</span>
                                <p class="bar" style="width:10%;"><span></span></p>
                            </li>
                        	<li>
                            	<span class="titTx">13.12.05</span>
                                <p class="bar" style="width:100%;"><span></span></p>
                            </li>
                        	<li>
                            	<span class="titTx">13.12.04</span>
                                <p class="bar" style="width:30%;"><span></span></p>
                            </li>
                        	<li class="last">
                            	<span class="titTx">13.12.03</span>
                                <p class="bar" style="width:20%;"><span></span></p>
                            </li>
                        </ul>
                  </div>
                <span class="bg1"></span><span class="bg2"></span><span class="bg3"></span><span class="bg4"></span>
                </div>
                
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

<script>
	$(function(){
		
		$('body').on("click", ".state-li", function(e){
			var eventValue = e.currentTarget.getAttribute("value");
			if(eventValue == 'category'){
				$("#category-state").show();
				$("#series-state").hide();
				$("#regdt-state").hide();
				
			}else if(eventValue == 'series'){
				$("#category-state").hide();
				$("#series-state").show();
				$("#regdt-state").hide();
				
			}else{
				$("#category-state").hide();
				$("#series-state").hide();
				$("#regdt-state").show();
			}
		});
		
		$('body').on("click", ".child-radio-btn", function(e){
			location.href = "${contextPath}/parents/study.do?children_idx="+e.currentTarget.getAttribute("value");	
		});
	});

</script>


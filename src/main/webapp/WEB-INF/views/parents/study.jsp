<%@ page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

                <h2 class="divTit"><img src="../assets/images/parent/title_state.gif" alt="학습통계"></h2>
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
                

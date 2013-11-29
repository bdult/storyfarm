<%@ page contentType="text/html" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

                <h2 class="divTit"><img src="../assets/images/parent/title_control.gif" alt="학습자관리"></h2>
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
                
                <div class="mypageTx01">
                	현재 등록된 학습자 입니다.
                    <p class="right"><a href="#"><img src="../assets/images/common/btn_nReg_off.gif" alt="신규등록" class="rollimg"></a></p>
       	  	  	</div>
                
                <div class="box05 mgt20">
               	  	<div class="parentControl">
                    	<h3 class="divTit2">자녀 A 정보</h3>
                        <div class="parentControlBx">
                        	<p class="photo"><img src="../assets/images/common/photo_bg.gif" alt=""></p>
                            <table class="data">
                            <colgroup>
                            <col width="108">
                            <col width="*">
                            </colgroup>
                            <tbody>
                            <tr>
                            	<th><strong class="fontGreen">이름</strong></th>
                                <td>홍길동</td>
                            </tr>
                            <tr>
                            	<th><strong class="fontGreen">성별</strong></th>
                                <td>남자</td>
                            </tr>
                            <tr>
                            	<th><strong class="fontGreen">생년월일</strong></th>
                                <td>2011년 1월 3일</td>
                            </tr>
                            </tbody>
                            </table>
                            <div class="btnSc aright">
                            	<p class="left"><a href="#"><img src="../assets/images/common/btn_init_off.gif" alt="학습정보초기화" class="rollimg"></a></p>
                                <a href="#"><img src="../assets/images/common/btn_edit_off.gif" alt="수정" class="rollimg"></a>
                                <a href="#"><img src="../assets/images/common/btn_del_off.gif" alt="삭제" class="rollimg"></a>
                            </div>
                      	</div>
                    </div>
                	<span class="bg1"></span><span class="bg2"></span><span class="bg3"></span><span class="bg4"></span>
                </div>
                
                <div class="box05 mgt20">
               	  	<div class="parentControl">
                    	<h3 class="divTit2">자녀 B 정보</h3>
                        <div class="parentControlBx">
                        	<p class="photo"><img src="../assets/images/common/photo_bg.gif" alt=""></p>
                            <table class="data">
                            <colgroup>
                            <col width="108">
                            <col width="*">
                            </colgroup>
                            <tbody>
                            <tr>
                            	<th><strong class="fontGreen">이름</strong></th>
                                <td>홍길동</td>
                            </tr>
                            <tr>
                            	<th><strong class="fontGreen">성별</strong></th>
                                <td>남자</td>
                            </tr>
                            <tr>
                            	<th><strong class="fontGreen">생년월일</strong></th>
                                <td>2011년 1월 3일</td>
                            </tr>
                            </tbody>
                            </table>
                            <div class="btnSc aright">
                            	<p class="left"><a href="#"><img src="../assets/images/common/btn_init_off.gif" alt="학습정보초기화" class="rollimg"></a></p>
                                <a href="#"><img src="../assets/images/common/btn_edit_off.gif" alt="수정" class="rollimg"></a>
                                <a href="#"><img src="../assets/images/common/btn_del_off.gif" alt="삭제" class="rollimg"></a>
                            </div>
                      	</div>
                    </div>
                	<span class="bg1"></span><span class="bg2"></span><span class="bg3"></span><span class="bg4"></span>
                </div>

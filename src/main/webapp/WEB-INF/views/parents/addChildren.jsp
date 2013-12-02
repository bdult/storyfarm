<%@ page contentType="text/html" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

                <h2 class="divTit"><img src="${ contextPath }/assets/images/parent/title_control_reg.gif" alt="학습자등록"></h2>
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
                	아래의 정보를 입력해 주세요.
  	  	  	  	</div>
                
                <div class="box03 mgt20">
                	
                    <ul class="ulReg">
                    	<li>
                        	<span class="titTx">자녀명</span>
                            <input name="" type="text" style="width:210px;">
                        </li>
                    	<li>
                        	<span class="titTx">이미지</span>
                            <input name="" type="text" style="width:210px;">
                            <a href="#"><img src="${ contextPath }/assets/images/common/btn_find_off.gif" alt="찾아보기" class="aln_middle rollimg"></a>
                        </li>
                    	<li>
                        	<span class="titTx">성별</span>
                            <label class="radio"><input name="" type="radio" value=""> 남</label>
                            <label class="radio"><input name="" type="radio" value=""> 여</label>
                        </li>
                    	<li>
                        	<span class="titTx">생년월일</span>
                            <input name="" type="text" style="width:85px;"> 년
                          	<input name="" type="text" style="width:65px;" class="mgl10"> 월
                       	  <input name="" type="text" style="width:65px;" class="mgl10"> 일
                        </li>
                    </ul>
                    
                	<span class="bg1"></span><span class="bg2"></span><span class="bg3"></span><span class="bg4"></span>
                </div>
                
                <div class="btnSc">
                	<a href="#"><img src="${ contextPath }/assets/images/common/btn_reg_off.gif" alt="등록" class="rollimg"></a>
                	<a href="#"><img src="${ contextPath }/assets/images/common/btn_cancel3_off.gif" alt="취소" class="rollimg"></a>
                </div>

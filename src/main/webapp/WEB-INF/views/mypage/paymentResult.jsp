<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

            <!-- divContent -->
            <div id="divContent">
                <h2 class="divTit"><img src="../assets/images/mypage/title_pay.gif" alt="유료서비스 결제"></h2>
              	<!-- location -->
                <div id="divLocation">
                    <ul class="location">
                        <li class="first"><a href="#" class="home"><img src="../assets/images/common/blt_home.gif" alt="home"></a></li>
                        <li><a href="#">마이페이지</a></li>
                        <li class="current">유료서비스 결제</li>
                    </ul>
                </div>
              	<!-- //location -->
                
           	  	<div class="myPageStep step03">
                	<ul>
                    	<li>1. 상품선택</li>
                    	<li>2. 결제하기</li>
                    	<li><strong>3. 신청완료</strong></li>
                    </ul>
                </div>
                
                <div class="box01 mgt30">
                	<div class="pay03Wr">
                    	<p class="txt01">정상적으로 결제가 완료 되었습니다.<br>결제 후 이용가능하신 서비스는 아래와 같습니다.</p>
                   	  <div class="box04">
                        	<table class="data">
                            <colgroup>
                            <col width="30%">
                            <col width="*">
                            </colgroup>
                            <tbody>
                            <tr>
                            	<th><strong>신청요금제</strong></th>
                              	<td class="fontBlue">프리미엄 요금제</td>
                            </tr>
                            <tr>
                            	<th><strong>서비스 이용기간</strong></th>
                                <td class="fontBlue">2013년 9월 1일 -2013년 10월 1일</td>
                            </tr>
                            <tr>
                            	<th><strong>서비스 요금</strong></th>
                                <td class="fontBlue">9,900 원</td>
                            </tr>
                            </tbody>
                            </table>
                        	<span class="bg1"></span><span class="bg2"></span><span class="bg3"></span><span class="bg4"></span>
                        </div>
                        
                        <div class="btnSc">
                        	<a href="${ contextPath }/dashboard.do"><img src="../assets/images/common/btn_goMain_off.gif" alt="메인으로가기" class="rollimg"></a>
                        	<a href="${ contextPath }/mypage/info.do"><img src="../assets/images/common/btn_goMypage_off.gif" alt="마이페이지로 가기" class="rollimg"></a>
                        </div>
                        
                  </div>
                	<span class="bg1"></span><span class="bg2"></span><span class="bg3"></span><span class="bg4"></span>
                </div>              
                
          	</div>
            <!-- //divContent -->
            
<script type="text/javascript">
	$(".lm0501").addClass("on");
</script>
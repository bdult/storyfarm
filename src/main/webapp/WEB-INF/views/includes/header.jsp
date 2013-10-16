<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>

    <!-- header -->
  	<div id="header">
    	<div class="divUtill">
       	  	<ul>
				<c:choose>
					<c:when test="${ login_session == null }">
           	  			<li class="fir"><a href="${ contextPath }/loginView.do"><img src="../assets/images/common/utill_mn1.gif" alt="로그인"></a></li>
					</c:when>
					<c:otherwise>
                		<li><a href="${ contextPath }/logout.do"><img src="../assets/images/common/utill_mn2.gif" alt="로그아웃"></a></li>
					</c:otherwise>
				</c:choose>
                <li><a href="${ contextPath }/joinProvision.do"><img src="../assets/images/common/utill_mn2.gif" alt="회원가입"></a></li>
                <li><a href="${ contextPath }/cscenter/notice.do"><img src="../assets/images/common/utill_mn3.gif" alt="고객센터"></a></li>
                <li><a href="${ contextPath }/introduce.do"><img src="../assets/images/common/utill_mn4.gif" alt="오즈월드 소개"></a></li>
            </ul>
            <div class="headSearch">
           		<div class="placeholder"><label class="placeholderTx">Search</label><input name="" type="text" class="input"><a href="#"><img src="../assets/images/common/btn_search.gif" alt="검색"></a></div>
            </div>
      	</div>
        <div id="gnbWrap"><img src="../assets/images/common/gnb.jpg" alt=""></div>
    </div>
    <!-- //header -->
    
    <!-- 
	GNB경로
	<a href="${ contextPath }/category.do?cate_id=78" class="btn btn-default">한글</a>
	<a href="${ contextPath }/category.do?cate_id=32" class="btn btn-default">영어</a>
	<a href="${ contextPath }/category.do?cate_id=38" class="btn btn-default">수학</a>
	<a href="${ contextPath }/category.do?cate_id=41" class="btn btn-default">과학</a>
	<a href="${ contextPath }/category.do?cate_id=46" class="btn btn-default">창의</a>
	<a href="${ contextPath }/category.do?cate_id=54" class="btn btn-default">동요</a>
	<a href="${ contextPath }/category.do?cate_id=79" class="btn btn-default">동화</a>
	<a href="${ contextPath }/category.do?cate_id=68" class="btn btn-default">생활</a>
	<a href="${ contextPath }/worksheet.do" class="btn btn-default">프린트 학습</a>
	 -->
	 		 
    <!-- breadcrumb/ -->
	<!-- 
	<div class="row">
		<div class="col-md-12">
			<ol class="breadcrumb">
				<c:forEach items="${ breadcrumbs }" var="obj" varStatus="status">
					<c:choose>
						<c:when test="${ status.last }">
						  <li class="active">${ obj.name }</li>
						</c:when>
						<c:otherwise>
						  <li><a href="${ contextPath }${ obj.url }">${ obj.name }</a></li>
						</c:otherwise>
					</c:choose>
				</c:forEach>
			</ol>
		</div>
	</div>
	 -->
	<!-- /breadcrumb -->
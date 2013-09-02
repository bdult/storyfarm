<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
    
<div class="row">
	<div class="col-md-12">
		<div class="well">이용내역 요약</div>
	</div>
</div>

<div class="row">
	<div class="col-md-12">
		<div class="well">추천동영상</div>
	</div>
</div>

<c:forEach var="movieList" items="${movieList}" varStatus="status">
	<tr>
		<td>
			<div class="col-md-3">
				<a href="${ contextPath }/children/player.do?contents_id=${ movieList.CONTENTS_ID }" class="thumbnail">
					<img src="http://bigstarglobal.cafe24.com/data/file/product/1988317226_RUS2wCKt_product_abc_productThumb.jpg" alt="썸네일" />
					${movieList.CONTENTS_NM}
				</a>
			</div>
		</td>
	</tr>
</c:forEach>
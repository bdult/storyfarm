<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
    
<div class="row">
	<div class="col-lg-12 text-center">
		차도현방<br>
	</div>
</div>
<br>
<div class="row">
	<div class="col-lg-12 text-center">
		우리아이가 좋아해요.
	</div>
</div>


<c:forEach begin="1" end="3">
	<div class="well">
	<div class="row">
		<c:forEach begin="1" end="2">
			<div class="col-lg-3">
				<img style="width: 100%; height: 70px" data-src="holder.js/100%x180"
					src="../img/171_180.png" alt="...">
			</div>

			<div class="col-lg-3">
				노부영 Nobuyong l Five Little Ducks 01<br> 
				<i class="icon-info"></i>
				<i class="icon-info"></i> 
				<i class="icon-info"></i><br> 
				영어 /단어/숫자 ㅣ 1-2세<br><br>
			</div>
		</c:forEach>
	</div>
	</div>
</c:forEach>


<div class="row">
	<div class="col-lg-12 text-center">
		추천동영상
	</div>
</div>


<c:forEach begin="1" end="1">
	<div class="well">
	<div class="row">
		<c:forEach begin="1" end="2">
			<div class="col-lg-3">
				<img style="width: 100%; height: 70px" data-src="holder.js/100%x180"
					src="../img/171_180.png" alt="...">
			</div>

			<div class="col-lg-3">
				노부영 Nobuyong l Five Little Ducks 01<br> 
				<i class="icon-info"></i>
				<i class="icon-info"></i> 
				<i class="icon-info"></i><br> 
				영어 /단어/숫자 ㅣ 1-2세<br><br>
			</div>
		</c:forEach>
	</div>
	</div>
</c:forEach>
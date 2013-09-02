<%@ page contentType="text/html" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<div class="alert alert-success">FAQ 게시판</div>

<div class="row">
	
	<div class="col-md-12">
	
		<ul class="nav nav-tabs nav-justified">
			<li class="active"><a href="#">회원/가입안내</a></li>
			<li><a href="#">결제안내</a></li>
			<li><a href="#">서비스안내</a></li>
			<li><a href="#">이용장애안내</a></li>
		</ul>
		<table class="table table-striped table-hover">
			<tr>
				<td><a href="#">사이트가입방법을 모르겠어요</a></td>
			</tr>
			<tr>	
				<td hidden="true">FAQ 내용</td>
			</tr>
			<tr>
				<td><a href="#">무료회원과 유료회원의 차이를 모르겠어요</a></td>
			</tr>
			<tr>	
				<td hidden="true">FAQ 내용</td>
			</tr>
			<tr>
				<td><a href="#">아이디/비밀번호를 잊어버렸어요</a></td>
			</tr>
			<tr>	
				<td hidden="true">FAQ 내용</td>
			</tr>
			<tr>
				<td><a href="#">ㅇㅇ</a></td>
			</tr>
			<tr>	
				<td hidden="true">FAQ 내용</td>
			</tr>
			<tr>
				<td><a href="#">ㅁㅁ</a></td>
			</tr>
			<tr>	
				<td hidden="true">FAQ 내용</td>
			</tr>
		</table>
	</div>
</div>

<script type="text/javascript">
	$('tr:even').click(function(){
		var index = $('tr').index(this) + 1;
		$('td').eq(index).toggle(100);
	});
</script>
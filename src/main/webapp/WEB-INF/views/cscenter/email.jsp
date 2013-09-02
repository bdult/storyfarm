<%@ page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<div class="alert alert-success">문의메일보내기</div>

<div class="row">
	<div class="col-md-12">
		<form class="form-horizontal" role="form">
			<div class="form-group">
				<label for="inputEmail1" class="col-md-1 control-label">이메일</label>
				<div class="col-md-11">
					<input type="email" class="form-control" id="inputEmail1" placeholder="답변받을 메일주소를 입력해 주세요.">
				</div>
			</div>
			<div class="form-group">
				<label for="inputPassword1" class="col-md-1 control-label">제목</label>
				<div class="col-md-11">
					<input type="password" class="form-control" id="inputPassword1" placeholder="제목을 입력해 주세요.">
				</div>
			</div>
			<div class="form-group">
				<label for="inputPassword1" class="col-md-1 control-label">내용</label>
				<div class="col-md-11">
					<textarea name="content" class="form-control" rows="7" placeholder="문의 내용을 입력해 주세요."></textarea>
				</div>
			</div>
			<div class="form-group">
				<div class="col-md-offset-1 col-md-11">
					<button type="submit" class="btn btn-info">문의하기</button>
				</div>
			</div>
		</form>
	</div>
</div>

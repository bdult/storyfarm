
<%@ page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<div class="row">
	<div class="col-lg-12">
		<h4>학습노하우</h4>
	</div>
</div>

<div class="row">
	<div class="col-lg-12">
		<form class="form-horizontal" role="form">
		  <div class="form-group">
		    <label for="inputEmail1" class="col-lg-1 control-label">제목</label>
		    <div class="col-lg-11">
		      <input type="email" class="form-control" id="subject" placeholder="제목">
		    </div>
		  </div>
		  <div class="form-group">
		    <label for="inputPassword1" class="col-lg-1 control-label">내용</label>
		    <div class="col-lg-11">
		      <textarea name="content" class="form-control" id="" rows="10"></textarea>
		    </div>
		  </div>
		  <div class="form-group">
		    <div class="col-lg-offset-1 col-lg-11">
		      <input type="file" id="exampleInputFile">
		      <input type="file" id="exampleInputFile">
		      <input type="file" id="exampleInputFile">
		    </div>
		  </div>
		  <div class="form-group">
		    <div class="col-lg-offset-1 col-lg-11">
		      <div class="pull-right">
						<a href="#" class="btn btn-primary">확인</a>
						<a href="#" class="btn btn-default">취소</a>
					</div>
		    </div>
		  </div>
		</form>
	</div>
</div>

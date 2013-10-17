<%@ page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<h4>사용시간설정</h4>

<div class="row">
	<div class="col-md-12">
		<form class="form-horizontal" role="form">
		  <div class="form-group">
		    <label for="inputEmail1" class="col-md-2 control-label">학습자 선택</label>
		    <div class="col-md-10">
				<label class="radio-inline">
				  <input type="radio" id="inlineCheckbox1" value="option1"> 자녀 1
				</label>
				<label class="radio-inline">
				  <input type="radio" id="inlineCheckbox2" value="option2"> 자녀 2
				</label>
		    </div>
		  </div>
		  <div class="form-group">
		    <label for="inputPassword1" class="col-md-2 control-label">사용시간 설정</label>
		    <div class="col-md-10">
		    	<div class="row">
		    		<div class="col-md-1">
		    			<input type="text" class="form-control" id="hour" placeholder="0">
		    		</div>
		    		<div class="col-md-1">시간</div>
		    		<div class="col-md-1">
		    			<input type="text" class="form-control" id="minute" placeholder="0">
		    		</div>
		    		<div class="col-md-1">분</div>
		    		<div class="col-md-8">
						<input type="checkbox"> 사용시간 제한 없음
					</div>
		    	</div>
		    </div>
		  </div>
		  <div class="form-group">
		  	<label for="" class="col-md-2 control-label"></label>
		    <div class="col-md-10 text-right">
		    	<button class="btn btn-default">등록</button>
		    	<button class="btn btn-default">취소</button>
		    </div>
		  </div>
		</form>
	</div>
</div>

<div class="row">
	<div class="col-md-12">
		<div class="well">
		부모님이 직접 오즈월드 사용시간을 설정하실 수 있습니다.
		<br />
		로그인을 한 시간을 기준으로 사용시간이 누적되며, 설정된 사용시간이 초과하게 되면 콘텐츠가 실행되지 않습니다.
		</div>
	</div>
</div>
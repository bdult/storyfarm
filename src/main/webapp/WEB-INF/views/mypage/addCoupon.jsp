<%@ page contentType="text/html" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<div class="row">
	<div class="well">
		<div class="col-xs-12">
			쿠폰에 등록된 코드를 정확하게 입력해주세요<br><br>
		</div>
		<div class="col-xs-12">
			<div class="row">
				<div class="col-xs-3">
					<input class="form-control" maxlength="4">
				</div>
				<div class="col-xs-3">
					<input class="form-control" maxlength="4">
				</div>
				<div class="col-xs-3">
					<input class="form-control" maxlength="4">
				</div>
				<div class="col-xs-3">
					<input class="form-control" maxlength="4">
				</div>
			</div>
			<a class="btn btn-default" id="submit">입력</a>
		</div>
		<div class="col-xs-12">
			<br>지급 받으신 쿠폰번호를 정확히 입력해주세요.<br>
 			쿠폰에 명시된 유효기간을 확인해 주세요. <br>
 			입력된 쿠폰은 재 사용이 안됩니다.
		</div>
	</div>
</div>
<script type="text/javascript">
	$("#submit").click(function(){
		self.close();	
	});
</script>
<%@ page contentType="text/html" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<div class="row">
	<div class="col-lg-12">
		
		<div class="panel panel-info">
		  <div class="panel-heading">
		  	${ writing.TITLE } 
		  	<div class="pull-right">${ writing.REG_DT }</div>
	  	</div>
		  <div class="panel-body">${ writing.CONTENTS }</div>
		</div>
		
		<a href="javascript:history.back();" class="btn btn-default">뒤로</a>
		
	</div>
</div>

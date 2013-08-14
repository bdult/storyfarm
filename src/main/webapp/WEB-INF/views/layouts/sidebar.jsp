<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt"%>
<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles"%>
<!DOCTYPE html>
<html>
<head>
<tiles:insertAttribute name="head" />
</head>
<body>

	<tiles:insertAttribute name="header" />

	<div class="container">
		<div class="row">
			<div class="col-lg-3"><tiles:insertAttribute name="sidebar" /></div>
			<div class="col-lg-9"><tiles:insertAttribute name="content" /></div>
		</div>
	</div>

	<tiles:insertAttribute name="footer" />

</body>
</html>





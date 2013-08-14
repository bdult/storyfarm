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
		<tiles:insertAttribute name="content" />
	</div>

	<tiles:insertAttribute name="footer" />

</body>
</html>





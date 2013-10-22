<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt"%>
<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles"%>
<!DOCTYPE html>
<html>
<head>
<tiles:insertAttribute name="head" />
</head>
<body>

	<div id="divWrapper">
		<tiles:insertAttribute name="header" />
	
		<div id="container">
			
			<!-- leftMenu -->
			<div id="leftMenu">
				<div class="col-md-2"><tiles:insertAttribute name="sidebar" /></div>
			</div>
			<!-- //leftMenu -->
			
			<!-- divContent -->
            <div id="divContent">
				<div class="col-md-10"><tiles:insertAttribute name="content" /></div>
			</div>			
			<!-- divContent -->
			
		</div>
	
		<tiles:insertAttribute name="footer" />
	</div>

</body>
</html>





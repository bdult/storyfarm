<%@ page contentType="text/html" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<h2 class="divTit"><img src="../assets/images/customer/title_faq.gif" alt="FAQ"></h2>

<!-- location -->
<div id="divLocation">
	<ul class="location">
		<c:forEach items="${ breadcrumbs }" var="obj" varStatus="status">
			<c:choose>
				<c:when test="${ status.first }">
					<li class="first"><a href="${ contextPath }" class="home"><img src="${ contextPath }/assets/images/common/blt_home.gif" alt="home"></a></li>
				</c:when>
				<c:when test="${ status.last }">
					<li class="current">${ obj.name }</li>
				</c:when>
				<c:otherwise>
					<li><a href="${ contextPath }${ obj.url }">${ obj.name }</a></li>
				</c:otherwise>
			</c:choose>
		</c:forEach>
	</ul>
</div>
<!-- //location -->

<div class="divTab">
	<ul class="tab01">
		<c:forEach items="${ faqCodeList }" var="obj" varStatus="util">
			<c:choose>
				<c:when test="${ util.first }">
			  	<li><a class="tabGroup on" data-target="sub${ util.count }" href="#"><span>자주묻는질문<br>TOP10</span></a></li>
				</c:when>
				<c:otherwise>
			    <li><a class="tabGroup" data-target="sub${ util.count }" href="#"><span>${ obj.CODE_DETAIL }</span></a></li>
				</c:otherwise>
			</c:choose>
		</c:forEach>
  </ul>
</div>

<div class="faqLst mgt20">
	<c:forEach items="${ subList }" var="sub" varStatus="util">
		
		<ul id="sub${ util.count }" <c:if test="${ not util.first }">style="display:none;"</c:if>>
			<c:forEach items="${ sub }" var="obj">
					<li>
						<div class="fa out">
		        	<span class="bltQ">Q</span><p class="titTx">${ obj.TITLE }</p>
		        </div>
		        <div class="divA dpno${ util.index }" style="display:none;">
		        	<span class="bltA">A</span>
		            <p class="txt">${ obj.CONTENTS }</p>
		        </div>
		      </li>
			</c:forEach>
	  </ul>
	</c:forEach>
		
</div>

<script>
$(function(){
	$("a.lm0203").addClass("on");
	$("a.tabGroup").click(function(e){
		
		//init
		e.preventDefault();
		var $subGroup = $("a.tabGroup");
		$subGroup.removeClass("on");
		
		//do
		var $this = $(this);
		$this.addClass("on");
		
		$("div.faqLst").find("ul").hide();
		$("#" + $this.data("target")).show();
		
	});
	
	//리스트 on & off ==========================
	$(".fa")
		.css("cursor","pointer")
		.click(function(){
			var $this = $(this);
			$this.next().toggle();
		});
	//리스트 on & off ==========================
	
		//init
		$()
});
</script>

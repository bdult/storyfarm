<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<div id="content">
        
    <!-- location -->
	<div id="divLocation">
	</div>
	<!-- //location -->
    
    <!-- conVew -->
  	<div class="conVew">
    	<h3><span id="contents_nm">${ contents.CONTENTS_NM }</span></h3>
        <div class="conMov">
        	<video id="player" width="720px" height="458px" controls poster="http://115.71.237.215/${contents.IMG_PATH}">
			<source id="palyerSource" src="">
				video 요소를 지원하지 않는 브라우저입니다.
			</video>
			<br/>
			<table>
	        	<tbody>
					<tr>
						<c:forEach items="${ playList }" var="obj" varStatus="status">
							<td width="155px">
								<div style="width:155px;margin:10px">
							<input type="hidden" class="movieList" value="${obj.CONTENTS_ID}">
							<input type="hidden" class="movieListImg" value="${obj.IMG_PATH}">
							<input type="hidden" class="movieListName" value="${obj.CONTENTS_NM}">
							<a class="otherContents" href="#null"><img src="http://115.71.237.215/${ obj.IMG_PATH }" width="155" height="115" alt=""></a>
								</div>
							</td>
						</c:forEach>
					</tr>
	        		
	        	</tbody>
	        </table>
        	<button id="repeatBtn" class="btn btn-info" type="button">리스트 반복 듣기</button>
        	<button id="listBackBtn" class="btn btn-primary" type="button">목록으로</button>
        </div>
	</div>
    <!-- conVew -->
    <!-- 
    <div class="container">
		<div class="row">
			<c:forEach items="${ playList }" var="obj" varStatus="status">
					<div class="span1">
						<input type="hidden" class="movieList" value="${obj.CONTENTS_ID}">
						<a class="otherContents" href="#null"><img src="http://115.71.237.215/${ obj.IMG_PATH }" width="155" height="115" alt=""></a>
					</div>
			</c:forEach>
		</div>
       
		<div class="btnSc">
			<p class="right">
				<button class="btn btn-primary">닫기</button>
			</p>
		</div>
    </div>
     -->
    
</div>

<script type="text/javascript">
	var nextMovie=0;
	var movieListSize = $(".movieList").size();
	var isRepeat = false;
	$(function(){
		
		// movie start
		 moviePlay(nextMovie);
		
		
		$("#contents_nm").text($(".movieListName").get(nextMovie).value);
		$("#player").attr("poster", "http://115.71.237.215/"+$(".movieListImg").get(nextMovie).value);
		
		$(".otherContents").bind("click", function(obj){
			nextMovie=$(".otherContents").index($(this));
			moviePlay($(".otherContents").index($(this)));
		});
		
		$("#player").bind('ended',function() {
			if(nextMovie+1 < movieListSize){
				moviePlay(nextMovie+1);
			}else{
				if(isRepeat){
					nextMovie=0;
					moviePlay(nextMovie);
				}
			}
        });
		
		$("#repeatBtn").click(function(){
			if(isRepeat){
				isRepeat = false;
				$("#repeatBtn").removeClass("btn-success").addClass("btn-info");
			}else{
				$("#repeatBtn").removeClass("btn-info").addClass("btn-success");
				isRepeat = true;
			}
		});
		
		$("#listBackBtn").click(function(){
			window.location.href="${backUrl}";
		});
	});
	
	function moviePlay(index){
		var contentsId = $(".movieList").get(index).value;
		$("#palyerSource").attr("src", "streaming.do?contents_id="+contentsId);
		$("#contents_nm").text($(".movieListName").get(index).value);
		$("#player").attr("poster", "");
		$("#player")[0].load();
		$("#player").get(0).play();
	}
	
</script>


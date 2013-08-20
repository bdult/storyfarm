<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<!-- 1. jquery library -->
<script type="text/javascript"
   src="http://ajax.googleapis.com/ajax/libs/jquery/1.8/jquery.min.js">
</script>
 
<!-- 2. flowplayer -->
<script type="text/javascript"
   src="//releases.flowplayer.org/5.4.3/flowplayer.min.js">
</script>
 
<!-- 3. skin -->
<link rel="stylesheet" type="text/css"
   href="//releases.flowplayer.org/5.4.3/skin/minimalist.css">
    
	<div class="row-fluid blog-page blog-item">
        <!-- Left Sidebar -->
    	<div class="span9">
        	<div class="blog margin-bottom-30">
            	<h3>꿈꾸는 달팽이</h3>
            	<ul class="unstyled inline blog-info">
                	<li><i class="icon-calendar"></i> February 02, 2013</li>
                	<li><i class="icon-pencil"></i> Diana Anderson</li>
                	<li><i class="icon-comments"></i> <a href="#">24 Comments</a></li>
                </ul>
            	<ul class="unstyled inline blog-tags">
                    <li>
                        <i class="icon-tags"></i> 
                        <a href="#">Technology</a> 
                        <a href="#">Education</a>
                        <a href="#">Internet</a>
                        <a href="#">Media</a>
                    </li>
                </ul>
                <!-- video player -->
                <div class="blog-img">
                	<div id="01" class="flowplayer" data-swf="player/flowplayer.swf" >
						<video>
							<source type="video/mp4" src="${movie}">
						</video>
					</div>
                </div>
                <!-- /video player -->

                <blockquote class="hero">
                    <p>귀여운 달팽이와 노래를 따라해보아요.</p>
                    <small>키즈북스 <cite title="Source Title">꿈꾸는 달팽이</cite></small>
                </blockquote>

                <p>어쩌구 저쩌구 왔다갔다 노래하고 춤을 추고 웃오보아도 보이는건 하나하나 하나뿐이네.</p>
            </div><!--/blog-->

			<hr />

            <!-- Media -->
            <div class="media">
            	<h3 class="color-green">감상평</h3>
                <a class="pull-left" href="#">
                    <img class="media-object" src="assets/img/sliders/elastislide/2.jpg" alt="" />
                </a>
                <div class="media-body">
                <h4 class="media-heading">비 <span>5 시간 전 / <a href="#">댓글달기</a></span></h4>
                <p>어썸~ 판타스틱~ 김태희 보는 것 보다 좋은데요. 이 비디오와 함께라면 군대한번 더 갔다올 수 있을것 같아요</p>

                    <hr />

                    <!-- Nested media object -->
                    <div class="media">
                        <a class="pull-left" href="#">
                            <img class="media-object" src="assets/img/sliders/elastislide/5.jpg" alt="" />
                        </a>
                        <div class="media-body">
                            <h4 class="media-heading">국방부 관계자 <span>17 시간 전 / <a href="#">댓글달기</a></span></h4>
                            <p>귀하의 재입대를 승인합니다. </p>
                        </div>
                    </div><!--/media-->

                    <hr />

                    <div class="media">
                        <a class="pull-left" href="#">
                            <img class="media-object" src="assets/img/sliders/elastislide/11.jpg" alt="" />
                        </a>
                        <div class="media-body">
                            <h4 class="media-heading">태희사랑 <span>2 일 전 / <a href="#">댓글달기</a></span></h4>
                            <p>귀하의 재입대 촛불시위를 진행합니다. 모임장소 공지 : 8월 8일 오후 1시 광화문 순대골목집 앞</p>
                        </div>
                    </div><!--/media-->
                </div>
            </div><!--/media-->

            <div class="media">
                <a class="pull-left" href="#">
                    <img class="media-object" src="assets/img/sliders/elastislide/9.jpg" alt="" />
                </a>
                <div class="media-body">
                    <h4 class="media-heading">펠포츠 <span>2013-06-05 / <a href="#">댓글달기</a></span></h4>
                    <p>핸드폰을 고치며 이 동영상을 계속 따라불렀더니 세계적인 성악가가 되었어요. 여러분 이 폴포츠가 강후 합니다.</p>
                </div>
            </div><!--/media-->

            <hr />

            <!-- Leave a Comment -->
            <div class="post-comment">
            	<h3 class="color-green">강상평 남기기</h3>
                <form>
                    <label>이름</label>
                    <input type="text" class="span7" />
                    <label>Email <span class="color-red">*</span></label>
                    <input type="text" class="span7" />
                    <label>글작성</label>
                    <textarea rows="8" class="span10"></textarea>
                    <p><button type="submit" class="btn-u">저장</button></p>
                </form>
            </div><!--/post-comment-->
        </div><!--/span9-->

        <!-- Right Sidebar -->
    	<div class="span3">
        	<!-- Photo Stream -->
        	<div class="headline"><h3>관련영상</h3></div>
            <ul class="unstyled blog-ads">
            	<li><a href="#"><img src="assets/img/sliders/elastislide/5.jpg" alt="" class="hover-effect" /></a></li>
            	<li><a href="#"><img src="assets/img/sliders/elastislide/6.jpg" alt="" class="hover-effect" /></a></li>
            	<li><a href="#"><img src="assets/img/sliders/elastislide/8.jpg" alt="" class="hover-effect" /></a></li>
            	<li><a href="#"><img src="assets/img/sliders/elastislide/10.jpg" alt="" class="hover-effect" /></a></li>
            	<li><a href="#"><img src="assets/img/sliders/elastislide/11.jpg" alt="" class="hover-effect" /></a></li>
            	<li><a href="#"><img src="assets/img/sliders/elastislide/1.jpg" alt="" class="hover-effect" /></a></li>
            	<li><a href="#"><img src="assets/img/sliders/elastislide/2.jpg" alt="" class="hover-effect" /></a></li>
            	<li><a href="#"><img src="assets/img/sliders/elastislide/7.jpg" alt="" class="hover-effect" /></a></li>
            </ul>

        	<!-- Blog Tags -->
        	<div class="headline"><h3>Tags</h3></div>
            <ul class="unstyled inline blog-tags">
            	<li><a href="#"><i class="icon-tags"></i> 달팽이</a></li>
            	<li><a href="#"><i class="icon-tags"></i> 음악</a></li>
            	<li><a href="#"><i class="icon-tags"></i> 미취학</a></li>
            </ul>
        </div><!--/span3-->
    </div><!--/row-fluid-->  
    
    
    
    
<script>
$(function() {
	var api = flowplayer();
	api.bind("finish", function() {
		alert("축하합니다!!\r학습이 완료되었습니다.");
	});
});
</script>      
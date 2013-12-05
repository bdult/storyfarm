<%@ page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<div id="indexWrap">

	<div class="mainContents">

		<div class="mainSlide">
			<div id="slideWrap" style="overflow: hidden;">
				<div class="slidesjs-container" style="overflow: hidden; position: relative; width: 1026px; height: 333px;">
					<div class="slidesjs-control" style="position: relative; left: 0px; width: 1026px; height: 333px;">
						<img src="${ contextPath }/assets/images/index/main_pic.jpg" alt="" class="slidesjs-slide" slidesjs-index="0"
							style="position: absolute; top: 0px; left: 0px; width: 100%; z-index: 0; -webkit-backface-visibility: hidden; display: none;"><img src="${ contextPath }/assets/images/index/main_pic.jpg" alt=""
							class="slidesjs-slide" slidesjs-index="1" style="position: absolute; top: 0px; left: -1026px; width: 100%; z-index: 0; display: block; -webkit-backface-visibility: hidden;"><img
							src="${ contextPath }/assets/images/index/main_pic.jpg" alt="" class="slidesjs-slide" slidesjs-index="2"
							style="position: absolute; top: 0px; left: 0px; width: 100%; z-index: 10; display: block; -webkit-backface-visibility: hidden;"><img src="${ contextPath }/assets/images/index/main_pic.jpg" alt=""
							class="slidesjs-slide" slidesjs-index="3" style="position: absolute; top: 0px; left: 1026px; width: 100%; z-index: 0; display: block; -webkit-backface-visibility: hidden;">
					</div>
				</div>



				<ul class="slidesjs-pagination">
					<li class="slidesjs-pagination-item"><a href="#" data-slidesjs-item="0" class="">1</a></li>
					<li class="slidesjs-pagination-item"><a href="#" data-slidesjs-item="1" class="">2</a></li>
					<li class="slidesjs-pagination-item"><a href="#" data-slidesjs-item="2" class="active">3</a></li>
					<li class="slidesjs-pagination-item"><a href="#" data-slidesjs-item="3" class="">4</a></li>
				</ul>
			</div>
			<script type="text/javascript">
                // 둘러보기
                $(function() {
                    $('#slideWrap').slidesjs({
                        width: 1026,
                        height: 333,
                        navigation: {
                            active: false,
                        },
						play: {
						  active: false,
						  effect: "slide",
						  interval: 5000,
						  auto: true,
						  swap: true,
						  pauseOnHover: false,
						  restartDelay: 2500
						}
                    });
                });
                </script>
		</div>
		<!-- //mainSlide -->

		<div class="mainBanner">
			<script type="text/javascript">
					$(window).load(function(){ //$(window).load() must be used instead of $(document).ready() because of Webkit compatibility				
						$("#familyWrapRoll").sliderkit({
							auto:true,
							shownavitems:7,
							start:2
						});
					});	
				</script>
			<div id="familyWrapRoll" class="sliderkit" style="height: 350px; display: block;">
				<div class="sliderkit-nav">
					<div class="sliderkit-nav-clip" style="width: 974px; height: 100px;">
						<ul style="width: 1960px; left: -980px;">
							<li style="width: 134px; height: 100px;"><a href="#"><img src="${ contextPath }/assets/images/index/banner01.png" alt=""></a></li>
							<li style="width: 134px; height: 100px;"><a href="#"><img src="${ contextPath }/assets/images/index/banner02.png" alt=""></a></li>
							<li style="width: 134px; height: 100px;" class=""><a href="#"><img src="${ contextPath }/assets/images/index/banner03.png" alt=""></a></li>
							<li style="width: 134px; height: 100px;"><a href="#"><img src="${ contextPath }/assets/images/index/banner04.png" alt=""></a></li>
							<li style="width: 134px; height: 100px;"><a href="#"><img src="${ contextPath }/assets/images/index/banner05.png" alt=""></a></li>
							<li style="width: 134px; height: 100px;"><a href="#"><img src="${ contextPath }/assets/images/index/banner06.png" alt=""></a></li>
							<li style="width: 134px; height: 100px;" class=""><a href="#"><img src="${ contextPath }/assets/images/index/banner07.png" alt=""></a></li>
							<li style="width: 134px; height: 100px;" class="sliderkit-selected"><a href="#"><img src="${ contextPath }/assets/images/index/banner01.png" alt=""></a></li>
							<li style="width: 134px; height: 100px;"><a href="#"><img src="${ contextPath }/assets/images/index/banner02.png" alt=""></a></li>
							<li style="width: 134px; height: 100px;"><a href="#"><img src="${ contextPath }/assets/images/index/banner03.png" alt=""></a></li>
							<li style="width: 134px; height: 100px;"><a href="#"><img src="${ contextPath }/assets/images/index/banner04.png" alt=""></a></li>
							<li style="width: 134px; height: 100px;"><a href="#"><img src="${ contextPath }/assets/images/index/banner05.png" alt=""></a></li>
							<li style="width: 134px; height: 100px;"><a href="#"><img src="${ contextPath }/assets/images/index/banner06.png" alt=""></a></li>
							<li style="width: 134px; height: 100px;"><a href="#"><img src="${ contextPath }/assets/images/index/banner07.png" alt=""></a></li>
						</ul>
					</div>
					<div class="sliderkit-btn sliderkit-nav-btn sliderkit-nav-prev">
						<a href="#" title="Scroll to the left"><span>Previous</span></a>
					</div>
					<div class="sliderkit-btn sliderkit-nav-btn sliderkit-nav-next sliderkit-btn-disable">
						<a href="#" title="Scroll to the right"><span>Next</span></a>
					</div>
				</div>
			</div>
		</div>
		<!-- //mainBanner -->

		<div class="mainProLst">
			<ul>
				<li>
					<p class="photo">
						<img src="${ contextPath }/assets/images/content/thum.jpg" width="155" height="115" alt="">
					</p>
					<p class="divChk">미운아기오리새끼</p> <span class="bg1"></span><span class="bg2"></span><span class="bg3"></span><span class="bg4"></span>
				</li>
				<li>
					<p class="photo">
						<img src="${ contextPath }/assets/images/content/thum.jpg" width="155" height="115" alt="">
					</p>
					<p class="divChk">미운아기오리새끼</p> <span class="bg1"></span><span class="bg2"></span><span class="bg3"></span><span class="bg4"></span>
				</li>
				<li>
					<p class="photo">
						<img src="${ contextPath }/assets/images/content/thum.jpg" width="155" height="115" alt="">
					</p>
					<p class="divChk">미운아기오리새끼</p> <span class="bg1"></span><span class="bg2"></span><span class="bg3"></span><span class="bg4"></span>
				</li>
				<li>
					<p class="photo">
						<img src="${ contextPath }/assets/images/content/thum.jpg" width="155" height="115" alt="">
					</p>
					<p class="divChk">미운아기오리새끼</p> <span class="bg1"></span><span class="bg2"></span><span class="bg3"></span><span class="bg4"></span>
				</li>
				<li>
					<p class="photo">
						<img src="${ contextPath }/assets/images/content/thum.jpg" width="155" height="115" alt="">
					</p>
					<p class="divChk">미운아기오리새끼</p> <span class="bg1"></span><span class="bg2"></span><span class="bg3"></span><span class="bg4"></span>
				</li>
				<li>
					<p class="photo">
						<img src="${ contextPath }/assets/images/content/thum.jpg" width="155" height="115" alt="">
					</p>
					<p class="divChk">미운아기오리새끼</p> <span class="bg1"></span><span class="bg2"></span><span class="bg3"></span><span class="bg4"></span>
				</li>
				<li>
					<p class="photo">
						<img src="${ contextPath }/assets/images/content/thum.jpg" width="155" height="115" alt="">
					</p>
					<p class="divChk">미운아기오리새끼</p> <span class="bg1"></span><span class="bg2"></span><span class="bg3"></span><span class="bg4"></span>
				</li>
				<li>
					<p class="photo">
						<img src="${ contextPath }/assets/images/content/thum.jpg" width="155" height="115" alt="">
					</p>
					<p class="divChk">미운아기오리새끼</p> <span class="bg1"></span><span class="bg2"></span><span class="bg3"></span><span class="bg4"></span>
				</li>
				<li>
					<p class="photo">
						<img src="${ contextPath }/assets/images/content/thum.jpg" width="155" height="115" alt="">
					</p>
					<p class="divChk">미운아기오리새끼</p> <span class="bg1"></span><span class="bg2"></span><span class="bg3"></span><span class="bg4"></span>
				</li>
				<li>
					<p class="photo">
						<img src="${ contextPath }/assets/images/content/thum.jpg" width="155" height="115" alt="">
					</p>
					<p class="divChk">
						<label><input name="" type="checkbox" value=""> 미운아기오리새끼</label>
					</p> <span class="bg1"></span><span class="bg2"></span><span class="bg3"></span><span class="bg4"></span>
				</li>
				<li>
					<p class="photo">
						<img src="${ contextPath }/assets/images/content/thum.jpg" width="155" height="115" alt="">
					</p>
					<p class="divChk">미운아기오리새끼</p> <span class="bg1"></span><span class="bg2"></span><span class="bg3"></span><span class="bg4"></span>
				</li>
				<li>
					<p class="photo">
						<img src="${ contextPath }/assets/images/content/thum.jpg" width="155" height="115" alt="">
					</p>
					<p class="divChk">미운아기오리새끼</p> <span class="bg1"></span><span class="bg2"></span><span class="bg3"></span><span class="bg4"></span>
				</li>
				<li>
					<p class="photo">
						<img src="${ contextPath }/assets/images/content/thum.jpg" width="155" height="115" alt="">
					</p>
					<p class="divChk">미운아기오리새끼</p> <span class="bg1"></span><span class="bg2"></span><span class="bg3"></span><span class="bg4"></span>
				</li>
				<li>
					<p class="photo">
						<img src="${ contextPath }/assets/images/content/thum.jpg" width="155" height="115" alt="">
					</p>
					<p class="divChk">미운아기오리새끼</p> <span class="bg1"></span><span class="bg2"></span><span class="bg3"></span><span class="bg4"></span>
				</li>
				<li>
					<p class="photo">
						<img src="${ contextPath }/assets/images/content/thum.jpg" width="155" height="115" alt="">
					</p>
					<p class="divChk">미운아기오리새끼</p> <span class="bg1"></span><span class="bg2"></span><span class="bg3"></span><span class="bg4"></span>
				</li>
			</ul>
		</div>
		<!-- //mainProLst -->

		<div class="mainBrd">
			<ul>
				<li class="fir"><img src="${ contextPath }/assets/images/index/main_brd1.png" alt=""></li>
				<li><img src="${ contextPath }/assets/images/index/main_brd2.png" alt=""></li>
				<li><a href="#"><img src="${ contextPath }/assets/images/index/main_brd3.png" alt=""></a></li>
			</ul>
		</div>
		<!-- mainBrd -->

	</div>
	<!-- //mainContents -->
</div>
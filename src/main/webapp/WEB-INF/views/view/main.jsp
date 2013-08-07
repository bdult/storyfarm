<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    <!-- carousell -->
    <div class="well">
 
	<div id="myCarousel" class="carousel slide">
	 
	<ol class="carousel-indicators">
	    <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
	    <li data-target="#myCarousel" data-slide-to="1"></li>
	    <li data-target="#myCarousel" data-slide-to="2"></li>
	</ol>
	 
	<!-- Carousel items -->
	<div class="carousel-inner">
		
	<div class="item active">
		<div class="row-fluid">
		  <div class="span3"><a href="#x" class="thumbnail"><img src="http://placehold.it/250x250" alt="Image" style="max-width:100%;" /></a></div>
		  <div class="span3"><a href="#x" class="thumbnail"><img src="http://placehold.it/250x250" alt="Image" style="max-width:100%;" /></a></div>
		  <div class="span3"><a href="#x" class="thumbnail"><img src="http://placehold.it/250x250" alt="Image" style="max-width:100%;" /></a></div>
		  <div class="span3"><a href="#x" class="thumbnail"><img src="http://placehold.it/250x250" alt="Image" style="max-width:100%;" /></a></div>
		</div><!--/row-fluid-->
	</div><!--/item-->
	 
	<div class="item">
		<div class="row-fluid">
			<div class="span3"><a href="#x" class="thumbnail"><img src="http://placehold.it/250x250" alt="Image" style="max-width:100%;" /></a></div>
			<div class="span3"><a href="#x" class="thumbnail"><img src="http://placehold.it/250x250" alt="Image" style="max-width:100%;" /></a></div>
			<div class="span3"><a href="#x" class="thumbnail"><img src="http://placehold.it/250x250" alt="Image" style="max-width:100%;" /></a></div>
			<div class="span3"><a href="#x" class="thumbnail"><img src="http://placehold.it/250x250" alt="Image" style="max-width:100%;" /></a></div>
		</div><!--/row-fluid-->
	</div><!--/item-->
	 
	<div class="item">
		<div class="row-fluid">
			<div class="span3"><a href="#x" class="thumbnail"><img src="http://placehold.it/250x250" alt="Image" style="max-width:100%;" /></a></div>
			<div class="span3"><a href="#x" class="thumbnail"><img src="http://placehold.it/250x250" alt="Image" style="max-width:100%;" /></a></div>
			<div class="span3"><a href="#x" class="thumbnail"><img src="http://placehold.it/250x250" alt="Image" style="max-width:100%;" /></a></div>
			<div class="span3"><a href="#x" class="thumbnail"><img src="http://placehold.it/250x250" alt="Image" style="max-width:100%;" /></a></div>
		</div><!--/row-fluid-->
	</div><!--/item-->
	 
	</div><!--/carousel-inner-->
	 
	<a class="left carousel-control" href="#myCarousel" data-slide="prev">‹</a>
	<a class="right carousel-control" href="#myCarousel" data-slide="next">›</a>
	</div><!--/myCarousel-->
	 
	</div><!--/well-->
	 
	<!-- This is just a little bit of custom CSS code to enhance things. Feel free to place this in your main CSS file. I've commented to say what each bit does. --> 
	<style type="text/css">
	/* Removes the default 20px margin and creates some padding space for the indicators and controls */
	.carousel {
		margin-bottom: 0;
		padding: 0 40px 30px 40px;
	}
	/* Reposition the controls slightly */
	.carousel-control {
		left: -12px;
	}
	.carousel-control.right {
		right: -12px;
	}
	/* Changes the position of the indicators */
	.carousel-indicators {
		right: 50%;
		top: auto;
		bottom: 0px;
		margin-right: -19px;
	}
	/* Changes the colour of the indicators */
	.carousel-indicators li {
		background: #c0c0c0;
	}
	.carousel-indicators .active {
	background: #333333;
	}
	</style>
	 
	<!-- Call jQuery 1.9, call bootstrap.js and run the carousel when the DOM is ready. Slide every 10 seconds. -->
	<script type="text/javascript" src="https://ajax.googleapis.com/ajax/libs/jquery/1/jquery.min.js"></script>
	<script type="text/javascript" src="js/bootstrap.min.js"></script>
	<script type="text/javascript">
	$(document).ready(function() {
		$('#myCarousel').carousel({
		interval: 10000
		})
	});
	</script>
    <!-- end carousell -->

	<!-- Tab Works -->
	<div id="tab" class="btn-group" data-toggle="buttons-radio">
	  <a href="#new" class="btn btn-large btn-info active" data-toggle="tab">신작</a>
	  <a href="#best" class="btn btn-large btn-info" data-toggle="tab">베스트</a>
	</div>
	
	<div class="tab-content">
		<div class="tab-pane active" id="new">
		    <ul class="thumbnails">
		        <li class="span3">
		            <div class="thumbnail-style thumbnail-kenburn">
		            	<div class="thumbnail-img">
		                    <div class="overflow-hidden"><img src="assets/img/thumbnail/1.jpg" alt="" /></div>
		                    <a class="btn-more hover-effect" href="#">read more +</a>					
		                </div>
		            </div>
		        </li>
		        <li class="span3">
		            <div class="thumbnail-style thumbnail-kenburn">
		            	<div class="thumbnail-img">
		                    <div class="overflow-hidden"><img src="assets/img/thumbnail/2.jpg" alt="" /></div>
		                    <a class="btn-more hover-effect" href="#">read more +</a>					
		                </div>
		            </div>
		        </li>
		        <li class="span3">
		            <div class="thumbnail-style thumbnail-kenburn">
		            	<div class="thumbnail-img">
		                    <div class="overflow-hidden"><img src="assets/img/thumbnail/3.jpg" alt="" /></div>
		                    <a class="btn-more hover-effect" href="#">read more +</a>					
		                </div>
		            </div>
		        </li>
		        <li class="span3">
		            <div class="thumbnail-style thumbnail-kenburn">
		            	<div class="thumbnail-img">
		                    <div class="overflow-hidden"><img src="assets/img/thumbnail/4.jpg" alt="" /></div>
		                    <a class="btn-more hover-effect" href="#">read more +</a>					
		                </div>
		            </div>
		        </li>
		    </ul><!--/thumbnails-->
		    <ul class="thumbnails">
		        <li class="span3">
		            <div class="thumbnail-style thumbnail-kenburn">
		            	<div class="thumbnail-img">
		                    <div class="overflow-hidden"><img src="assets/img/thumbnail/5.jpg" alt="" /></div>
		                    <a class="btn-more hover-effect" href="#">read more +</a>					
		                </div>
		            </div>
		        </li>
		        <li class="span3">
		            <div class="thumbnail-style thumbnail-kenburn">
		            	<div class="thumbnail-img">
		                    <div class="overflow-hidden"><img src="assets/img/thumbnail/6.jpg" alt="" /></div>
		                    <a class="btn-more hover-effect" href="#">read more +</a>					
		                </div>
		            </div>
		        </li>
		        <li class="span3">
		            <div class="thumbnail-style thumbnail-kenburn">
		            	<div class="thumbnail-img">
		                    <div class="overflow-hidden"><img src="assets/img/thumbnail/7.jpg" alt="" /></div>
		                    <a class="btn-more hover-effect" href="#">read more +</a>					
		                </div>
		            </div>
		        </li>
		        <li class="span3">
		            <div class="thumbnail-style thumbnail-kenburn">
		            	<div class="thumbnail-img">
		                    <div class="overflow-hidden"><img src="assets/img/thumbnail/8.jpg" alt="" /></div>
		                    <a class="btn-more hover-effect" href="#">read more +</a>					
		                </div>
		            </div>
		        </li>
		    </ul><!--/thumbnails-->
		</div>
		
		<!-- Best -->
		<div class="tab-pane" id="best">
			<ul class="thumbnails">
		        <li class="span3">
		            <div class="thumbnail-style thumbnail-kenburn">
		            	<div class="thumbnail-img">
		                    <div class="overflow-hidden"><img src="assets/img/thumbnail/10.jpg" alt="" /></div>
		                    <a class="btn-more hover-effect" href="#">read more +</a>					
		                </div>
		            </div>
		        </li>
		        <li class="span3">
		            <div class="thumbnail-style thumbnail-kenburn">
		            	<div class="thumbnail-img">
		                    <div class="overflow-hidden"><img src="assets/img/thumbnail/9.jpg" alt="" /></div>
		                    <a class="btn-more hover-effect" href="#">read more +</a>					
		                </div>
		            </div>
		        </li>
		        <li class="span3">
		            <div class="thumbnail-style thumbnail-kenburn">
		            	<div class="thumbnail-img">
		                    <div class="overflow-hidden"><img src="assets/img/thumbnail/8.jpg" alt="" /></div>
		                    <a class="btn-more hover-effect" href="#">read more +</a>					
		                </div>
		            </div>
		        </li>
		        <li class="span3">
		            <div class="thumbnail-style thumbnail-kenburn">
		            	<div class="thumbnail-img">
		                    <div class="overflow-hidden"><img src="assets/img/thumbnail/7.jpg" alt="" /></div>
		                    <a class="btn-more hover-effect" href="#">read more +</a>					
		                </div>
		            </div>
		        </li>
		    </ul><!--/thumbnails-->
		    <ul class="thumbnails">
		        <li class="span3">
		            <div class="thumbnail-style thumbnail-kenburn">
		            	<div class="thumbnail-img">
		                    <div class="overflow-hidden"><img src="assets/img/thumbnail/6.jpg" alt="" /></div>
		                    <a class="btn-more hover-effect" href="#">read more +</a>					
		                </div>
		            </div>
		        </li>
		        <li class="span3">
		            <div class="thumbnail-style thumbnail-kenburn">
		            	<div class="thumbnail-img">
		                    <div class="overflow-hidden"><img src="assets/img/thumbnail/5.jpg" alt="" /></div>
		                    <a class="btn-more hover-effect" href="#">read more +</a>					
		                </div>
		            </div>
		        </li>
		        <li class="span3">
		            <div class="thumbnail-style thumbnail-kenburn">
		            	<div class="thumbnail-img">
		                    <div class="overflow-hidden"><img src="assets/img/thumbnail/4.jpg" alt="" /></div>
		                    <a class="btn-more hover-effect" href="#">read more +</a>					
		                </div>
		            </div>
		        </li>
		        <li class="span3">
		            <div class="thumbnail-style thumbnail-kenburn">
		            	<div class="thumbnail-img">
		                    <div class="overflow-hidden"><img src="assets/img/thumbnail/3.jpg" alt="" /></div>
		                    <a class="btn-more hover-effect" href="#">read more +</a>					
		                </div>
		            </div>
		        </li>
		    </ul><!--/thumbnails-->
		</div>
		<!-- /Best -->
	</div>
	<!-- /tab works -->
	<img src="assets/img/banner/event_banner_1.JPG" class="img-rounded">
	
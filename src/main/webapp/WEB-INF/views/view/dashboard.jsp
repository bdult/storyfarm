<%@ page contentType="text/html" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<style>
section {
	margin-bottom: 20px;
}

section img {
	background-color: #dddddd;
}

section#noti .well {
	height: 200px;
}

section#noti .well-half {
	height: 90px;
}
</style>

<!-- SlidesJS Required: These styles are required if you'd like a responsive slideshow -->
<style>
  #slides {
    display: none
  }

  .container-slides {
    margin: 0 auto
  }

  /* For tablets & smart phones */
  @media (max-width: 767px) {
    body {
      padding-left: 20px;
      padding-right: 20px;
    }
    .container-slides {
      width: auto
    }
  }

  /* For smartphones */
  @media (max-width: 480px) {
    .container-slides {
      width: auto
    }
  }

  /* For smaller displays like laptops */
  @media (min-width: 768px) and (max-width: 979px) {
    .container-slides {
      width: 724px
    }
  }

  /* For larger displays */
  @media (min-width: 1200px) {
    .container-slides {
      width: 1170px
    }
  }
</style>
<!-- SlidesJS Required: -->

<section id="brand">
		<div class="row">
		  <div class="col-lg-1">
		  	<a href="#" class="slidesjs-previous slidesjs-navigation"><i class="icon-chevron-left icon-3x"></i></a>
		  </div>
<div class="container-slides">
	<div id="slides">
		<div class="slide">
			  <c:forEach begin="1" end="5" varStatus="status">
			    <div class="col-lg-2">
			    	<c:forEach begin="1" end="2">
					  	<div class="row">
					  		<div class="col-lg-12">
							    <a href="${ contextPath }/brand.do" class="thumbnail">
							      <img style="width: 100%; height: 130px;" alt="브랜드 배너 영역 ${ status.count }">
							    </a>
					  		</div>
					  	</div>
					  	<br />
			    	</c:forEach>
				  </div>
		   	</c:forEach>
		</div>
		<div class="slide">
			  <c:forEach begin="1" end="5" varStatus="status">
			    <div class="col-lg-2">
			    	<c:forEach begin="1" end="2">
					  	<div class="row">
					  		<div class="col-lg-12">
							    <a href="${ contextPath }/brand.do" class="thumbnail">
							      <img style="width: 100%; height: 130px;" alt="브랜드 배너 영역 ${ status.count }">
							    </a>
					  		</div>
					  	</div>
					  	<br />
			    	</c:forEach>
				  </div>
		   	</c:forEach>
		</div>
	</div>
</div>
		  <div class="col-lg-1">
		  	<a href="#" class="slidesjs-next slidesjs-navigation"><i class="icon-chevron-right icon-3x"></i></a>
		  </div>
		</div>
<hr />
</section>
	

<section id="contents">
	<div class="row">
		<div class="col-lg-12">
			<div class="btn-group pull-left">
			  <button type="button" class="btn btn-default btn-primary">신작</button>
			  <button type="button" class="btn btn-default">베스트</button>
			</div>
			<div class="btn-group pull-right">
			  <button type="button" class="btn btn-default btn-primary"><i class="icon-th-large"></i></button>
			  <button type="button" class="btn btn-default"><i class="icon-th-list"></i></button>
			</div>
		</div>
	</div>
	
	<br />
	
	<div class="row">
	
		<c:forEach begin="1" end="6" varStatus="status">
		  <div class="col-lg-2">
		  
		  	<c:forEach begin="1" end="2">
			  	<div class="row">
						<div class="col-lg-12">
					    <div class="thumbnail">
					      <img style="width: 100%; height: 130px;" alt="콘텐츠 배너 영역 ${ status.count }">
					      <div class="caption">
					        <p>설명</p>
					      </div>
					    </div>
						</div>
					</div>
					<br />
		  	</c:forEach>
		  	
		  </div>
		</c:forEach>
		
	</div>
</section>

<section id="recommend">
	<div class="row">
		<div class="col-lg-12">
			<button type="button" class="btn btn-default btn-lg btn-primary">1-2세<br /> 추천</button>
			<button type="button" class="btn btn-default btn-lg">3-4세<br /> 추천</button>
			<button type="button" class="btn btn-default btn-lg">5-6세<br /> 추천</button>
		</div>
	</div>
	
	<br />
	
	<div class="row">
	
		<c:forEach begin="1" end="6" varStatus="status">
		  <div class="col-lg-2">

		  	<c:forEach begin="1" end="3">
			  	<div class="row">
						<div class="col-lg-12">
					    <div class="thumbnail">
					      <img style="width: 100%; height: 130px;" alt="추천 배너 영역 ${ status.count }">
					      <div class="caption">
					        <p>설명</p>
					      </div>
					    </div>
						</div>
					</div>
					<br />
		  	</c:forEach>
		  	
		  </div>
		</c:forEach>
		
	</div>
</section>

<section id="noti">
	<div class="row">
		<div class="col-lg-4">
			<div class="well">
				이벤트 배너영역
			</div>
		</div>
		<div class="col-lg-4">
			<div class="row">
				<div class="col-lg-6">
					<div class="well well-half">
						부모방
					</div>
				</div>
				<div class="col-lg-6">
					<div class="well well-half">
						우리아이
						<br />
						공부방법 공유
					</div>
				</div>
			</div>
			<div class="row">
				<div class="col-lg-6">
					<div class="well well-half">
						유료회원
						<br />
						가입하기
					</div>
				</div>
				<div class="col-lg-6">
					<div class="well well-half">
						스토리팜
						<br />
						소개
					</div>
				</div>
			</div>
			
		</div>
		<div class="col-lg-4">
			<div class="well">
				<h4>공지사항</h4>
				<ul>
					<li>스토리팜 오픈이벤트</li>
					<li>신규가입 이벤트 당첨자확인</li>
					<li>신규동영상 업데이트 확인</li>
					<li>프로젝트 업데이트</li>
				</ul>
			</div>
		</div>
	</div>
</section>

<script>
	$("#slides").slidesjs({
		width: 500,
		height: 300,
		pagination: {
		      active: true,
		        // [boolean] Create pagination items.
		        // You cannot use your own pagination. Sorry.
		      effect: "slide"
		        // [string] Can be either "slide" or "fade".
		    },
    navigation: {
        active: false,
          // [boolean] Generates next and previous buttons.
          // You can set to false and use your own buttons.
          // User defined buttons must have the following:
          // previous button: class="slidesjs-previous slidesjs-navigation"
          // next button: class="slidesjs-next slidesjs-navigation"
        effect: "slide"
          // [string] Can be either "slide" or "fade".
      }
		    
	});
</script>
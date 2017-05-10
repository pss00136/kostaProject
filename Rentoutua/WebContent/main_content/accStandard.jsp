<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title></title>

	<!-- JQuery -->
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<!-- 		<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.9.1/jquery.min.js"></script> -->
<!-- 		<script>window.jQuery || document.write('<script src="./js_acc/jquery-1.9.1.min.js"><\/script>')</script> -->
		
	<!-- JS -->
		<script type="text/javascript" src="./js_acc/jquery.tabslet.min.js"></script>
		<script type="text/javascript" src="./js_acc/rainbow-custom.min.js"></script>
		<script type="text/javascript" src="./js_acc/jquery.anchor.js"></script>
		<script src="./js_acc/initializers.js"></script>
		
	<!-- JS ends -->
	
	<!-- Plugin -->
		<script type="text/javascript" src='./js_acc/jquery-ui-1.10.0.custom.min.js'></script>
		<script type="text/javascript" src="./js/jquery.bxslider.min.js"></script>

	<!-- MODERNIZR -->
		 <script type="text/javascript" src="./js_acc/modernizr.custom.js"></script>

	<!-- User-->
	<script type="text/javascript">
	(function ($) {
		$(document).ready(function(){
			$('#info').tabs({
				active : 1,
				heightStyle : 'auto',
				hide : true,
				show : true
			});
		/*
		active : 열어둔 패널의 순번
		heightStyle : 각 패널의 높이
		hide : 숨길 때 애니메이션 효과
		show : 보일 때 애니메이션 효과
		*/
			var slider = $('.bxslider').bxSlider({
				  mode: 'fade'
				});
				$('#slider-next').click(function(){
				  slider.goToNextSlide();
				  return false;
				});
				$('#slider-count').click(function(){
				  var count = slider.getSlideCount();
				  alert('Slide count: ' + count);
				  return false;
				});
				
				
// 			$(document).ready(function(){
// 				  $('.slider1').bxSlider({
// 				    slideWidth: 800,
// 				    minSlides: 1,
// 				    maxSlides: 1,
// 				    slideMargin: 10
// 				  });
// 				});
// 			$(document).ready(function(){
// 				  $('.slider2').bxSlider({
// 				    slideWidth: 800,
// 				    minSlides: 1,
// 				    maxSlides: 1,
// 				    slideMargin: 10
// 				  });
// 				});
		});
	
	})(jQuery);
	</script>
  <!-- STYLES -->
  <link href='http://fonts.googleapis.com/css?family=Open+Sans:400,300,600,700,800' rel='stylesheet' type='text/css'>
  <link rel="stylesheet" type="text/css" href="./css_acc/normalize.css">
  <link rel="stylesheet" type="text/css" href="./css_acc/skeleton.css">
  <link rel="stylesheet" type="text/css" href="./css_acc/styles.css">
  <link rel="stylesheet" type="text/css" href="./css_acc/github.css">
  
  <link rel="stylesheet" href="css/jquery.bxslider.css">

  <meta prefix="og: http://ogp.me/ns#" property="og:title" content="Tabslet jQuery plugin" />
  <meta prefix="og: http://ogp.me/ns#" property="og:type" content="website" />
  <meta prefix="og: http://ogp.me/ns#" property="og:image" content="http://vdw.github.io/Tabslet/images/tabslet_logo_single_color_150.png" />
  <meta prefix="og: http://ogp.me/ns#" property="og:url" content="http://vdw.github.io/Tabslet/" />

<style type="text/css" >
#roomTab{
	position : relative;
	top:100px;
	width:65%;
	margin:0 auto;
}

#accName{
	font-size: 40px;
	font-family: "Open Sans", helvetica, arial, sans-serif;
}


</style>
</head>
<body>
<!-- 헤더 연결 -->
<jsp:include page="header.jsp"></jsp:include>

	<div class="row" id="roomTab" >
        <div class="twelve columns">
          <article>
            <h4 id="accName" >Standard</h4>
            <p class="sub_txt">바쁜 비즈니스맨의 피로를 풀 수 있는 편안하고 합리적인 공간으로 비즈니스를 위한 최적의 휴식을 제공합니다.</p>
            <div class='tabs tabs_default'>
              <ul class='horizontal'>
                <li><a href="#tab-1">Single</a></li>
                <li><a href="#tab-2">Twin</a></li>
                <li><a href="#tab-3">Family twin</a></li>
                <li><a href="#tab-4">Family triple</a></li>
              </ul>
              
              
              <div id='tab-1'>
              	<ul class="bxslider">
              		  <li><img src="./images/rooms/standard_single_img01.jpg" /></li>
					  <li><img src="./images/rooms/standard_single_img02.jpg" /></li>
					  <li><img src="./images/rooms/standard_single_img03.jpg" /></li>
				 </ul>
			 </div>
             <div id='tab-2'>
              	<ul class="bxslider">
              		  <li><img src="./images/rooms/standard_twin_img01.jpg" /></li>
					  <li><img src="./images/rooms/standard_twin_img02.jpg" /></li>
					  <li><img src="./images/rooms/standard_twin_img03.jpg" /></li>
				 </ul>
			 </div>
              <div id='tab-3'>
              	<ul class="bxslider">
              		  <li><img src="./images/rooms/family_twin_img01.jpg" /></li>
					  <li><img src="./images/rooms/family_twin_img02.jpg" /></li>
					  <li><img src="./images/rooms/family_twin_img03.jpg" /></li>
					  <li><img src="./images/rooms/family_twin_img04.jpg" /></li>
				 </ul>
			 </div>
              <div id='tab-4'>
              <ul class="bxslider">
              		  <li><img src="./images/rooms/family_triple_img01.jpg" /></li>
					  <li><img src="./images/rooms/family_triple_img02.jpg" /></li>
					  <li><img src="./images/rooms/family_triple_img03.jpg" /></li>
				 </ul>
				 </div>
            </div>
          </article>
        </div>
      </div>


</body>
</html>
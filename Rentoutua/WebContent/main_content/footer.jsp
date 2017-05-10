<%@ page contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

	<!-- bxslider -->
	<link rel="stylesheet" href="css/jquery.bxslider.css">
	
	<!-- bxslider -->
	<script type="text/javascript" src="js/jquery.bxslider.min.js"></script>
	<script type="text/javascript">
		$(document).ready(function(){
		  $('.slider1').bxSlider({
		    slideWidth: 300,
		    minSlides: 3,
		    maxSlides: 3,
		    slideMargin: 10
		  });
		});
	</script>
</head>
<body>
	<div id="footer">
		<div class="slider1" id="bx_slider">
	 		<div class="slide"><img src="http://placehold.it/350x150&text=FooBar1"></div>
	  		<div class="slide"><img src="http://placehold.it/350x150&text=FooBar2"></div>
	  		<div class="slide"><img src="http://placehold.it/350x150&text=FooBar3"></div>
	  		<div class="slide"><img src="http://placehold.it/350x150&text=FooBar4"></div>
	  		<div class="slide"><img src="http://placehold.it/350x150&text=FooBar5"></div>
	  		<div class="slide"><img src="http://placehold.it/350x150&text=FooBar6"></div>
		</div>
	</div> 
</body>
</html>
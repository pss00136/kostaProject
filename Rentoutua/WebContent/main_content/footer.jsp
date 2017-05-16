<%@ page contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="java.util.*"%>
<%@page import="hotel.model.Eventinfo"%>
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
		    slideWidth: 200,
		    minSlides: 3,
		    maxSlides: 5,
		    slideMargin: 10
		  });
		});
	</script>

</head>
<body>
	<div id="footer">
		<div class="slider1" id="bx_slider">
			<div class="slide"><a href="rentoutua.event?cmd=eventinfo-view&evNum=37"><img src="/Rentoutua/upload/promo_1_thumb.jpg"></a></div>
	 		<div class="slide"><a href="rentoutua.event?cmd=eventinfo-view&evNum=36"><img src="/Rentoutua/upload/HOTEL_20170411170439.jpg"></a></div>
	 		<div class="slide"><a href="rentoutua.event?cmd=eventinfo-view&evNum=35"><img src="/Rentoutua/upload/HOTEL_20170330160330.jpg"></a></div>
	 		<div class="slide"><a href="rentoutua.event?cmd=eventinfo-view&evNum=34"><img src="/Rentoutua/upload/HOTEL_20170306100336.jpg"></a></div>
	 		<div class="slide"><a href="rentoutua.event?cmd=eventinfo-view&evNum=33"><img src="/Rentoutua/upload/HOTEL_20170331150332.jpg"></a></div>
			<div class="slide"><a href="rentoutua.event?cmd=eventinfo-view&evNum=32"><img src="/Rentoutua/upload/HOTEL_20161013161036.jpg"></a></div>
		</div>
	</div> 
</body>
</html>
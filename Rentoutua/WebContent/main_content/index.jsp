<%@ page contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE HTML>
<!--
	Asymmetry by gettemplates.co
	Twitter: http://twitter.com/gettemplateco
	URL: http://gettemplates.co
-->
<html>
	<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<title>Rentoutua</title>

  	<!-- Facebook and Twitter integration -->
	<meta property="og:title" content=""/>
	<meta property="og:image" content=""/>
	<meta property="og:url" content=""/>
	<meta property="og:site_name" content=""/>
	<meta property="og:description" content=""/>
	<meta name="twitter:title" content="" />
	<meta name="twitter:image" content="" />
	<meta name="twitter:url" content="" />
	<meta name="twitter:card" content="" />

	<!-- <link href="https://fonts.googleapis.com/css?family=Droid+Sans" rel="stylesheet"> -->
	
	<!-- Animate.css -->
	<link rel="stylesheet" href="css/animate.css">
	<!-- Icomoon Icon Fonts-->
	<link rel="stylesheet" href="css/icomoon.css">
	<!-- Themify Icons-->
	<link rel="stylesheet" href="css/themify-icons.css">
	<!-- Bootstrap  -->
	<link rel="stylesheet" href="css/bootstrap.css">
	<!-- Magnific Popup -->
	<link rel="stylesheet" href="css/magnific-popup.css">
	<!-- Owl Carousel  -->
	<link rel="stylesheet" href="css/owl.carousel.min.css">
	<link rel="stylesheet" href="css/owl.theme.default.min.css">
	<!-- Flexslider -->
	<link rel="stylesheet" href="css/flexslider.css">
	<!-- Theme style  -->
	<link rel="stylesheet" href="css/style.css">

	<!-- Modernizr JS -->
	<script src="js/modernizr-2.6.2.min.js"></script>
	
	
	
	
	<!-- ******새로 추가******* -->
	
	<!-- fullpage -->
	<link rel="stylesheet" href="css/jquery.fullPage.css">
	<link rel="stylesheet" href="css/fullpage.examples.css">
	
	<!-- bxslider -->
	<link rel="stylesheet" href="css/jquery.bxslider.css">
	
	<!-- header css -->
	<link rel="stylesheet" href="css/header.style.css">
	
	<!-- *** Jquery *** -->
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
	<script src="https://ajax.googleapis.com/ajax/libs/jqueryui/1.12.1/jquery-ui.min.js"></script>
	
	<!-- *** Jquery plugin ***  -->
	<!-- fullpage -->
	<script type="text/javascript" src="js/scrolloverflow.js"></script>
	<script type="text/javascript" src="js/jquery.fullPage.js"></script>
	<script type="text/javascript" src="js/fullpage_examples.js"></script>
	<script type="text/javascript">
		$(document).ready(function() {
			$('#fullpage').fullpage({
				sectionsColor: ['#f2f2f2', '#4BBFC3', '#7BAABE', 'whitesmoke', '#ccddff']

			});
		});
	</script>
	
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
	<!-- ************************************************************ -->

	
	<!-- FOR IE9 below -->
	<!--[if lt IE 9]>
	<script src="js/respond.min.js"></script>
	<![endif]-->

	</head>
	<body>
		<!-- 헤더 연결 -->
		<jsp:include page="header.jsp"></jsp:include>
	
			<div id="fullpage">
				<div class="section " id="section0">
					<div class="intro">
						<h1>Fixed elements</h1>
						<p>Create your own headers and footers</p>
					</div>
				</div>
				<div class="section" id="section1">
				    <h1>How to do it</h1>
					<p>
						You will need to place your header and footer outside the plugin's wrapper. 
						This way it won't move on scrolling. Take a look at the source code of this page.
					</p>
				</div>
				<div class="section" id="section2">
					<div class="intro">
						<h1>Enjoy it</h1>
					</div>
				</div>
				<div class="section" id="section3">
					<div class="intro">
						<h1>Enjoy it</h1>
					</div>
				</div>
			</div>
	<!-- 푸터 연결 -->
	<jsp:include page="footer.jsp"></jsp:include>

	<!-- jQuery Easing -->
	<script src="js/jquery.easing.1.3.js"></script>
	<!-- Bootstrap -->
	<script src="js/bootstrap.min.js"></script>
	<!-- Waypoints -->
	<script src="js/jquery.waypoints.min.js"></script>
	<!-- Carousel -->
	<script src="js/owl.carousel.min.js"></script>
	<!-- countTo -->
	<script src="js/jquery.countTo.js"></script>
	<!-- Flexslider -->
	<script src="js/jquery.flexslider-min.js"></script>
	<!-- Magnific Popup -->
	<script src="js/jquery.magnific-popup.min.js"></script>
	<script src="js/magnific-popup-options.js"></script>
	<!-- Main -->
	<script src="js/main.js"></script>

	</body>
</html>


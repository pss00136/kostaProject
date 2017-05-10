<%@ page contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	
	<!-- Animate.css -->
	<link rel="stylesheet" href="css/animate.css">
	<!-- Icomoon Icon Fonts-->
	<link rel="stylesheet" href="css/icomoon.css">
	<!-- Themify Icons-->
	<link rel="stylesheet" href="css/themify-icons.css">
	<!-- Bootstrap  -->
<!-- 	<link rel="stylesheet" href="css/bootstrap.css"> -->
	<link href="/Rentoutua/main_content/cssSJ/bootstrap.min.css" rel="stylesheet">
	<!-- Magnific Popup -->
	<link rel="stylesheet" href="css/magnific-popup.css">
	<!-- Owl Carousel  -->
	<link rel="stylesheet" href="css/owl.carousel.min.css">
	<link rel="stylesheet" href="css/owl.theme.default.min.css">
	<!-- Flexslider -->
	<link rel="stylesheet" href="css/flexslider.css">
	<!-- Theme style  -->
	<link rel="stylesheet" href="css/style.css">
	
	<!-- *** Jquery *** -->
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
	<script src="https://ajax.googleapis.com/ajax/libs/jqueryui/1.12.1/jquery-ui.min.js"></script>

	<!-- Modernizr JS -->
	<script src="js/modernizr-2.6.2.min.js"></script>
	
	<!-- slide menu -->
	<link rel="stylesheet" href="css/slide_menu.css">
	<!-- header css -->
	<link rel="stylesheet" href="css/header.style.css">


	

</head>
<body>
		<div id="header">
			<nav class="gtco-nav" role="navigation">
				<div class="gtco-container">
					<div class="row">
						<div id="maintitle" class="col-sm-2 col-xs-12">
							<div id="gtco-logo"><a href="index.jsp">Rentoutua <em>.</em></a></div>
						</div>
						<div class="dropdown">
							<button id="login_btn" class="btn btn-default"type="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">Login</button>
				  			<ul id="login-dp" class="dropdown-menu" role="menu">
								<li>
									 <div class="row">
											<div class="col-md-12">
												Login via
												 <form class="form" role="form" method="post" action="login" accept-charset="UTF-8" id="login-nav">
														<div class="form-group">
															 <label class="sr-only" for="exampleInputEmail2">Email address</label>
															 <input type="email" class="form-control" id="exampleInputEmail2" placeholder="Email address" required>
														</div>
														<div class="form-group">
															 <label class="sr-only" for="exampleInputPassword2">Password</label>
															 <input type="password" class="form-control" id="exampleInputPassword2" placeholder="Password" required>
				                                             <div class="help-block text-right"><a href="">Forget the password ?</a></div>
														</div>
														<div class="form-group">
															 <button type="submit" class="btn btn-primary btn-block">Sign in</button>
														</div>
												 </form>
											</div>
											<div class="bottom text-center">
												New here ? <a href="/Rentoutua/main_content/SignUp.jsp"><b>Join Us</b></a>
											</div>
									 </div>
								</li>
							</ul>
						</div>
						<div class="col-xs-10 text-right menu-1 main-nav">
							<ul>
								<li><a href="#" data-nav-section="services">Hotel Infomation</a></li>
								<li>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</li>
								<li><a href="#" data-nav-section="portfolio">Q&A</a></li>
								<li>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</li>
								<li><a href="#" data-nav-section="blog">Special Offer</a></li>
							</ul>
						</div>
					</div>
					
				</div>
				
				 <!-- Navigation -->
    <a id="menu-toggle" href="#" class="btn btn-dark btn-lg toggle">
    <span class="glyphicon glyphicon-book"></span>
    </a>
    <nav id="sidebar-wrapper">
        <ul class="sidebar-nav">
            <li class="sidebar-brand">
                <a href="#top"  onclick="$('#menu-close').click();" >Reservation</a>
            </li>
            <li>
                <a href="#top" onclick="$('#menu-close').click();" >Home</a>
            </li>
            <li>
                <a href="#about" onclick="$('#menu-close').click();" >About</a>
            </li>
            <li>
                <a href="#services" onclick = "$('#menu-close').click();" >Services</a>
            </li>
            <li>
                <a href="#portfolio" onclick="$('#menu-close').click();" >Portfolio</a>
            </li>
            <li>
                <a href="#contact" onclick="$('#menu-close').click();" >Contact</a>
            </li>
        </ul>
    </nav>
			</nav>
			
			
			
		</div>

<script>
    
 // Closes the sidebar menu
    $("#menu-close").click(function(e) {
        e.preventDefault();
        $("#sidebar-wrapper").toggleClass("active");
    });

    // Opens the sidebar menu
    $("#menu-toggle").click(function(e) {
        e.preventDefault();
        $("#sidebar-wrapper").toggleClass("active");
    });

</script>
	
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
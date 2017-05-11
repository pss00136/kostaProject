<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title></title>
	<!-- JQuery -->
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
	
	<!-- bxSlider Javascript file -->
	<script src="/Rentoutua/main_content/js/jquery.bxslider.min.js"></script>
	
	<!-- bxSlider CSS file -->
	<link href="/Rentoutua/main_content/css/jquery.bxslider.css" rel="stylesheet" />
		
	<!-- User-->
<script type="text/javascript">

(function($){
	$(document).ready(function(){
		$('ul.tabs li').click(function(){
			var tab_id = $(this).attr('data-tab');

			$('ul.tabs li').removeClass('current');
			$('.tab-content').removeClass('current');

			$(this).addClass('current');
			$("#"+tab_id).addClass('current');
		});
		
		$('.bxslider').bxSlider();
	});
})(jQuery);
	
</script>

<style type="text/css" >
	
	#rev_sel_content{
            position : relative;
            top:140px;
            width:65%;
            margin:0 auto;
    }
	
	body{
			margin-top: 100px;
			font-family: 'Trebuchet MS', serif;
			line-height: 1.6
		}
	.container{
		width: 800px;
		margin: 0 auto;
	}

	ul.tabs{
		margin: 0px;
		padding: 0px;
		list-style: none;
	}
	ul.tabs li{
		background: none;
		color: #222;
		display: inline-block;
		padding: 10px 15px;
		cursor: pointer;
	}

	ul.tabs li.current{
		background: #ededed;
		color: #222;
	}

	.tab-content{
		display: none;
		background: #ededed;
		padding: 15px;
	}

	.tab-content.current{
		display: inherit;
	}
</style>
</head>
<body>
<!-- 헤더 연결 -->
<jsp:include page="header.jsp"></jsp:include>

	<div id="rev_sel_content">
  		<h1>Standard</h1>
   			<hr/>
            <p class="sub_txt">바쁜 비즈니스맨의 피로를 풀 수 있는 편안하고 합리적인 공간으로 비즈니스를 위한 최적의 휴식을 제공합니다.</p>
		    
		    <div class="container">
				<ul class="tabs">
					<li class="tab-link current" data-tab="tab-1">d</li>
					<li class="tab-link" data-tab="tab-2">Tab Two</li>
					<li class="tab-link" data-tab="tab-3">Tab Three</li>
					<li class="tab-link" data-tab="tab-4">Tab Four</li>
				</ul>
			
				<div id="tab-1" class="tab-content current">
					<ul class="bxslider">
					  <li><img src="http://placehold.it/350x150" /></li>
					  <li><img src="/Rentoutua/main_content/images/rooms/standard_single_img02.jpg" /></li>
					  <li><img src="/Rentoutua/main_content/images/rooms/standard_single_img03.jpg" /></li>
					</ul>
				</div>
				<div id="tab-2" class="tab-content">
					 Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.
				</div>
				<div id="tab-3" class="tab-content">
					Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.
				</div>
				<div id="tab-4" class="tab-content">
					Sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.
				</div>
			</div>
<!-- 			container -->
	  </div>

</body>
</html>
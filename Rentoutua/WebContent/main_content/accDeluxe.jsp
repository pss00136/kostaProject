<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title></title>
	<!-- JQuery -->
		<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.9.1/jquery.min.js"></script>
		
	<!-- JS -->
		<script type="text/javascript" src="./js_acc/jquery.tabslet.min.js"></script>
		<script type="text/javascript" src="./js_acc/rainbow-custom.min.js"></script>
		<script type="text/javascript" src="./js_acc/jquery.anchor.js"></script>
		<script src="./js_acc/initializers.js"></script>
	<!-- JS ends -->

	<!-- Plugin -->
		<script type="text/javascript" src='./js_acc/jquery-ui-1.10.0.custom.min.js'></script>


	<!-- MODERNIZR -->
		 <script type="text/javascript" src="./js_acc/modernizr.custom.js"></script>

	<!-- User-->
		<script type="text/javascript">
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
		});


</script>
  <!-- STYLES -->
  <link href='http://fonts.googleapis.com/css?family=Open+Sans:400,300,600,700,800' rel='stylesheet' type='text/css'>
  <link rel="stylesheet" type="text/css" href="./css_acc/normalize.css">
  <link rel="stylesheet" type="text/css" href="./css_acc/skeleton.css">
  <link rel="stylesheet" type="text/css" href="./css_acc/styles.css">
  <link rel="stylesheet" type="text/css" href="./css_acc/github.css">

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
            <h4 id="accName" >Accommodation</h4>
            <div class='tabs tabs_default'>
              <ul class='horizontal'>
                <li><a href="#tab-1">Semi double</a></li>
                <li><a href="#tab-2">Double </a></li>
                <li><a href="#tab-3">Twin</a></li>
              </ul>
              <div id='tab-1'><span>This is the default tab functionality.</span></div>
              <div id='tab-2'><span>Tab 2</span></div>
              <div id='tab-3'><span>Tab 3</span></div>
            </div>
          </article>
        </div>
      </div>

</body>
</html>
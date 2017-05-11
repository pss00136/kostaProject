<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title></title>
<!-- Bootstrap -->
    <link href="/Rentoutua/main_content/cssSJ/bootstrap.min.css" rel="stylesheet">
    <!-- font awesome -->
    <link rel="stylesheet" href="/Rentoutua/main_content/cssSJ/font-awesome.min.css" media="screen" title="no title" charset="utf-8">
    <!-- Custom style -->
    <link rel="stylesheet" href="/Rentoutua/main_content/cssSJ/style.css" media="screen" title="no title" charset="utf-8">


	<!-- JQuery -->
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
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
	font-size : 40px;
	font-family : "Open Sans", helvetica, arial, sans-serif;
}
	
#st_single{ 
 	position : relative;
 	width : 10%;
 	margin:0 auto; 
 }
 
#st_twin{
	position : relative;
	width:20%;
	margin:0 auto;
}


.panel.with-nav-tabs .panel-heading{
    padding: 5px 5px 0 5px;
}
.panel.with-nav-tabs .nav-tabs{
	border-bottom: none;
}
.panel.with-nav-tabs .nav-justified{
	margin-bottom: -1px;
}
/********************************************************************/
/*** PANEL DEFAULT ***/
.with-nav-tabs.panel-default .nav-tabs > li > a,
.with-nav-tabs.panel-default .nav-tabs > li > a:hover,
.with-nav-tabs.panel-default .nav-tabs > li > a:focus {
    color: #777;
}
.with-nav-tabs.panel-default .nav-tabs > .open > a,
.with-nav-tabs.panel-default .nav-tabs > .open > a:hover,
.with-nav-tabs.panel-default .nav-tabs > .open > a:focus,
.with-nav-tabs.panel-default .nav-tabs > li > a:hover,
.with-nav-tabs.panel-default .nav-tabs > li > a:focus {
    color: #777;
	background-color: #ddd;
	border-color: transparent;
}
.with-nav-tabs.panel-default .nav-tabs > li.active > a,
.with-nav-tabs.panel-default .nav-tabs > li.active > a:hover,
.with-nav-tabs.panel-default .nav-tabs > li.active > a:focus {
	color: #555;
	background-color: #fff;
	border-color: #ddd;
	border-bottom-color: transparent;
}
.with-nav-tabs.panel-default .nav-tabs > li.dropdown .dropdown-menu {
    background-color: #f5f5f5;
    border-color: #ddd;
}
.with-nav-tabs.panel-default .nav-tabs > li.dropdown .dropdown-menu > li > a {
    color: #777;   
}
.with-nav-tabs.panel-default .nav-tabs > li.dropdown .dropdown-menu > li > a:hover,
.with-nav-tabs.panel-default .nav-tabs > li.dropdown .dropdown-menu > li > a:focus {
    background-color: #ddd;
}
.with-nav-tabs.panel-default .nav-tabs > li.dropdown .dropdown-menu > .active > a,
.with-nav-tabs.panel-default .nav-tabs > li.dropdown .dropdown-menu > .active > a:hover,
.with-nav-tabs.panel-default .nav-tabs > li.dropdown .dropdown-menu > .active > a:focus {
    color: #fff;
    background-color: #555;


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
		    
		    <div class="col-md-6">
		            <div class="panel with-nav-tabs panel-default">
		                <div class="panel-heading">
		                        <ul class="nav nav-tabs">
		                            <li class="active"><a href="#tab1default" data-toggle="tab">Default 1</a></li>
		                            <li><a href="#tab2default" data-toggle="tab">Default 2</a></li>
		                            <li><a href="#tab3default" data-toggle="tab">Default 3</a></li>
		                            <li class="dropdown">
		                                <a href="#" data-toggle="dropdown">Dropdown <span class="caret"></span></a>
		                                <ul class="dropdown-menu" role="menu">
		                                    <li><a href="#tab4default" data-toggle="tab">Default 4</a></li>
		                                    <li><a href="#tab5default" data-toggle="tab">Default 5</a></li>
		                                </ul>
		                            </li>
		                        </ul>
		                </div>
		                </div>
    		  </div>
            
            
            
            
            
<!--             <div class='tabs tabs_default'> -->
<!--               <ul class='horizontal'> -->
<!--                 <li><a href="#tab-1">Single</a></li> -->
<!--                 <li><a href="#tab-2">Twin</a></li> -->
<!--                 <li><a href="#tab-3">Family twin</a></li> -->
<!--                 <li><a href="#tab-4">Family triple</a></li> -->
<!--               </ul> -->
              
              
<!--               <div id='tab-1'> -->
<!--               	<ul> -->
<!--               		  <li id="st_single"><img src="./images/rooms/standard_single_img01.jpg"/></li> -->
<!-- <!-- 					  <li><img src="./images/rooms/standard_single_img02.jpg" /></li> --> 
<!-- <!-- 					  <li><img src="./images/rooms/standard_single_img03.jpg" /></li> --> 
<!-- 				 </ul> -->
<!-- 			 </div> -->
<!--              <div id='tab-2'> -->
<!--               	<ul> -->
<!--               		  <li id="st_twin"><img src="./images/rooms/standard_twin_img01.jpg" /></li> -->
<!-- <!-- 					  <li><img src="./images/rooms/standard_twin_img02.jpg" /></li> --> 
<!-- <!-- 					  <li><img src="./images/rooms/standard_twin_img03.jpg" /></li> --> 
<!-- 				 </ul> -->
<!-- 			 </div> -->
<!--               <div id='tab-3'> -->
<!--               	<ul> -->
<!--               		  <li><img src="./images/rooms/family_twin_img01.jpg" /></li> -->
<!-- <!-- 					  <li><img src="./images/rooms/family_twin_img02.jpg" /></li> --> 
<!-- <!-- 					  <li><img src="./images/rooms/family_twin_img03.jpg" /></li> --> 
<!-- <!-- 					  <li><img src="./images/rooms/family_twin_img04.jpg" /></li> --> 
<!-- 				 </ul> -->
<!-- 			 </div> -->
<!--               <div id='tab-4'> -->
<!--               <ul> -->
<!--               		  <li><img src="./images/rooms/family_triple_img01.jpg" /></li> -->
<!-- <!-- 					  <li><img src="./images/rooms/family_triple_img02.jpg" /></li> --> 
<!-- <!-- 					  <li><img src="./images/rooms/family_triple_img03.jpg" /></li> --> 
<!-- 				 </ul> -->
<!-- 				 </div> -->
<!--             </div> -->
          </article>
        </div>
	  </div>
        


</body>
</html>
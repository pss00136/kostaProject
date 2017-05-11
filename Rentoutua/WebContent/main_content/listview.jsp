<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<!-- Bootstrap -->
    <link href="/Rentoutua/main_content/cssSJ/bootstrap.min.css" rel="stylesheet">
    <!-- font awesome -->
    <link rel="stylesheet" href="/Rentoutua/main_content/cssSJ/font-awesome.min.css" media="screen" title="no title" charset="utf-8">
    <!-- Custom style -->
    <link rel="stylesheet" href="/Rentoutua/main_content/cssSJ/style.css" media="screen" title="no title" charset="utf-8">

<style type="text/css">
.form-groups{
	position: relative;
	top: 100px;
	margin: 0 auto;
	width: 65%;
}
</style>
<!-- jQuery (necessary for Bootstrap's JavaScript plugins)  -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
<!-- *** Jquery *** -->
<!-- 	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script> -->
	<script src="https://ajax.googleapis.com/ajax/libs/jqueryui/1.12.1/jquery-ui.min.js"></script>
<!-- Include all compiled plugins (below), or include individual files as needed -->
<!-- <script src="/Rentoutua/main_content/js/bootstrap.min.js"></script> -->
</head>
<body>
<!-- 헤더 연결 -->
<jsp:include page="header.jsp"></jsp:include>
	<div class="form-groups">
	<div id="container" style="padding-top: 0px;">
		<section class="sub_section">
		<div class="sub_content">
			<h3>Promotion</h3>
			<p class="sub_txt control-label">레또뚜아 호텔만의 다양한 프로모션 상품을 경험해 보시기 바랍니다.</p>

			<div class="so_view_wr">
				<div class="so_view_tit">
					<p class="tit control-label">한식당 '잠보' 모듬생선구이 정식</p>
					<p class="info">
						<br>2017-04-13~
					</p>
				</div>
				<div class="so_view_con">
					<p class="img"></p>
					<p></p>
					<p style="text-align: center">
						<img src="/Rentoutua/main_content/images/special.jpg"
							alt="/Rentoutua/main_content/images/special.jpg" &nbsp;="">
					</p>
					<p>&nbsp;</p>
					<p></p>
				</div>
				<div class="btn_wr">
					<a href="/special/promotion.php?page=" class="btn_list">목록</a>
				</div>
			</div>
			<!-- // pager_wrap -->
		</div>
		</section>
	</div>
	</div>
	<!-- // container -->
</body>
</html>
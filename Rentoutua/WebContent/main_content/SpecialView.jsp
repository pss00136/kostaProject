<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@page import="hotel.model.Eventinfo"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
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
<% 
	Eventinfo event = (Eventinfo)request.getAttribute("event");
%>
</head>
<body>
<!-- 헤더 연결 -->
<jsp:include page="header.jsp"></jsp:include>
	<div class="form-groups">
	<div id="container" style="padding-top: 0px;">
		<section class="sub_section">
		<div class="sub_content">
			<br/>
			<div class="so_view_wr">
				<div class="so_view_tit">
					<p class="tit control-label"><%= event.getEvTitle()%></p>
					<p class="info">
						<br><%= event.getEvDate() %>
					</p>
				</div>
				<div class="so_view_con">
					<p class="img"></p>
					<p></p>
					<p style="text-align: center">
						<img src="<%=event.getImagePath()%>">
					</p>
					<p><%=event.getEvContents()%></p>
					<p></p>
				</div>
				<div class="btn_wr">
					<a href="rentoutua.event?cmd=eventinfo-list" class="btn_list">목록</a>
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
<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Insert title here</title>
<link href="cssSJ/bootstrap.min.css" rel="stylesheet">
<link href="cssSJ/navBar.css" rel="stylesheet">
<link href="cssSJ/mypageReservation.css" rel="stylesheet">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>
<script type="text/javascript" src="js/mypageReservation.js"></script>
<script type="text/javascript" src="js/navBar.js"></script>

<style type="text/css">
#container_panel_left{
	position: relative;
	top: 100px;
	margin: 0 auto;
	width: 65%;
}
</style>

</head>
<body>
<!-- 헤더 연결 -->
<jsp:include page="header.jsp"></jsp:include>
<!-- 
User Profile Sidebar by @keenthemes
A component of Metronic Theme - #1 Selling Bootstrap 3 Admin Theme in Themeforest: http://j.mp/metronictheme
Licensed under MIT
-->

<div id="container_panel_left" class="container">
    <div class="row profile">
		<div class="col-md-3">
			<div class="profile-sidebar">
			<div class="profile-usertitle">
					<div class="profile-usertitle-name">
						레또뚜아 호텔
					</div>
					<div class="profile-usertitle-job">
						마이페이지 
					</div>
				</div>
				<div class="profile-usermenu">
					<ul class="nav">
						<li>
							<a href="mypageMember.jsp">
							개인정보 </a>
						</li>
						<li class="active">
							<a href="mypageReservation.jsp">
							예약현황 </a>
						</li>
						
						<li>
							<a href="mypageQnA.jsp" >
							문의현황 </a>
						</li>
					</ul>
				</div>
				<!-- END MENU -->
			</div>
		</div>
		
		<div class="col-md-9">
			  <div class="row">
<!-- 			<div -->
<!-- 				class="col-xs-12 col-sm-12 col-md-6 col-lg-6 col-xs-offset-0 col-sm-offset-0 col-md-offset-3 col-lg-offset-3 toppad"> -->

		<section class="content">
		<div class="panel panel-info">
					<div class="panel-heading">
						<h3 class="panel-title">예약현황</h3>
					</div>
				<div class="panel-body">
			<div class="col-md-12 col-md-offset-0">
				
						<div class="pull-right">
							<div class="btn-group">
								<button type="button" class="btn btn-success btn-filter" data-target="pagado">예약중</button>
								<button type="button" class="btn btn-warning btn-filter" data-target="pendiente">예약확인중</button>
								<button type="button" class="btn btn-danger btn-filter" data-target="cancelado">예약취소</button>
								<button type="button" class="btn btn-default btn-filter" data-target="all">전체목록</button>
							</div>
						</div>
						<div class="table-container">
							<table class="table table-filter">
								<tbody>
									<tr data-status="pagado">
										<td>
											<a href="javascript:;" class="star">5
											</a>
										</td>
										<td>
											<div class="media">
												<div class="media-con">
													<span class="media-meta pull-right">2017년 5월 11일</span>
													<h4 class="title">
														스탠다드 룸 101호
														<span class="pull-right pagado">(예약중)</span>
													</h4>
												</div>
											</div>
										</td>
									</tr>
									<tr data-status="pendiente">
										<td>
											<a href="javascript:;" class="star">4
											</a>
										</td>
										<td>
											<div class="media">
												<div class="media-con">
													<span class="media-meta pull-right">2017년 5월 10일</span>
													<h4 class="title">
														스탠다드 룸 102호
														<span class="pull-right pendiente">(예약확인중)</span>
													</h4>
												</div>
											</div>
										</td>
									</tr>
									<tr data-status="cancelado">
										<td>
											<a href="javascript:;" class="star">3
											</a>
										</td>
										<td>
											<div class="media">
												<div class="media-con">
													<span class="media-meta pull-right">2017년 5월 9일</span>
													<h4 class="title">
														스탠다드 룸 201호
														<span class="pull-right cancelado">(예약취소)</span>
													</h4>
												</div>
											</div>
										</td>
									</tr>
									<tr data-status="pagado" >
										<td>
											<a href="javascript:;" class="star ">2
											</a>
										</td>
										<td>
											<div class="media">
												<div class="media-con">
													<span class="media-meta pull-right">2017년 5월 8일</span>
													<h4 class="title">
														디럭스 룸 202호
														<span class="pull-right pagado">(예약중)</span>
													</h4>
												</div>
											</div>
										</td> 
									</tr>
									<tr data-status="pendiente">
										<td>
											<a href="javascript:;" class="star">1
											</a>
										</td>
										<td>
											<div class="media">
												<div class="media-con">
													<span class="media-meta pull-right">2017년 5월 8일</span>
													<h4 class="title">
														럭셔리 룸 404호
														<span class="pull-right pendiente">(예약확인중)</span>
													</h4>
												</div>
											</div>
										</td>
									</tr>
								</tbody>
							</table>
						</div>
					</div>
			</div>
			</div>
		</section>
		
			</div>
<!-- 		</div> -->
		</div>
	</div>
<!-- Content End -->
<br>
<br>
</body>
</html>
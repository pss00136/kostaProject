<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Insert title here</title>
<link href="css/bootstrap.min.css" rel="stylesheet">
<link href="css/navBar.css" rel="stylesheet">
<link href="css/mypageQnA.css" rel="stylesheet">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>
<script type="text/javascript" src="js/mypageQnA.js"></script>
<script type="text/javascript" src="js/navBar.js"></script>
</head>
<body>
<!-- 
User Profile Sidebar by @keenthemes
A component of Metronic Theme - #1 Selling Bootstrap 3 Admin Theme in Themeforest: http://j.mp/metronictheme
Licensed under MIT
-->

<div class="container">
<!--     <div class="row profile"> -->
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
						<li >
							<a href="mypageReservation.jsp">
							예약현황 </a>
						</li>
						<li class="active">
							<a href="mypageQnA.jsp" >
							문의현황 </a>
						</li>
					</ul>
				</div>
				<!-- END MENU -->
			</div>
		</div>
		
<!-- 		<div class="col-md-9"> -->
			  <div class="row">
<!-- 			<div -->
<!-- 				class="col-xs-12 col-sm-12 col-md-6 col-lg-6 col-xs-offset-0 col-sm-offset-0 col-md-offset-3 col-lg-offset-3 toppad"> -->

		<section class="content">
		<div class="panel panel-info">
					<div class="panel-heading">
						<h3 class="panel-title">문의현황</h3>
					</div>
				<div class="panel-body">
			<div class="col-md-12 col-md-offset-0">
				 
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
												<div class="media-body">
													<span class="media-meta pull-right">2017년 5월 11일</span>
													<h4 class="title">
														가격문의드립니다
													</h4>
													<p class="summary">가격질문이요</p>
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
												<div class="media-body">
													<span class="media-meta pull-right">2017년 5월 10일</span>
													<h4 class="title">
														호텔이 너무 좋네요
													</h4>
													<p class="summary">사장님이 누구신가요?</p>
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
												<div class="media-body">
													<span class="media-meta pull-right">2017년 5월 9일</span>
													<h4 class="title">
														호텔 얼마인가요?
													</h4>
													<p class="summary">호텔 사고싶네요</p>
												</div>
											</div>
										</td>
									</tr>
									<tr data-status="pagado" class="selected">
										<td>
											<a href="javascript:;" class="star ">2
											</a>
										</td>
										<td>
											<div class="media">
												<div class="media-body">
													<span class="media-meta pull-right">2017년 5월 8일</span>
													<h4 class="title">
														제발
													</h4>
													<p class="summary">호텔에서 자고 싶어요</p>
												</div>
											</div>
										</td>
									</tr>
									<tr data-status="pendiente">
										<td>
											<a href="javascript:;" class="star ">1
											</a>
										</td>
										<td>
											<div class="media">
												<div class="media-body">
													<span class="media-meta pull-right">2017년 5월 8일</span>
													<h4 class="title">
														진짜...
													</h4>
													<p class="summary">최고입니다</p>
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
<!-- 		</div> -->
	</div>
	<!-- Content End -->
<br>
<br>
</body>
</html>
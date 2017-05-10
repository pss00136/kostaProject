<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Insert title here</title>
<link href="cssSJ/bootstrap.min.css" rel="stylesheet">
<link href="cssSJ/navBar.css" rel="stylesheet">
<link href="cssSJ/mypage.css" rel="stylesheet">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>
<script type="text/javascript" src="js/mypage.js"></script>
<script type="text/javascript" src="js/navBar.js"></script>
</head>
<body>
<!-- 
User Profile Sidebar by @keenthemes
A component of Metronic Theme - #1 Selling Bootstrap 3 Admin Theme in Themeforest: http://j.mp/metronictheme
Licensed under MIT
-->
<!-- navBar start -->
<div class="container">
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
						<li class="active">
							<a href="mypageMember.jsp">
							개인정보 </a>
						</li>
						<li >
							<a href="mypageReservation.jsp">
							예약현황 </a>
						</li>
						<li>
							<a href="mypageQnA.jsp">
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

<!-- Mypage Contents  -->
				<div class="panel panel-info">
					<div class="panel-heading">
						<h3 class="panel-title">개인정보</h3>
					</div>
					<div class="panel-body">
						<div class="row">

							<div class=" col-md-9 col-lg-9 ">
								<table class="table table-user-information">
									<tbody>
										<tr>
											<td>성명(한글):</td>
											<td><input class="form-control " id="inputFirstName" name="kName" type="text"></td>
										</tr>
										<tr>
											<td>First Name(이름):</td>
											<td><input class="form-control " id="inputFirstName" name="firstName" type="text"></td>
										</tr>
										<tr>
											<td>Last Name(성):</td>
											<td><input class="form-control " id="inputFirstName" name="lastName" type="text"></td>
										</tr>
										<tr>
											<td>비밀번호:</td>
											<td><input class="form-control" id="inputPassword" type="password" ></td>
										</tr>

										<tr>
											<td>비밀번호 확인:</td>
											<td><input class="form-control" id="inputPasswordCheck" type="password"s></td>
										</tr>
										<tr>
											<td>생년월일:</td>
											<td><input class="form-control" id="inputBirth" type="text"></td>
										</tr>
										<tr>
											<td>휴대폰번호:</td>
											<td><input type="tel" class="form-control" id="inputPhone" /></td>
										</tr>
										<tr>
											<td>전화번호:</td>
											<td><input type="tel" class="form-control" id="inputTel" /></td>
										</tr>
									</tbody>
								</table>

							</div>
						</div>
					</div>
					<div class="panel-footer">
						<a data-original-title="Broadcast Message" data-toggle="tooltip"
							type="button" class="btn btn-sm btn-primary"><i
							class="glyphicon glyphicon-envelope"></i></a> <span
							class="pull-right"> <a href="edit.html"
							data-original-title="Edit this user" data-toggle="tooltip"
							type="button" class="btn btn-sm btn-warning">수정하기</a> <a
							data-original-title="Remove this user" data-toggle="tooltip"
							type="button" class="btn btn-sm btn-danger">삭제하기</a>
						</span>
					</div>

				</div>
<!-- 			</div> -->
		</div>
		</div>
	</div>
</div>
<!-- Content End -->
<br>
<br>
</body>
</html>
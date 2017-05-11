<%@ page contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<!-- Bootstrap  -->
	<link rel="stylesheet" href="css/bootstrap.css">
	
	<!-- *** Jquery *** -->
<!-- 	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script> -->
	<!-- Bootstrap  -->
<!-- 	<script src="js/bootstrap.min.js"></script> -->
	
	<style type="text/css">
		#rev_sel_content{
				position : relative;
				top:140px;
				width:65%;
				margin:0 auto;
		}
		.room_title{
			width: 50%;
			max-width: 700px;
			text-align: center;
		}
		.room_text{
			width: 35%;
			max-width: 400px;
		}
		.room_select{
			width: 15%;
			max-width: 140px;
		}
		#room_table td{
			vertical-align:middle;
			margin: auto;
		}
		#room_table th{
			text-align: center;
			vertical-align:middle;
		}
		#breakfast_text{
			width: 90%;
		}
		.room_price{
			float: right;
		}
		#total_price{
			float: right;
		}
		#td_rev_btn{
			text-align: center;
			vertical-align:middle;
		}
		
	</style>
</head>
<body>
	<!-- 헤더 연결 -->
	<jsp:include page="header.jsp"></jsp:include>
<div id="rev_sel_content">
	<h1>객실 선택</h1>
	<hr/>
	<div class="table-responsive">
		<table id="room_table" class="table table-condensed table-bordered">
			<thead>
	            <tr>
	                <th>객실 명</th>
	                <th>객실 설명</th>
	                <th>선택하기</th>
	            </tr>
	        </thead>
				<tr>
					<td class="room_title">
						<h4 class="cta-title">Standard 싱글</h4>
						<img src="http://placehold.it/500x300" />
					</td>
					<td class="room_text">
						<p>
							침대 : 싱글<br/>
							조식 포함되지 않음<br/>
							호텔에서 결제<br/>
							1박 1인
						</p>
						<hr/>
						<h3 class="cta-title room_price">ㅇㅇㅇㅇ원</h3>	
					</td>
					<td class="room_select">
						<button type="submit" class="btn btn-primary btn-block">선택하기</button>
					</td>
					
				</tr>
				<tr>
					<td class="room_title">
						<h4>Deluxe</h4>
						<img src="http://placehold.it/500x300" />
					</td>
					<td class="room_text">
						<p>
							침대 : 싱글<br/>
							조식 포함되지 않음<br/>
							호텔에서 결제<br/>
							1박 1인
						</p>
						<hr/>
						<h3 class="cta-title room_price">ㅇㅇㅇㅇ원</h3>	
					</td>
					<td class="room_select">
						<button type="submit" class="btn btn-primary btn-block">선택하기</button>
					</td>
					
				</tr>
				<tr>
					<td class="room_title">
						<h4>Suite</h4>
						<img src="http://placehold.it/500x300" />
					</td>
					<td class="room_text">
						<p>
							침대 : 싱글<br/>
							조식 포함되지 않음<br/>
							호텔에서 결제<br/>
							1박 1인
						</p>
						<hr/>
						<h3 class="cta-title room_price">ㅇㅇㅇㅇ원</h3>	
					</td>
					<td class="room_select">
						<button type="submit" class="btn btn-primary btn-block">선택하기</button>
					</td>			
				</tr>
		</table>
	</div>
	<div class="table-responsive">
		<br/>
		<h2>옵션 선택</h2>
		<table id="option_table" class="table table-condensed">
			<tr>
				<td id="breakfast_text">조식 포함 &nbsp;&nbsp;&nbsp;&nbsp; <label>00000원</label></td>
				<td><label>선택</label></td>
				<td>
					<input type="checkbox" />
				</td>
			</tr>
			<tr>
				<td id="td_total_price" colspan="3">
					<br/><br/>
					<h2 id="total_price">총 금액: 1111111원</h2>
				</td>
			</tr>
			<tr>
				<td id="td_rev_btn" colspan="3">
					<p>
						<br/>
						<button id="btn_reservation" type="submit" class="btn btn-success btn-lg">예약하기</button>
					</p>
				</td>
			</tr>		
		</table>
	</div>

</div>

    <!-- 푸터 연결 -->
	<jsp:include page="footer2.jsp"></jsp:include>
</body>
</html>
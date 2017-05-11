<%@ page contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title></title>
	<!-- Bootstrap  -->
	<link rel="stylesheet" href="css/bootstrap.css">
	
	<style type="text/css">
		#reservation_main{
			position: relative;
			top: 150px;
			margin: 0 auto;
			width: 55%;
		}
		#reservation_info{
			background-color: #f0f0f0;
		}
		#div_reservation_btn{
			text-align: center;
		}
	
	</style>
</head>
<body>
<!-- 헤더 연결 -->
<jsp:include page="header.jsp"></jsp:include>

<div class="container" id="reservation_main">
			<!-- 예약 객실 및 날짜 정보 -->
            <div class="row">
            	<div class="col-md-12">
                    <div class="well-block" id="reservation_info">
                        <div class="well-title">
                            <h2>예약 정보</h2>
                        </div>
                        <div class="feature-block">
                            <div class="feature feature-blurb-text">
                                <h4 class="feature-title">지점: 레또뚜아 ㅇㅇ지점</h4>
                                <div class="feature-content">
                                    <p>Integer nec nisi sed mi hendrerit mattis. Vestibulum mi nunc, ultricies quis vehicula et, iaculis in magnestibulum.</p>
                                </div>
                            </div>
                            <div class="feature feature-blurb-text">
                                <h4 class="feature-title">Experienced Staff Available</h4>
                                <div class="feature-content">
                                    <p>Aliquam sit amet mi eu libero fermentum bibendum pulvinar a turpis. Vestibulum quis feugiat risus. </p>
                                </div>
                            </div>
                            <div class="feature feature-blurb-text">
                                <h4 class="feature-title">Low Price & Fees</h4>
                                <div class="feature-content">
                                    <p>Praesent eu sollicitudin nunc. Cras malesuada vel nisi consequat pretium. Integer auctor elementum nulla suscipit in.</p>
                                </div>
                            </div>
                        </div>
                    </div>
                </div> 
            </div>
            <br/>
            <div class="row">
            	<!-- 게스트 정보 입력 박스 -->
                <div class="col-md-6">
                    <div class="well-block">
                        <div class="well-title">
                            <h2>게스트 정보</h2>
                        </div>
                        <form>
                            <!-- Form start -->       
                            <div class="row">
                                <!-- Text input-->
                                <div class="col-md-12">
                                    <div class="form-group">
                                        <label class="control-label" for="email">Email(이메일)</label>
                                        <input id="email" name="email" type="text" placeholder="E-Mail" class="form-control input-md">
                                    </div>
                                </div>                         
                                <div class="col-md-6">
                                    <div class="form-group">
                                        <label class="control-label" for="FirstName">First name(이름)</label>
                                        <input id="name" name="name" type="text" placeholder="Name" class="form-control input-md">
                                    </div>
                                </div>
                                <div class="col-md-6">
                                    <div class="form-group">
                                        <label class="control-label" for="LastName">Last name(성)</label>
                                        <input id="name" name="name" type="text" placeholder="Name" class="form-control input-md">
                                    </div>
                                </div>
                                <!-- Text input-->
                                <div class="col-md-12">
                                    <div class="form-group">
                                        <label class="control-label" for="date">Tel(전화번호)</label>
                                        <input id="tel" name="tel" type="text" class="form-control input-md">
                                    </div>
                                </div>
                                
                            </div>
                        </form>
                        <!-- form end -->
                    </div>
                </div>
                
                <!-- 카드 정보 입력 박스 -->
                <div class="col-md-6">
                    <div class="well-block">
                        <div class="well-title">
                            <h2>예약 보증</h2>
                        </div>
                        <form>
                            <!-- Form start -->       
                            <div class="row">
                                <!-- Text input-->
                                <div class="col-md-12">
                                    <div class="form-group">
                                        <label class="control-label" for="email">카드 타입</label>
                                        <select id="card" name="card" class="form-control">
                                            <option value="AMEX">AMEX</option>
                                            <option value="JPN">JPN</option>
                                            <option value="MASTERCARD">MASTERCARD</option>
                                            <option value="UNIONPAY">UNIONPAY</option>
                                            <option value="VISA">VISA</option>
                                        </select>                                        
                                    </div>
                                </div>                         
                                <div class="col-md-12">
                                    <div class="form-group">
                                        <label class="control-label">신용카드 번호</label>
                                        <input id="name" name="name" type="text" class="form-control input-md">
                                    </div>
                                </div>
                                <div class="col-md-12">
                                    <div class="form-group">
                                        <label class="control-label">카드 보유자 이름</label>
                                        <input id="name" name="name" type="text" class="form-control input-md">
                                    </div>
                                </div>

                                <div class="col-md-6">
                                    <div class="form-group">
                                        <label class="control-label" for="email">만료일</label>
                                        <select id="card" name="card" class="form-control">
                                            <option value="1">1월</option>
                                            <option value="2">2월</option>
                                            <option value="3">3월</option>
                                            <option value="4">4월</option>
                                            <option value="5">5월</option>
                                            <option value="6">6월</option>
                                            <option value="7">7월</option>
                                            <option value="8">8월</option>
                                            <option value="9">9월</option>
                                            <option value="10">10월</option>
                                            <option value="11">11월</option>
                                            <option value="12">12월</option>
                                        </select>                                                                          
                                    </div>
                                </div>
								<div class="col-md-6">
                                    <div class="form-group">
                                        <label class="control-label" for="email">&nbsp;</label>                                    
                                        <select id="card" name="card" class="form-control">
                                            <option value="2017">2017</option>
                                            <option value="2018">2018</option>
                                            <option value="2019">2019</option>
                                            <option value="2020">2020</option>
                                            <option value="2021">2021</option>
                                            <option value="2022">2022</option>
                                            <option value="2023">2023</option>
                                            <option value="2024">2024</option>
                                            <option value="2025">2025</option>
                                            <option value="2026">2026</option>
											<option value="2027">2027</option>
                                        </select>                                      
                                    </div>
                                </div>
								<div class="col-md-4">
                                    <div class="form-group">
                                        <label class="control-label" for="email">보안 코드</label>                                    
                                        <input id="name" name="" type="text" class="form-control input-md">                  
                                    </div>
                                </div>
                                <div class="col-md-8">
                                    <div class="form-group">
                                    	<label class="control-label">&nbsp;</label> 
                                        <p>카드 앞면에 적힌 첫번째 네자리 숫자</p>              
                                    </div>
                                </div>                                       
                            </div>
                        </form>
                        <!-- form end -->
                    </div>
                </div>          
            </div>
            <br/>
			<!-- 예약 확정 버튼 -->
            <div class="row">
            	<div class="col-md-12">
                    <div class="block">
                        <div class="feature-block">
							<div class="feature feature-blurb-text">
                                <!-- Button -->
                                <div class="col-md-12">
                                    <div id="div_reservation_btn" class="form-group">
                                        <button id="reservation_confirm_btn" name="reservation_confirm_btn" class="btn btn-success btn-lg">&nbsp;&nbsp;&nbsp;&nbsp;예약 확정&nbsp;&nbsp;&nbsp;&nbsp;</button>
                                    </div>
                                </div>   <br/><br/>							
							
							</div>
                        </div>
                    </div>
                </div> 
            </div>                 
                
</div>
    <!-- 푸터 연결 -->
	<jsp:include page="footer2.jsp"></jsp:include>
</body>
</html>
<%@page import="hotel.model.Customer"%>
<%@ page contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String checkIn = request.getParameter("checkIn");
String checkOut = request.getParameter("checkOut");
String brName = request.getParameter("brName");
String brNum = request.getParameter("brNum");
int revAdult = Integer.parseInt(request.getParameter("revAdult"));
int revChild = Integer.parseInt(request.getParameter("revChild"));
String checkMeal = request.getParameter("checkMeal");
String accNum = request.getParameter("accNum");
int accPrice = Integer.parseInt(request.getParameter("accPrice"));
String accName = request.getParameter("accName");
int revPeople = 0;
System.out.println(accName);
System.out.println(checkIn);
if(checkMeal.equals("유")){
	revPeople = revAdult + revChild;
	accPrice += (revPeople*3000);
}
System.out.println("가격"+accPrice);
System.out.println("어른"+revAdult);
System.out.println("아이"+revChild);

Customer customer = (Customer)session.getAttribute("id");

%>
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
		hr{
			color: #333;
		}
	
	</style>
	<!-- *** Jquery *** -->
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
	<script type="text/javascript">
		$(function(){
				
			
		});
	</script>
</head>
<body>
<!-- 헤더 연결 -->
<jsp:include page="header.jsp"></jsp:include>

<div class="container" id="reservation_main">
<form action="rentoutua.res?cmd=resInput-do" method="post">
			<!-- 예약 객실 및 날짜 정보 -->
            <div class="row">
            	<div class="col-md-12">
                    <div class="well-block" id="reservation_info">
                        <div class="well-title">
                            <h2>예약 정보</h2>
                        </div>
                        <div class="feature-block">
                        <div class="feature feature-blurb-text">
                                <h2 class="feature-title">날짜 : <%=checkIn %> ~ <%=checkOut %></h2>
                            </div>
                            <div class="feature feature-blurb-text">
                                <h2 class="feature-title">지점 : <%=brName %></h2>
                                <input type="hidden" name ="brNum" value="<%=brNum%>">
                            </div>
                            
                            <div class="feature feature-blurb-text">
                                <h2 class="feature-title">방 : <%=accName %></h2>
                                <input type="hidden" name ="accNum" value="<%=accNum%>">
                            </div>
                            <div class="feature feature-blurb-text">
                                <h2 class="feature-title">인원 : 성인 : <%=revAdult %>명 아동 : <%=revChild %>명</h2>
                            </div>
                            <div class="feature feature-blurb-text">
                                <h2 class="feature-title">조식 유무 : <%=checkMeal %></h2><br/>
                                <input type="hidden" name ="reMeal" value="<%=checkMeal%>">
                            </div>
                            <div class="feature feature-blurb-text">
                                <h2 class="feature-title">총 금액 : <%=accPrice %> </h2>
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
                        
                            <!-- Form start -->       
                            <div class="row">
                                <!-- Text input-->
                                <div class="col-md-12">
                                    <div class="form-group">
                                        <label class="control-label" for="email">Email(이메일)</label>
                                        <input id="email" name="cuEmail" type="text" placeholder="E-Mail" class="form-control input-md" value="<%=customer.getCuEmail() %>" disabled="disabled">
                                    </div>
                                </div>                         
                                <div class="col-md-6">
                                    <div class="form-group">
                                        <label class="control-label" for="FirstName">First name(이름)</label>
                                        <input  name="name" type="text" placeholder="Name" class="form-control input-md" value="<%=customer.getCuFirstname() %>" disabled="disabled">
                                    </div>
                                </div>
                                <div class="col-md-6">
                                    <div class="form-group">
                                        <label class="control-label" for="LastName">Last name(성)</label>
                                        <input  name="name" type="text" placeholder="Name" class="form-control input-md" value="<%=customer.getCuLastname() %>" disabled="disabled">
                                    </div>
                                </div>
                                <!-- Text input-->
                                <div class="col-md-12">
                                    <div class="form-group">
                                        <label class="control-label" for="date">Tel(전화번호)</label>
                                        <input id="tel" name="tel" type="text" class="form-control input-md" value="<%=customer.getCuPhone() %>" disabled="disabled">
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
                                        <select  name="payType" class="form-control">
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
                                        <input  name="payCardnum" type="text" class="form-control input-md">
                                    </div>
                                </div>
                                <div class="col-md-12">
                                    <div class="form-group">
                                        <label class="control-label">카드 보유자 이름</label>
                                        <input  name="payCardName" type="text" class="form-control input-md">
                                    </div>
                                </div>

                                <div class="col-md-6">
                                    <div class="form-group">
                                        <label class="control-label" for="email">만료일</label>
                                        <select id="card" name="payCardMonth" class="form-control">
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
                                        <select id="card" name="payCardYear" class="form-control">
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
                                        <input  name="payTotal" type="hidden" class="form-control input-md" value="<%=accPrice%>">
                                        <input  name="reAdult" type="hidden" class="form-control input-md" value="<%=revAdult%>">
                                        <input  name="reChild" type="hidden" class="form-control input-md" value="<%=revChild%>">    
                                        <input  name="reCheckin" type="hidden" class="form-control input-md" value="<%=checkIn%>">
                                        <input  name="reCheckout" type="hidden" class="form-control input-md" value="<%=checkOut%>">              
                                    </div>
                                </div>
                            </div>
                        
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
     </form>           
</div>

    <!-- 푸터 연결 -->
	<jsp:include page="footer2.jsp"></jsp:include>
</body>
</html>
<%@page import="hotel.model.Customer"%>
<%@ page contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="hotel.model.Accommodation" %> 
<%@ page import="java.util.*" %>
<%@ page import="java.text.*" %>
<%	

	String checkin = request.getParameter("from");
	String checkout = request.getParameter("to");
	
	SimpleDateFormat formatter = new SimpleDateFormat("yyyy/MM/dd");
	 
	 Date date = formatter.parse(checkin);  // 날짜 입력하는곳 .
	 date = new Date(date.getTime() + (1000*60*60*24*+1));  // 날짜에 하루를 더한 값 
	 // 하루를 뺄려면 (1000*60*60*24*-1) 해주시면 됩니다.
	 
	 Calendar cal = Calendar.getInstance() ;
	 cal.setTime(date);              // 하루더한 날자 값을 Calendar  넣는다.
	 
	 int dayNum = cal.get(Calendar.DAY_OF_WEEK);   // 요일을 구해온다. 
	 
	String convertedString = "";
	 
	 switch (dayNum ) {
	     case 1: convertedString = "일"; break;
	     case 2: convertedString = "월"; break;
	     case 3: convertedString = "화"; break;
	     case 4: convertedString = "수"; break;
	     case 5: convertedString = "목"; break;
	     case 6: convertedString = "금"; break;
	     case 7: convertedString = "토"; break;
	 }
	System.out.println(convertedString);
	
	List<Accommodation> alist = (List<Accommodation>)request.getAttribute("acc");
	String brName = (String)request.getAttribute("brName");
	int revAdult = (int)request.getAttribute("revAdult");
	int revChild = (int)request.getAttribute("revChild");
	String brNum = (String)request.getAttribute("brNum");
%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<!-- Bootstrap  -->
	<link rel="stylesheet" href="css/bootstrap.css">
	
	<!-- *** Jquery *** -->
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
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
	<script type="text/javascript">
		$(function(){
			$(".checkRoom").click(function() {
				$("input[name=box]:checked").each(function() {
					var accNum = $(this).parent().parent().find(".accNum").val();
					var accName = $(this).parent().parent().find(".accName").text();
					var week = 0;
					var weekend = 0;
				    week = $(this).parent().parent().find(".week").text();
				    weekend = $(this).parent().parent().find(".weekend").text();
					if("<%=convertedString%>" == "금" && "<%=convertedString%>" == "토"){
						$("#accPrice").val(weekend);
					}else{
						$("#accPrice").val(week);
					}
					alert(accName);
					$("#accNum").val(accNum);
					$("#accName").val(accName);
					alert($("#accName").val());
				});
			});
			$(".checkMeal").click(function() {
				$("input[name=box]:checked").each(function() {
					$("#checkMeal").val("유");
				});
			});	

			
		});
	</script>
</head>
<body>
	<!-- 헤더 연결 -->
	<jsp:include page="header.jsp"></jsp:include>
	<form action="reservationInput.jsp">
	<div id="rev_sel_content">
		<h1>객실 선택<%=brName %></h1>
		<hr/>
		<div class="table-responsive">
			<table id="room_table" class="table table-condensed table-bordered">
				<thead>
		            <tr>
		                <th>객실 명 </th>
		                <th>객실 설명</th>
		                <th colspan="2">선택하기</th>
		            </tr>
		        </thead>
		        
		        	<% for( Accommodation acc : alist ) { %>
		        	
					<tr>
						<td class="room_title">
							<input type="hidden" class ="accNum" name="accNum" value="<%=acc.getAccNum()%>"/>
							<h4 class="cta-title accName"><%=acc.getAccType()+" "+acc.getAccName()%></h4>
							<img src="http://placehold.it/500x300" />
						</td>
						<td class="room_text">
							<p>
								침대 : <%=acc.getAccType() %><br/>
								1박 <%=acc.getAccPeople() %>인
							</p>
							<hr/>
							<h3 class="cta-title room_price">주중 <span class="week"><%=acc.getAccWeekFee() %></span>원</h3>	
							<br/>
							<h3 class="cta-title room_price_weekend">주말 <span class="weekend"><%=acc.getAccWeekendFee()%></span>원</h3>	
						</td>
						<td><label>방선택</label></td>
						<td class="room_select">
							<input type="checkbox" name = "box" class ="checkRoom" />
						</td>
					</tr>
					<%} %>
					
			</table>
		</div>
		<div class="table-responsive">
			<br/>
			<h2>옵션 선택</h2>
			<form action="rentoutua.res?cmd=resInput-form" method="post" >
			<table id="option_table" class="table table-condensed">
				<tr>
					<td id="breakfast_text">조식 포함 &nbsp;&nbsp;&nbsp;&nbsp; <label>3000원</label></td>
					<td><label>선택</label></td>
					<td>
						<input type="checkbox" class="checkMeal"/>
					</td>
					<td>
						<input type="hidden" name="checkIn" value="<%=checkin %>" />
						<input type="hidden" name="checkOut" value="<%=checkout%>"/>
						<input type="hidden" name="brName" value="<%=brName%>"/>
						<input type="hidden" name="brNum" value="<%=brNum%>"/>
						<input type="hidden" name="revAdult" value="<%=revAdult%>"/>
						<input type="hidden" name="revChild" value="<%=revChild%>"/>
						<input type="hidden" id="checkMeal" name="checkMeal" value="무"/>
						<input type="hidden" id = "accNum" name="accNum" value="1"/>
						<input type="hidden" id = "accPrice" name="accPrice" value="2"/>
						<input type="hidden" id = "accName" name="accName" value="3"/>
					</td>
				</tr>
				<tr>
					<td id="td_rev_btn" colspan="3">
						<p>
							<br/>
							<button id="btn_reservation" type="submit" class="btn btn-success btn-lg">선택하기</button>
						</p>
					</td>
				</tr>	
				
			</table>
			</form>	
		</div>
	
	</div>
</form>
    <!-- 푸터 연결 -->
	<jsp:include page="footer2.jsp"></jsp:include>
</body>
</html>
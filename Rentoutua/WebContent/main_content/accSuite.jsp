<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title></title>

<!-- css -->
<link rel="stylesheet" href="//code.jquery.com/ui/1.11.0/themes/smoothness/jquery-ui.css">
<link rel="stylesheet" href="http://bxslider.com/lib/jquery.bxslider.css" type="text/css" />     

<!-- 	JQuery - -->
<script src="//code.jquery.com/jquery-1.10.2.js"></script>
<script src="//code.jquery.com/ui/1.11.0/jquery-ui.js"></script>
<script src="http://bxslider.com/lib/jquery.bxslider.js"></script>
		
<!-- User-->
<script type="text/javascript">

(function($){
	$(document).ready(function(){
	    var slider2_initialized = false;
	    var slider3_initialized = false;
	    var slider4_initialized = false;
	    
	    $( "#tabs" ).tabs({
	        activate: function( event, ui ) {
	           //console.log("ui = ");console.log(ui);
	           var tab_id = $(ui.newPanel).attr('id');//alert(tab_id);
	           
	           if(tab_id == "tabs-2" && slider2_initialized == false)
	           {    
	               $('.bxslider2').bxSlider({
	                 mode: 'fade'
	               }); 
	               //update initialization flag to true
	               slider2_initialized = true;
	           }
	           else if(tab_id == "tabs-3" && slider3_initialized == false)
	           {    
	               $('.bxslider3').bxSlider({
	                 mode: 'fade'
	               }); 
	               //update initialization flag to true
	               slider3_initialized = true;
	           }
	           else if(tab_id == "tabs-4" && slider4_initialized == false)
	           {    
	               $('.bxslider4').bxSlider({
	                 mode: 'fade'
	               }); 
	               //update initialization flag to true
	               slider4_initialized = true;
	           }
	        }
	    });
	    
		$('.bxslider1').bxSlider({
			 mode: 'fade'
		});   
	});
})(jQuery);
	
</script>

<style type="text/css" >
	
	#rev_sel_content{
            position : relative;
            top:140px;
            width:65%;
            margin:0 auto;
    }
	
	#tabs li {
	  left:0;
	  right:0;
	}
	
	table {
    width: 50%;
	}
	
	thead, tbody, tr, td, th {
	    display: block;
	}
	
	thead th {
	    height: 30px;
	}
	
	tbody {
/* 		overflow-y: auto; */
	    height: 150px;
	}
	
	tbody td, thead th {
	    float: left;
	    width: 33%;
	}
	
	tr:after {
	    clear: both;
	    content: ' ';
	    display: block;
	    visibility: hidden;
	}
	
	.info_list {
		list-style-type : square;
	}
	
	.info_list li {
		list-style-type : square;
		font-size : 12px;
		line-height: 200%;
		
	}
	
	.title {
		font-size : 20px;
		font-weight : bold;
	}
	
	.title2 {
		font-size : 15px;
		font-weight : bold;
	}
	
</style>
</head>
<body>
<!-- 헤더 연결 -->
<jsp:include page="header.jsp"></jsp:include>

	<div id="rev_sel_content">
  		<h1>Suite</h1>
   			<hr/>
            <p class="sub_txt">VIP를 위한 공간으로 편안한 휴식을 위한 독립적이고 안락한 객실과 비즈니스를 위한 화사하고 모던한 디자인의 응접실이 프레지던트호텔 만의 품격을 담은 차별화 된 서비스를 제공합니다.</p>
		    <div id="tabs">
				<ul>
					<li><a href="#tabs-1">Junior</a></li>
					<li><a href="#tabs-2">Superior</a></li>
					<li><a href="#tabs-3">Premier</a></li>
				</ul>
				<div id="tabs-1" class="tab-content current">
					<ul class="bxslider1">
					  <li><img src="/Rentoutua/main_content/images/rooms/junior_suite_img01.jpg" /></li>
					  <li><img src="/Rentoutua/main_content/images/rooms/junior_suite_img02.jpg" /></li>
					  <li><img src="/Rentoutua/main_content/images/rooms/junior_suite_img03.jpg" /></li>
					  <li><img src="/Rentoutua/main_content/images/rooms/junior_suite_img04.jpg" /></li>
					</ul>
					
					<table class="table table-fixed">
			        <tbody>
			            <tr>
			                <td><img src="/Rentoutua/main_content/images/icon/room_detail_icon01.png" ></td>
			                <td>
								<p class="title">특징</p>
								<ul class="info_list">
									<li>
										<span>가 격 :</span>
										 200, 000원
									</li>
									<li>
										<span>면 적 :</span>
										 24.52㎡
									</li>
									<li>
										<span>위 치 :</span>
										 2 층
									</li>
								</ul>
							</td>
			                <td>
			                	<p class="title">&nbsp;</p>
								<ul class="info_list">
									<li>
										<span>객실수 :</span>
										 10실
									</li>
									<li>
										<span>타 입 :</span>
										 싱글
									</li>
								</ul>
			                </td>
			            </tr>
			            <tr>
			                <td><img src="/Rentoutua/main_content/images/icon/room_detail_icon02.png" ></td>
			                <td>
								<p class="title">서비스</p>
								<ul class="info_list">
									<li>초고속 인터넷 및 WIFI(무료)</li>
									<li>무료생수(1일 2병) 및 차(티백) 제공</li>
									<li>Direct 국제전화, 보이스 메일 및 모닝콜</li>
									<li>비즈니스 센터 무료 이용</li>
									<li>일일 세탁(유료)</li>
									<li>미니바(일부 객실 제외)</li>
									<li>룸서비스(06:30~24:00)</li>
								</ul>
							</td>
			                <td>
			                </td>
			            </tr>
			            <tr>
			                <td><img src="/Rentoutua/main_content/images/icon/room_detail_icon03.png" ></td>
			                <td>
								<p class="title">편의시설</p>
								<span class="title2">객 실</span>
								<ul class="info_list">
									<li>32” LCD TV(62개 채널)</li>
									<li>개인금고</li>
									<li>전기포트, 찻잔세트</li>
									<li>손전등, 방연마스크</li>
									<li>옷솔, 구두솔, 구둣주걱</li>
									<li>110/220V 전압사용가능</li>
								</ul>
							</td>
			                <td>
			                	<p class="title">&nbsp;</p>
			                	<span class="title2">욕 실</span>
								<ul class="info_list">
									<li>비데 및 욕조(일부 객실 제외)</li>
									<li>욕실용품(AVEDA 4종, 칫솔·치약은 유료)</li>
									<li>타월 3종 (핸드·세면·베스)</li>
									<li>헤어드라이기</li>
									<li>목욕가운, 슬리퍼</li>
									<li>다리미와 다리미판(요청 시)</li>
								</ul>
			                </td>
			            </tr>
			            <tr>
			                <td><img src="/Rentoutua/main_content/images/icon/room_detail_icon04.png" ></td>
			                <td>
								<p class="title">이용안내</p>
								<ul class="info_list">
									<li>체크인 : 14:00</li>
								</ul>
							</td>
			                <td>
			                	<p class="title">&nbsp;</p>
								<ul class="info_list">
									<li>체크아웃 : 12:00</li>
								</ul>
			                </td>
			            </tr>
			    	</tbody>
			   	</table>
				</div>
				
				<div id="tabs-2" class="tab-content">
					<ul class="bxslider2">
					  <li><img src="/Rentoutua/main_content/images/rooms/superior_suite_img01.jpg" /></li>
					  <li><img src="/Rentoutua/main_content/images/rooms/superior_suite_img02.jpg" /></li>
					  <li><img src="/Rentoutua/main_content/images/rooms/superior_suite_img03.jpg" /></li>
					  <li><img src="/Rentoutua/main_content/images/rooms/superior_suite_img04.jpg" /></li>
					  <li><img src="/Rentoutua/main_content/images/rooms/superior_suite_img05.jpg" /></li>
					  <li><img src="/Rentoutua/main_content/images/rooms/superior_suite_img06.jpg" /></li>
					  <li><img src="/Rentoutua/main_content/images/rooms/superior_suite_img07.jpg" /></li>
					  <li><img src="/Rentoutua/main_content/images/rooms/superior_suite_img08.jpg" /></li>
					  <li><img src="/Rentoutua/main_content/images/rooms/superior_suite_img09.jpg" /></li>
					  <li><img src="/Rentoutua/main_content/images/rooms/superior_suite_img10.jpg" /></li>
					  <li><img src="/Rentoutua/main_content/images/rooms/superior_suite_img11.jpg" /></li>
					  <li><img src="/Rentoutua/main_content/images/rooms/superior_suite_img12.jpg" /></li>
					</ul>
					<table class="table table-fixed">
			        <tbody>
			            <tr>
			                <td><img src="/Rentoutua/main_content/images/icon/room_detail_icon01.png" ></td>
			                <td>
								<p class="title">특징</p>
								<ul class="info_list">
									<li>
										<span>가 격 :</span>
										 200, 000원
									</li>
									<li>
										<span>면 적 :</span>
										 24.52㎡
									</li>
									<li>
										<span>위 치 :</span>
										 2 층
									</li>
								</ul>
							</td>
			                <td>
			                	<p class="title">&nbsp;</p>
								<ul class="info_list">
									<li>
										<span>객실수 :</span>
										 10실
									</li>
									<li>
										<span>타 입 :</span>
										 싱글
									</li>
								</ul>
			                </td>
			            </tr>
			            <tr>
			                <td><img src="/Rentoutua/main_content/images/icon/room_detail_icon02.png" ></td>
			                <td>
								<p class="title">서비스</p>
								<ul class="info_list">
									<li>초고속 인터넷 및 WIFI(무료)</li>
									<li>무료생수(1일 2병) 및 차(티백) 제공</li>
									<li>Direct 국제전화, 보이스 메일 및 모닝콜</li>
									<li>비즈니스 센터 무료 이용</li>
									<li>일일 세탁(유료)</li>
									<li>미니바(일부 객실 제외)</li>
									<li>룸서비스(06:30~24:00)</li>
								</ul>
							</td>
			                <td>
			                </td>
			            </tr>
			            <tr>
			                <td><img src="/Rentoutua/main_content/images/icon/room_detail_icon03.png" ></td>
			                <td>
								<p class="title">편의시설</p>
								<span class="title2">객 실</span>
								<ul class="info_list">
									<li>32” LCD TV(62개 채널)</li>
									<li>개인금고</li>
									<li>전기포트, 찻잔세트</li>
									<li>손전등, 방연마스크</li>
									<li>옷솔, 구두솔, 구둣주걱</li>
									<li>110/220V 전압사용가능</li>
								</ul>
							</td>
			                <td>
			                	<p class="title">&nbsp;</p>
								<span class="title2">욕 실</span>
								<ul class="info_list">
									<li>비데 및 욕조(일부 객실 제외)</li>
									<li>욕실용품(AVEDA 4종, 칫솔·치약은 유료)</li>
									<li>타월 3종 (핸드·세면·베스)</li>
									<li>헤어드라이기</li>
									<li>목욕가운, 슬리퍼</li>
									<li>다리미와 다리미판(요청 시)</li>
								</ul>
			                </td>
			            </tr>
			            <tr>
			                <td><img src="/Rentoutua/main_content/images/icon/room_detail_icon04.png" ></td>
			                <td>
								<p class="title">이용안내</p>
								<ul class="info_list">
									<li>체크인 : 14:00</li>
								</ul>
							</td>
			                <td>
			                	<p class="title">&nbsp;</p>
								<ul class="info_list">
									<li>체크아웃 : 12:00</li>
								</ul>
			                </td>
			            </tr>
			    	</tbody>
			   	</table>
				</div>
				
				<div id="tabs-3" class="tab-content">
					<ul class="bxslider3">
					  <li><img src="/Rentoutua/main_content/images/rooms/premier_suite_img01.jpg" /></li>
					  <li><img src="/Rentoutua/main_content/images/rooms/premier_suite_img02.jpg" /></li>
					  <li><img src="/Rentoutua/main_content/images/rooms/premier_suite_img03.jpg" /></li>
					  <li><img src="/Rentoutua/main_content/images/rooms/premier_suite_img04.jpg" /></li>
					  <li><img src="/Rentoutua/main_content/images/rooms/premier_suite_img05.jpg" /></li>
					  <li><img src="/Rentoutua/main_content/images/rooms/premier_suite_img06.jpg" /></li>
					  <li><img src="/Rentoutua/main_content/images/rooms/premier_suite_img08.jpg" /></li>
					  <li><img src="/Rentoutua/main_content/images/rooms/premier_suite_img09.jpg" /></li>
					</ul>
					
					<table class="table table-fixed">
			        <tbody>
			            <tr>
			                <td><img src="/Rentoutua/main_content/images/icon/room_detail_icon01.png" ></td>
			                <td>
								<p class="title">특징</p>
								<ul class="info_list">
									<li>
										<span>가 격 :</span>
										 200, 000원
									</li>
									<li>
										<span>면 적 :</span>
										 24.52㎡
									</li>
									<li>
										<span>위 치 :</span>
										 2 층
									</li>
								</ul>
							</td>
			                <td>
			                	<p class="title">&nbsp;</p>
								<ul class="info_list">
									<li>
										<span>객실수 :</span>
										 10실
									</li>
									<li>
										<span>타 입 :</span>
										 싱글
									</li>
								</ul>
			                </td>
			            </tr>
			            <tr>
			                <td><img src="/Rentoutua/main_content/images/icon/room_detail_icon02.png" ></td>
			                <td>
								<p class="title">서비스</p>
								<ul class="info_list">
									<li>초고속 인터넷 및 WIFI(무료)</li>
									<li>무료생수(1일 2병) 및 차(티백) 제공</li>
									<li>Direct 국제전화, 보이스 메일 및 모닝콜</li>
									<li>비즈니스 센터 무료 이용</li>
									<li>일일 세탁(유료)</li>
									<li>미니바(일부 객실 제외)</li>
									<li>룸서비스(06:30~24:00)</li>
								</ul>
							</td>
			                <td>
			                </td>
			            </tr>
			            <tr>
			                <td><img src="/Rentoutua/main_content/images/icon/room_detail_icon03.png" ></td>
			                <td>
								<p class="title">편의시설</p>
								<span class="title2">객 실</span>
								<ul class="info_list">
									<li>32” LCD TV(62개 채널)</li>
									<li>개인금고</li>
									<li>전기포트, 찻잔세트</li>
									<li>손전등, 방연마스크</li>
									<li>옷솔, 구두솔, 구둣주걱</li>
									<li>110/220V 전압사용가능</li>
								</ul>
							</td>
			                <td>
			                	<p class="title">&nbsp;</p>
			                	<span class="title2">욕 실</span>
								<ul class="info_list">
									<li>비데 및 욕조(일부 객실 제외)</li>
									<li>욕실용품(AVEDA 4종, 칫솔·치약은 유료)</li>
									<li>타월 3종 (핸드·세면·베스)</li>
									<li>헤어드라이기</li>
									<li>목욕가운, 슬리퍼</li>
									<li>다리미와 다리미판(요청 시)</li>
								</ul>
			                </td>
			            </tr>
			            <tr>
			                <td><img src="/Rentoutua/main_content/images/icon/room_detail_icon04.png" ></td>
			                <td>
								<p class="title">이용안내</p>
								<ul class="info_list">
									<li>체크인 : 14:00</li>
								</ul>
							</td>
			                <td>
			                	<p class="title">&nbsp;</p>
								<ul class="info_list">
									<li>체크아웃 : 12:00</li>
								</ul>
			                </td>
			            </tr>
			    	</tbody>
			   	</table>
				</div>
			</div>
	  </div>

</body>
</html>
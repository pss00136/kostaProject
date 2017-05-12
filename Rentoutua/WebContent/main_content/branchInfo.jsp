<%@ page contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
   <!-- Bootstrap  -->
   <link rel="stylesheet" href="css/bootstrap.css">
   
   <style type="text/css">
      #rev_sel_content{
            position : relative;
            top:140px;
            width:65%;
            margin:0 auto;
      }
      .branch_title{
         width: 50%;
		max-width: 710px; 
		
      }
      .branch_text{
         max-width: 400px;
      }
   	  .branch_text p{
         margin-left : 20px;
         margin-right : 20px;
      }
      
   	  .cta-title{
         margin-left : 20px;
         margin-right : 20px;
         font-size : 15px;
      }
      

      #branch_table td{
         vertical-align:middle;
         margin: auto;
         padding: 0;
      }
      #branch_table th{
         text-align: center;
         vertical-align:middle;
      }
      
      .branch_img{
      	width : 100%;
      }
      
      table tr{
      	border-right:none;
		border-left:none;
		border-top:none;
		border-bottom:none;
      }
   </style>
</head>
<body>
   <!-- 헤더 연결 -->
   <jsp:include page="header.jsp"></jsp:include>
   
<div id="rev_sel_content">
   <h1>Hotel Information</h1>
   <hr/>
   <div class="table-responsive">
      <table id="branch_table" class="table table-condensed table-bordered">
            <tr>
               <td class="branch_title">
                  <h4>Rentoutua Seoul</h4>
                  <img src="./images/branch/seoul.jpg"/>
               </td>
               <td class="branch_text">
                  <p>
                   	  한국 최고의 럭셔리 비즈니스호텔인 렌또뚜아호텔서울은 1,120실 규모를 자랑하며 서울의 중심에 자리 잡고 있습니다. 렌또뚜아호텔서울에서는 품격있는 가족모임과 고품격 웨딩, 대규모 국제회의와 비즈니스 행사를 위한 최상의 장소를 제공하고 있으며, 최고급 레스토랑을 갖추고 있어 국빈 등 VIP 고객을 모시기에 최적의 공간을 제공합니다. <br/>
                  </p>
                  <hr/>
                  <h3 class="cta-title">
                  	서울특별시 중구 을지로 30, 렌또뚜아 서울<br/>
                  	&nbsp;<br/>
                  	02-771-1000<br/>
                  </h3>   
               </td>
            </tr>
            <tr>
            <td colspan="2">&nbsp;</td>
            </tr>
            <tr>
               <td class="branch_title">
                  <h4>Rentoutua Gyeongju</h4>
                  <img src="./images/branch/gyeongju.jpg" />
               </td>
               <td class="branch_text">
                  <p>
                 	 아름다운 보문호수에 자리잡은 렌또뚜아호텔경주는 모던한 감각의 객실 등 최고의 시설과 체계적인 수준의 서비스로 편안한 휴식을 제공합니다.
                  </p>
                  <hr/>
                  <h3 class="cta-title">
                  	경상북도 경주시 보문로 484-7, 렌또뚜아 경주<br/>
                  	&nbsp;<br/>
                  	054-745-7788<br/>
                  </h3>   
               </td>
            </tr>
            <tr>
            <td colspan="2">&nbsp;</td>
            </tr>
            <tr>
               <td class="branch_title">
                  <h4>Rentoutua Jeju</h4>
                  <img src="./images/branch/jeju2.jpg" />
               </td>
               <td class="branch_text">
                  <p>
                 	 세계자연문화유산인 제주의 아름다운 풍광을 담은 리조트로써 그 명성을 쌓아가고 있는 렌또뚜아호텔제주는 2000년 개관 후부터 지금까지 품격과 문화가 있는 휴식지로써 수많은 국제행사를 성공적으로 치러온 최고의 리조트입니다.
                  </p>
                  <hr/>
                  <h3 class="cta-title">
                  	제주특별자치도 서귀포시 중문관광로 72번길 75, 렌또뚜아 제주<br/>
                  	&nbsp;<br/>
                  	064-735-5114<br/>
                  </h3>   
            </tr>
      </table>
   </div>
   <div>
   <h3></h3>
   </div>
</div>
<!-- 푸터 연결 -->
   <jsp:include page="footer2.jsp"></jsp:include>

</body>
</html>
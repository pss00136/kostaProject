<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
<link href="cssSJ/bootstrap.min.css" rel="stylesheet">
<link href="cssSJ/navBar.css" rel="stylesheet">
<link href="cssSJ/mypageReservation.css" rel="stylesheet">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>
<script type="text/javascript" src="js/mypageReservation.js"></script>
<script type="text/javascript" src="js/navBar.js"></script>
<style type="text/css">
body {padding-top:20px;}
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
		
<div id="container_panel_left" class="container">
<div class="row profile">
		<div class="col-md-3">
			<div class="profile-sidebar">
			<div class="profile-usertitle">
					<div class="profile-usertitle-name">
						레또뚜아 호텔
					</div>
					<div class="profile-usertitle-job">
						Q&A 
					</div>
				</div>
				<div class="profile-usermenu">
					<ul class="nav">
						<li>
							<a href="#">
							문의하기 </a>
						</li>
						<li class="active">
							<a href="QnAInput.jsp">
							1:1문의 </a>
						</li>
					</ul>
				</div>
				<!-- END MENU -->
			</div>
		</div>
		<div class="col-md-9">
	<div class="row">
<!--       <div class="col-md-12 col-md-offset-2"> -->
        <div class="well well-sm">
          <form class="form-horizontal" action="" method="post">
          <fieldset>
            <legend class="text-center">1:1문의</legend>
    		<!-- Location input -->
    		 <div class="form-group">
                        <label for="status" class="col-sm-2 control-label">지점명</label>
                        <div class="col-sm-10">
                            <select class="form-control" id="location" name="location">
                                <option>지점 선택</option>
                                <option>서울점</option>
                                <option>부산점</option>
                            </select>
                        </div>
                    </div> 
    		<!-- QuestionType input -->
    		 <div class="form-group">
                        <label for="status" class="col-sm-2 control-label">질문유형</label>
                        <div class="col-sm-10">
                            <select class="form-control" id="qType" name="qType">
                                <option>질문유형 선택</option>
                                <option>객실</option>
                                <option>객실관리</option>
                                <option>예약</option>
                                <option>홈페이지</option>
                                <option>기타</option>
                            </select>
                        </div>
                    </div> 
           
    
            <!-- Email input-->
            <div class="form-group">
              <label class="col-md-2 control-label" for="email">E-mail</label>
              <div class="col-md-10">
                <input id="email" name="email" type="text" placeholder="이메일을 입력하세요" class="form-control">
              </div>
            </div>
            
    		 <!-- Name input-->
            <div class="form-group">
              <label class="col-md-2 control-label" for="title">제목</label>
              <div class="col-md-10">
                <input id="title" name="title" type="text" placeholder="제목" class="form-control">
              </div>
            </div>
    		
            <!-- Message body -->
            <div class="form-group">
              <label class="col-md-2 control-label" for="message">문의 사항</label>
              <div class="col-md-10">
                <textarea class="form-control" id="message" name="message" placeholder="메세지를 입력하세요" rows="5"></textarea>
              </div>
            </div>
    		<!-- Name input-->
            <div class="form-group">
              <label class="col-md-2 control-label" for="title">첨부파일</label>
              <div class="col-md-10">
                <input id="add_file" name="add_file" type="file" placeholder="제목" class="form-control">
                <em class="fw_nm">※ 10MB이하의 JPG, JPEG, GIF, PNG, DOC, DOCX, PPT, PPTX, XLS, XLSX 파일 1개만 첨부가능합니다.</em>
              </div>
            </div>
            <!-- Form actions -->
            <div class="form-group">
              <div class="col-md-11 text-right">
                <button type="submit" class="btn btn-primary btn-lg">접수하기</button>
              </div>
            </div>
          </fieldset>
          </form>
        </div>
      </div>
	</div>
	</div>
</div>

		<!-- 푸터 연결 -->
		<jsp:include page="footer2.jsp"></jsp:include>
</body>
</html>
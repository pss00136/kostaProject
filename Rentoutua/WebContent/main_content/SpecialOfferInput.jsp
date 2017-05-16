<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
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
						스페셜오퍼 글쓰기
					</div>
				</div>
				<!-- END MENU -->
			</div>
		</div>
		<div class="col-md-9">
	<div class="row">
<!--       <div class="col-md-12 col-md-offset-2"> -->
        <div class="well well-sm">
          <form class="form-horizontal" action="rentoutua.event?cmd=eventinfo-input" method="post" enctype="multipart/form-data">
            <legend class="text-center">스페셜 오퍼 글 작성</legend>
    		<!-- Type input -->        
    		 <!-- Title input-->
            <div class="form-group">
              <label class="col-md-2 control-label" for="title">제목</label>
              <div class="col-md-10">
                <input id="title" name="title" type="text" placeholder="제목" class="form-control">
              </div>
            </div>
            
    		<!-- Content body -->
            <div class="form-group">
              <label class="col-md-2 control-label" for="message">내용</label>
              <div class="col-md-10">
                <textarea class="form-control" id="content" name="content" placeholder="내용을 입력하세요" rows="5"></textarea>
              </div>
            </div>
    		<!-- image input-->
            <div class="form-group">
              <label class="col-md-2 control-label" for="title">본문파일</label>
              <div class="col-md-10">
                <input id="add_file" name="imageName" type="file" placeholder="제목" class="form-control">
                <em class="fw_nm">※ 10MB이하의 JPG, JPEG, GIF, PNG, DOC, DOCX, PPT, PPTX, XLS, XLSX 파일 1개만 첨부가능합니다.</em>
              </div>
            </div>
            
            <!-- thumb input-->
            <div class="form-group">
              <label class="col-md-2 control-label" for="title">썸네일파일</label>
              <div class="col-md-10">
                <input id="add_file" name="thumbName" type="file" placeholder="제목" class="form-control">
                <em class="fw_nm">※ 10MB이하의 JPG, JPEG, GIF, PNG, DOC, DOCX, PPT, PPTX, XLS, XLSX 파일 1개만 첨부가능합니다.</em>
              </div>
            </div>
            <!-- Form actions -->
            <div class="form-group">
              <div class="col-md-11 text-right">
                <button type="submit" class="btn btn-primary btn-lg">등록하기</button>
              </div>
            </div>
          </form>
        </div>
      </div>
	</div>
	</div>
</div>
</body>
</html>
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
<!-- ��� ���� -->
<jsp:include page="header.jsp"></jsp:include>
		
<div id="container_panel_left" class="container">
<div class="row profile">
		<div class="col-md-3">
			<div class="profile-sidebar">
			<div class="profile-usertitle">
					<div class="profile-usertitle-name">
						���ǶѾ� ȣ��
					</div>
					<div class="profile-usertitle-job">
						Q&A 
					</div>
				</div>
				<div class="profile-usermenu">
					<ul class="nav">
						<li>
							<a href="#">
							�����ϱ� </a>
						</li>
						<li class="active">
							<a href="QnAInput.jsp">
							1:1���� </a>
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
            <legend class="text-center">1:1����</legend>
    		<!-- Location input -->
    		 <div class="form-group">
                        <label for="status" class="col-sm-2 control-label">������</label>
                        <div class="col-sm-10">
                            <select class="form-control" id="location" name="location">
                                <option>���� ����</option>
                                <option>������</option>
                                <option>�λ���</option>
                            </select>
                        </div>
                    </div> 
    		<!-- QuestionType input -->
    		 <div class="form-group">
                        <label for="status" class="col-sm-2 control-label">��������</label>
                        <div class="col-sm-10">
                            <select class="form-control" id="qType" name="qType">
                                <option>�������� ����</option>
                                <option>����</option>
                                <option>���ǰ���</option>
                                <option>����</option>
                                <option>Ȩ������</option>
                                <option>��Ÿ</option>
                            </select>
                        </div>
                    </div> 
           
    
            <!-- Email input-->
            <div class="form-group">
              <label class="col-md-2 control-label" for="email">E-mail</label>
              <div class="col-md-10">
                <input id="email" name="email" type="text" placeholder="�̸����� �Է��ϼ���" class="form-control">
              </div>
            </div>
            
    		 <!-- Name input-->
            <div class="form-group">
              <label class="col-md-2 control-label" for="title">����</label>
              <div class="col-md-10">
                <input id="title" name="title" type="text" placeholder="����" class="form-control">
              </div>
            </div>
    		
            <!-- Message body -->
            <div class="form-group">
              <label class="col-md-2 control-label" for="message">���� ����</label>
              <div class="col-md-10">
                <textarea class="form-control" id="message" name="message" placeholder="�޼����� �Է��ϼ���" rows="5"></textarea>
              </div>
            </div>
    		<!-- Name input-->
            <div class="form-group">
              <label class="col-md-2 control-label" for="title">÷������</label>
              <div class="col-md-10">
                <input id="add_file" name="add_file" type="file" placeholder="����" class="form-control">
                <em class="fw_nm">�� 10MB������ JPG, JPEG, GIF, PNG, DOC, DOCX, PPT, PPTX, XLS, XLSX ���� 1���� ÷�ΰ����մϴ�.</em>
              </div>
            </div>
            <!-- Form actions -->
            <div class="form-group">
              <div class="col-md-11 text-right">
                <button type="submit" class="btn btn-primary btn-lg">�����ϱ�</button>
              </div>
            </div>
          </fieldset>
          </form>
        </div>
      </div>
	</div>
	</div>
</div>

		<!-- Ǫ�� ���� -->
		<jsp:include page="footer2.jsp"></jsp:include>
</body>
</html>
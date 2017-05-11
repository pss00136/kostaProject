<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
 <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
<title>Insert title here</title>
<!-- Bootstrap -->
    <link href="/Rentoutua/main_content/cssSJ/bootstrap.min.css" rel="stylesheet">
    <!-- font awesome -->
    <link rel="stylesheet" href="/Rentoutua/main_content/cssSJ/font-awesome.min.css" media="screen" title="no title" charset="utf-8">
    <!-- Custom style -->
    <link rel="stylesheet" href="/Rentoutua/main_content/cssSJ/style.css" media="screen" title="no title" charset="utf-8">

</head>
<body>
<!-- ��� ���� -->
<jsp:include page="header.jsp"></jsp:include>

 <article class="container">
  <div class="col-md-12">
        <div class="page-header">
    	    <h1>ȸ������</h1>
        </div>
        <form action="rentoutua.cus?cmd=cusinsert-do" class="form-horizontal">
        <div class="form-group">
          <label class="col-sm-3 control-label" for="inputEmail">�̸���</label>
        <div class="col-sm-6">
          <input class="form-control" id="inputEmail" name="cuEmail" type="email" placeholder="�̸���">
        </div>
        </div>
        <div class="form-group">
            <label class="col-sm-3 control-label" for="inputkName">����(�ѱ�)</label>
          <div class="col-sm-6">
            <input class="form-control" id="inputkName" name="cuKname" type="text" placeholder="����(�ѱ�)">
          </div>
        </div>
         <div class="form-group">
        	<label class="col-sm-3 control-label" for="inputName">����(����)</label>
        	<label class="col-sm-1 control-label"  for="inputName">FirstName</label> 
          <div class="col-sm-2">
            <input class="form-control " id="inputFirstName" name="cuFirstName" type="text" placeholder="First name(�̸�)">
          </div>
           <label class="col-sm-1 control-label" for="inputName">LastName</label>
          <div class="col-sm-2">
            <input class="form-control " id="inputLastName" name="cuLastname" type="text" placeholder="Last name(��)">
          </div>
        </div>
        
        <div class="form-group">
          <label class="col-sm-3 control-label" for="inputPassword">��й�ȣ</label>
        <div class="col-sm-6">
          <input class="form-control" id="inputPassword" name="cuPass" type="password" placeholder="��й�ȣ">
        <p class="help-block">����, Ư������ ���� 8�� �̻�</p>
        </div>
        </div>
          <div class="form-group">
              <label class="col-sm-3 control-label" for="inputPasswordCheck">��й�ȣ Ȯ��</label>
             <div class="col-sm-6">
              <input class="form-control" id="inputPasswordCheck" type="password" placeholder="��й�ȣ Ȯ��">
                <p class="help-block">��й�ȣ�� �ѹ� �� �Է����ּ���.</p>
             </div>
          </div>
        
       
        <div class="form-group">
            <label class="col-sm-3 control-label" for="inputBirth">�������</label>
          <div class="col-sm-6">
            <input class="form-control" id="inputBirth" name="cuBirthday" type="text" placeholder="�������">
          </div>
        </div>
        <div class="form-group">
            <label class="col-sm-3 control-label" for="inputNumber">�޴�����ȣ</label>
              <div class="col-sm-6">
                  <input type="tel" class="form-control" name="cuPhone" id="inputPhone" placeholder="- ���� �Է��� �ּ���" />
              </div>
        </div>
        <div class="form-group">
            <label class="col-sm-3 control-label" for="inputNumber">��ȭ��ȣ</label>
              <div class="col-sm-6">
                  <input type="tel" class="form-control" name="cuTel" id="inputTel" placeholder="- ���� �Է��� �ּ���" />
              </div>
        </div>
          <div class="form-group">
              <label class="col-sm-3 control-label" for="inputAgree">��� ����</label>
            <div class="col-sm-6" data-toggle="buttons">
              <label class="btn btn-warning active">
                <input id="agree" type="checkbox" autocomplete="off" chacked>
                  <span class="fa fa-check"></span>
              </label>
              <a href="#">�̿���</a> �� ���� �մϴ�.
            </div>
          </div>
        <div class="form-group">
          <div class="col-sm-12 text-center">
            <button class="btn btn-primary" type="submit">ȸ������<i class="fa fa-check spaceLeft"></i></button>
            <button class="btn btn-danger" type="submit">�������<i class="fa fa-times spaceLeft"></i></button>
          </div>
        </div>
        </form>
          <hr>
        </div>
      </article>

    <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
<!--     <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script> -->
    <!-- Include all compiled plugins (below), or include individual files as needed -->
<!--     <script src="js/bootstrap.min.js"></script> -->
</body>
</html>
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
<!-- 헤더 연결 -->
<jsp:include page="header.jsp"></jsp:include>

 <article class="container">
  <div class="col-md-12">
        <div class="page-header">
    	    <h1>회원가입</h1>
        </div>
        <form action="rentoutua.cus?cmd=cusinsert-do" class="form-horizontal">
        <div class="form-group">
          <label class="col-sm-3 control-label" for="inputEmail">이메일</label>
        <div class="col-sm-6">
          <input class="form-control" id="inputEmail" name="cuEmail" type="email" placeholder="이메일">
        </div>
        </div>
        <div class="form-group">
            <label class="col-sm-3 control-label" for="inputkName">성명(한글)</label>
          <div class="col-sm-6">
            <input class="form-control" id="inputkName" name="cuKname" type="text" placeholder="성명(한글)">
          </div>
        </div>
         <div class="form-group">
        	<label class="col-sm-3 control-label" for="inputName">성명(영문)</label>
        	<label class="col-sm-1 control-label"  for="inputName">FirstName</label> 
          <div class="col-sm-2">
            <input class="form-control " id="inputFirstName" name="cuFirstName" type="text" placeholder="First name(이름)">
          </div>
           <label class="col-sm-1 control-label" for="inputName">LastName</label>
          <div class="col-sm-2">
            <input class="form-control " id="inputLastName" name="cuLastname" type="text" placeholder="Last name(성)">
          </div>
        </div>
        
        <div class="form-group">
          <label class="col-sm-3 control-label" for="inputPassword">비밀번호</label>
        <div class="col-sm-6">
          <input class="form-control" id="inputPassword" name="cuPass" type="password" placeholder="비밀번호">
        <p class="help-block">숫자, 특수문자 포함 8자 이상</p>
        </div>
        </div>
          <div class="form-group">
              <label class="col-sm-3 control-label" for="inputPasswordCheck">비밀번호 확인</label>
             <div class="col-sm-6">
              <input class="form-control" id="inputPasswordCheck" type="password" placeholder="비밀번호 확인">
                <p class="help-block">비밀번호를 한번 더 입력해주세요.</p>
             </div>
          </div>
        
       
        <div class="form-group">
            <label class="col-sm-3 control-label" for="inputBirth">생년월일</label>
          <div class="col-sm-6">
            <input class="form-control" id="inputBirth" name="cuBirthday" type="text" placeholder="생년월일">
          </div>
        </div>
        <div class="form-group">
            <label class="col-sm-3 control-label" for="inputNumber">휴대폰번호</label>
              <div class="col-sm-6">
                  <input type="tel" class="form-control" name="cuPhone" id="inputPhone" placeholder="- 없이 입력해 주세요" />
              </div>
        </div>
        <div class="form-group">
            <label class="col-sm-3 control-label" for="inputNumber">전화번호</label>
              <div class="col-sm-6">
                  <input type="tel" class="form-control" name="cuTel" id="inputTel" placeholder="- 없이 입력해 주세요" />
              </div>
        </div>
          <div class="form-group">
              <label class="col-sm-3 control-label" for="inputAgree">약관 동의</label>
            <div class="col-sm-6" data-toggle="buttons">
              <label class="btn btn-warning active">
                <input id="agree" type="checkbox" autocomplete="off" chacked>
                  <span class="fa fa-check"></span>
              </label>
              <a href="#">이용약관</a> 에 동의 합니다.
            </div>
          </div>
        <div class="form-group">
          <div class="col-sm-12 text-center">
            <button class="btn btn-primary" type="submit">회원가입<i class="fa fa-check spaceLeft"></i></button>
            <button class="btn btn-danger" type="submit">가입취소<i class="fa fa-times spaceLeft"></i></button>
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
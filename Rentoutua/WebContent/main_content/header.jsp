<%@ page contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="hotel.model.*" %> 
<%
	String user = null;
	String type = null;
	//# 1."id"로 저장된 세션값을 얻어온다.
	//# 2. 값이 null이라면 LoginForm.jsp로 페이지 이동
	//# 3. null이 아니라면 String 형변환하여 변수에 지정
	Customer sess = (Customer)session.getAttribute("id");
	
	
//null이 아닌경우  default값은 
	if(sess != null){
		user = sess.getCuKname();
		type = sess.getCuType();
	}else{
		System.out.println("로그인을 다시 해주세요");
		
	}
	System.out.println("헤더의 유저 >> "+user);
%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
   
   <!-- Animate.css -->
   <link rel="stylesheet" href="css/animate.css">
   <!-- Icomoon Icon Fonts-->
   <link rel="stylesheet" href="css/icomoon.css">
   <!-- Themify Icons-->
   <link rel="stylesheet" href="css/themify-icons.css">
   <!-- Bootstrap  -->
<!--    <link rel="stylesheet" href="css/bootstrap.css"> -->
   <link href="/Rentoutua/main_content/cssSJ/bootstrap.min.css" rel="stylesheet">
   <!-- Magnific Popup -->
   <link rel="stylesheet" href="css/magnific-popup.css">
   <!-- Owl Carousel  -->
   <link rel="stylesheet" href="css/owl.carousel.min.css">
   <link rel="stylesheet" href="css/owl.theme.default.min.css">
   <!-- Flexslider -->
   <link rel="stylesheet" href="css/flexslider.css">
   <!-- Theme style  -->
   <link rel="stylesheet" href="css/style.css">
   
   <!-- cal - jquery ui -->
   <link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
   
   <!-- *** Jquery *** -->
   <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
   <script src="https://ajax.googleapis.com/ajax/libs/jqueryui/1.12.1/jquery-ui.min.js"></script>

   <!-- Modernizr JS -->
   <script src="js/modernizr-2.6.2.min.js"></script>
   
   <!-- slide menu -->
   <link rel="stylesheet" href="css/slide_menu.css">
   <!-- header css -->
   <link rel="stylesheet" href="css/header.style.css">
   
   <style type="text/css">
   #cal_label1{
      color: #fff;
   }
   #cal_label2{
      color: #fff;
   }
   
   #cal_li input{
      margin-left: 15px;
   }
   
   .rev_li label{
      color: #fff;
   }
   .rev_li select{
      width:40px;
      height: 30px;
   }
   #rev_submit{
      margin-left: 60px;
      
   }
   #hotel_menu{
   	left:45%;
   }
   .error-comment{
   	color: #FF5126;
   }
   #userName{
   	position : relative;
   	left : 70%;
   }
   </style>
   
  <script>
  $(document).ready(function(){


		if( "<%= user %>" == "null" ) {
			$('.dropdown').show();
			$('#logout_btn').hide();
			$("li #mypage_menu").hide();
			$("#userName").hide();
		}else{
			$('.dropdown').hide();
			$('#logout_btn').show();
			$("li #mypage_menu").show();
			$("#userName").show();
			$("#userName").text("<%=sess.getCuKname()%>");
		}

	  $(".dropdown_hotel").hover(    
	        function() {
	            $('.dropdown-menu', this).not('.in .dropdown-menu').stop( true, true ).slideDown("fast");
	            $(this).toggleClass('open');        
	        },
	        function() {
	            $('.dropdown-menu', this).not('.in .dropdown-menu').stop( true, true ).slideUp("fast");
	            $(this).toggleClass('open');       
	        }
	    );
	    $("#logout_btn").click(function(){
	    	alert("logout 버튼 누름");
	    	$.ajax({
	    		url: 'rentoutua.cus?cmd=logout-do',
	    		type :'post',
	    		dataType :'text',
	    		success : function(data){
// 	    			alert("데이타");
	    			if(data.trim() == 'NO'){
	    				$('.dropdown').show();
	    				$('#logout_btn').hide();
	    				$("li #mypage_menu").hide();
	    				$("#userName").hide();
	    				alert("로그아웃");
	    			}else if( data.trim() == 'Yes'){
	    				alert("로그인 실패");
						$(".error-comment").show();
	    			}
	    		},
	    		error : function(err){
	    			alert('에러발생 ' + err.toString())
	    		}
	    	})
	    });
	    
	    $("#sign_in").click(function(){
// 	    	alert("버튼 클릭")
	    	$.ajax({
	    		url: 'rentoutua.cus?cmd=login-do',
	    		type :'post',
	    		data : { cuEmail : $('#inputEmail').val(),
	    			cuPass : $('#inputPassword').val()
	    		},
	    		contentType: "application/x-www-form-urlencoded; charset=UTF-8",
	    		dataType :'text',
	    		success : function(data){
	    			if( true ){
	    				$('.dropdown').hide();
	    				$('#logout_btn').show();
	    				$("li #mypage_menu").show();
	    				var obj = {};
	    		    	obj = eval("(" + data + ")");
	    		    	$("#userName").show();
	    				$("#userName").text(obj.saveName+obj.saveType+"님 환영합니다.");
	    				alert(obj.saveType);
	    				alert("로그인 성공");
// 	    				console.log(data);
	    			}else {
	    				alert("로그인 실패");
						$(".error-comment").show();
	    			}
	    		},
	    		error : function(err){
	    			alert('에러발생 ' + err.toString())
	    		}
	    	})
	    });
	    	
	});
  
  $( function() {
    var dateFormat = "mm/dd/yy",
      from = $( "#from" )
        .datepicker({
          defaultDate: "+1w",
          changeMonth: true,
          numberOfMonths: 1
        })
        .on( "change", function() {
          to.datepicker( "option", "minDate", getDate( this ) );
        }),
      to = $( "#to" ).datepicker({
        defaultDate: "+1w",
        changeMonth: true,
        numberOfMonths: 1
      })
      .on( "change", function() {
        from.datepicker( "option", "maxDate", getDate( this ) );
      });
 
    function getDate( element ) {
      var date;
      try {
        date = $.datepicker.parseDate( dateFormat, element.value );
      } catch( error ) {
        date = null;
      }
 
      return date;
    }
  } );
  </script>
   
</head>
<body>
      <div id="header">
         <nav class="gtco-nav" role="navigation">
            <div class="gtco-container">
               <div class="row">
                  <div id="maintitle" class="col-sm-2 col-xs-12">
                     <div id="gtco-logo"><a href="rentoutua.cus?cmd=index-page">Rentoutua</a></div>
                  </div>
                  <div class="dropdown">
                     <button id="login_btn" class="btn btn-default"type="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">Login</button>
                       <ul id="login-dp" class="dropdown-menu" role="menu">
                        <li>
                            <div class="row">
                                 <div class="col-md-12">
                                    Login via
                                     <form action="#" class="form" role="form" method="post" action="login" accept-charset="UTF-8" id="login-nav">
                                          <div class="form-group">
                                              <label class="sr-only" for="exampleInputEmail2">Email address</label>
                                              <input type="email" class="form-control" name="cuEmail" id="inputEmail" placeholder="Email address" required>
                                          </div>
                                          <div class="form-group">
                                              <label class="sr-only" for="exampleInputPassword2">Password</label>
                                              <input type="password" class="form-control" name="cuPass" id="inputPassword" placeholder="Password" required>
                                                          <div class="error-comment text-center">아이디 또는 패스워드를 잘 못 입력하셨습니다.</div>
                                                         <div class="help-block text-right"><a href="">Forget the password ?</a></div>
                                          </div>
                                          <div class="form-group">
                                              <input  type="button" id="sign_in" class="btn btn-primary btn-block" value="Sign in" />
                                          </div>
                                     </form>
                                 </div>
                                 <div class="bottom text-center">
                                    New here ? <a href="rentoutua.cus?cmd=cusinsert-form"><b>Join Us</b></a>
                                 </div>
                            </div>
                        </li>
                     </ul>
                  </div>
                   <div id = "after-login">
                    <button id="logout_btn" class="btn btn-default" type="button" >Logout</button>
                     <span id="userName">aa</span>
                     </div>
                  <div class="col-xs-10 text-right menu-1 main-nav">
                     <ul>
                     	<li><a href="/Rentoutua/main_content/branchInfo.jsp" class="external">Hotel Infomation</a></li>
                        <li>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</li>
                        <li class="dropdown_hotel">
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown" >Accommodation</a>
	                         <ul id="hotel_menu" class="dropdown-menu" role="menu">
				                <li><a href="/Rentoutua/main_content/accStandard.jsp" class="external">Standard</a></li>
				                <li><a href="/Rentoutua/main_content/accDeluxe.jsp" class="external">Deluxe</a></li>
				                <li><a href="/Rentoutua/main_content/accSuite.jsp" class="external">Suite</a></li>
				              </ul>      
                        </li>
                        <li>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</li>
                        <li><a href="/Rentoutua/main_content/QnAInput.jsp" class="external">Q&A</a></li>
                        <li>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</li>
                        <li><a href="/Rentoutua/main_content/special_list.jsp" class="external">Special Offer</a></li>
                        <li>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</li>
                        <li ><a href="rentoutua.cus?cmd=cusmypage-form" id="mypage_menu"  class="external">My page</a></li>
                     </ul>
                  </div>
               </div>
            </div>
             <!-- Navigation -->
             <a id="menu-toggle" href="#" class="btn btn-dark btn-lg toggle">
             <span class="glyphicon glyphicon-book"></span>
             </a>
             <nav id="sidebar-wrapper">
                <form  action="rentoutua.res?cmd=ressel-form" method="post" >
                 <ul class="sidebar-nav">
                     <li class="sidebar-brand">
                         <a href="rentoutua.cus?cmd=index-page"  onclick="$('#menu-close').click();" >Reservation</a>
                     </li>
                     <li id="cal_li">
                     <label id="cal_label1" for="from">Check-in</label><br/>
                     <input class="cal_form" type="text" id="from" name="from"><br/>
                     <label id="cal_label2" for="to">Check-out</label><br/>
                     <input class="cal_form" type="text" id="to" name="to"><br/><br/>
                     </li>
                     <li class="branch_li">
                        <label>지점선택</label>&nbsp;&nbsp;&nbsp;
                     <select class="rev_branch" name="rev_branch">
                        <option value = "0">지점선택</option>
                        <option value = "10">서울점</option>
                        <option value = "20">제주점</option>
                        <option value = "30">경주점</option>
                     </select><br/>
                     </li>
                     <li class="rev_li">
                        <label>Adult</label>&nbsp;&nbsp;&nbsp;
                     <select class="rev_people" name="rev_people">
                        <option value = "0">0</option>
                        <option value = "1">1</option>
                        <option value = "2">2</option>
                        <option value = "3">3</option>
                     </select><br/>
                     </li>
                     <li class="rev_li">
                         <label>Children</label>&nbsp;&nbsp;&nbsp;
                     <select class="rev_child" name="rev_child">
                        <option value = "0">0</option>
                        <option value = "1">1</option>
                        <option value = "2">2</option>
                     </select><br/><br/>
                     </li>
                     <li id="rev_submit">           
                         <input type="submit" value="예약하기" class="btn btn-success">
                     </li>
                 </ul>
               </form>
             </nav>
         </nav>
         
      </div>

<script>
    
 // Closes the sidebar menu
    $("#menu-close").click(function(e) {
        e.preventDefault();
        $("#sidebar-wrapper").toggleClass("active");
    });

    // Opens the sidebar menu
    $("#menu-toggle").click(function(e) {
        e.preventDefault();
        $("#sidebar-wrapper").toggleClass("active");
    });

</script>
   
   <!-- jQuery Easing -->
   <script src="js/jquery.easing.1.3.js"></script>
   <!-- Bootstrap -->
   <script src="js/bootstrap.min.js"></script>
   <!-- Waypoints -->
   <script src="js/jquery.waypoints.min.js"></script>
   <!-- Carousel -->
   <script src="js/owl.carousel.min.js"></script>
   <!-- countTo -->
   <script src="js/jquery.countTo.js"></script>
   <!-- Flexslider -->
   <script src="js/jquery.flexslider-min.js"></script>
   <!-- Magnific Popup -->
   <script src="js/jquery.magnific-popup.min.js"></script>
   <script src="js/magnific-popup-options.js"></script>
   <!-- Main -->
   <script src="js/main.js"></script>

</body>
</html>
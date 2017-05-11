<%@ page contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
   </style>
   
  <script>
  $(document).ready(function(){
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
                     <div id="gtco-logo"><a href="index.jsp">Rentoutua <em>.</em></a></div>
                  </div>
                  <div class="dropdown">
                     <button id="login_btn" class="btn btn-default"type="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">Login</button>
                       <ul id="login-dp" class="dropdown-menu" role="menu">
                        <li>
                            <div class="row">
                                 <div class="col-md-12">
                                    Login via
                                     <form class="form" role="form" method="post" action="login" accept-charset="UTF-8" id="login-nav">
                                          <div class="form-group">
                                              <label class="sr-only" for="exampleInputEmail2">Email address</label>
                                              <input type="email" class="form-control" id="exampleInputEmail2" placeholder="Email address" required>
                                          </div>
                                          <div class="form-group">
                                              <label class="sr-only" for="exampleInputPassword2">Password</label>
                                              <input type="password" class="form-control" id="exampleInputPassword2" placeholder="Password" required>
                                                         <div class="help-block text-right"><a href="">Forget the password ?</a></div>
                                          </div>
                                          <div class="form-group">
                                              <button type="submit" class="btn btn-primary btn-block">Sign in</button>
                                          </div>
                                     </form>
                                 </div>
                                 <div class="bottom text-center">
                                    New here ? <a href="/Rentoutua/main_content/SignUp.jsp"><b>Join Us</b></a>
                                 </div>
                            </div>
                        </li>
                     </ul>
                  </div>
                  <div class="col-xs-10 text-right menu-1 main-nav">
                     <ul>
                        <li class="dropdown_hotel">
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown" >Hotel Infomation</a>
	                         <ul id="hotel_menu" class="dropdown-menu" role="menu">
				                <li><a href="/Rentoutua/main_content/accStandard.jsp" class="external" >Standard</a></li>
				                <li><a href="/Rentoutua/main_content/accDeluxe.jsp" class="external">Deluxe</a></li>
				                <li><a href="/Rentoutua/main_content/accSuite.jsp" class="external">Suite</a></li>
				              </ul>      
                        </li>
                        <li>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</li>
                        <li><a href="/Rentoutua/main_content/QnAInput.jsp" class="external">Q&A</a></li>
                        <li>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</li>
                        <li><a href="/Rentoutua/main_content/special_list.jsp" class="external">Special Offer</a></li>
                        <li>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</li>
                        <li><a href="/Rentoutua/main_content/mypageMember.jsp" class="external">My page</a></li>
                     </ul>
                  </div>
               </div>
            </div>
             <!-- Navigation -->
             <a id="menu-toggle" href="#" class="btn btn-dark btn-lg toggle">
             <span class="glyphicon glyphicon-book"></span>
             </a>
             <nav id="sidebar-wrapper">
                <form name="frm">
                 <ul class="sidebar-nav">
                     <li class="sidebar-brand">
                         <a href="#top"  onclick="$('#menu-close').click();" >Reservation</a>
                     </li>
                     <li id="cal_li">
                     <label id="cal_label1" for="from">Check-in</label><br/>
                     <input class="cal_form" type="text" id="from" name="from"><br/>
                     <label id="cal_label2" for="to">Check-out</label><br/>
                     <input class="cal_form" type="text" id="to" name="to"><br/><br/>
                     </li>
                     <li class="rev_li">
                        <label>Adult</label>&nbsp;&nbsp;&nbsp;
                     <select class="rev_people">
                        <option>0</option>
                        <option>1</option>
                        <option>2</option>
                        <option>3</option>
                     </select><br/>
                     </li>
                     <li class="rev_li">
                         <label>Children</label>&nbsp;&nbsp;&nbsp;
                     <select>
                        <option>0</option>
                        <option>1</option>
                        <option>2</option>
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
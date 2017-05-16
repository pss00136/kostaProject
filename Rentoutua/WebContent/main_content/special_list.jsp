<%@page import="java.util.*"%>
<%@page import="hotel.model.Eventinfo"%>
<%@ page contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title></title>
<!-- Bootstrap -->
    <link href="/Rentoutua/main_content/cssSJ/bootstrap.min.css" rel="stylesheet">
    <!-- font awesome -->
    <link rel="stylesheet" href="/Rentoutua/main_content/cssSJ/font-awesome.min.css" media="screen" title="no title" charset="utf-8">
    <!-- Custom style -->
    <link rel="stylesheet" href="/Rentoutua/main_content/cssSJ/style.css" media="screen" title="no title" charset="utf-8">

<!-- content css -->
<style type="text/css">

#tourpackages-carousel{
	position: relative;
	top: 150px;
	margin: 0 auto;
	width: 65%;
}
.ev_date{
	color:#999999;
}
</style>


<% 
	List<Eventinfo> eventList = (List)request.getAttribute("eventList");
	int listSize = eventList.size();
	int row = (listSize/4) +1;
	if(listSize%4==0){
		row = listSize/4;
	}
	int j=0;

%>

</head>
<body>
<!-- 헤더 연결 -->
<jsp:include page="header.jsp"></jsp:include>

<!-- content -->
 <div class="container" id="tourpackages-carousel">
	 <div class="row">
	 		<div class="sub_content">
			<h3>Promotion</h3>
			<p class="sub_txt control-label">레또뚜아 호텔만의 다양한 프로모션 상품을 경험해 보시기 바랍니다.</p>
			</div>
	 </div>
	<%for(int i=0; i<row; i++){ %>
      <div class="row">
        <% for(int h=0; h<=3; h++){ %>
        <% Eventinfo event = eventList.get(j); %>
        <div class="col-xs-18 col-sm-6 col-md-3">
          <div class="thumbnail">
            <a href="rentoutua.event?cmd=eventinfo-view&evNum=<%=event.getEvNum()%>"><img src="<%= event.getThumbPath() %>" alt=""></a>
              <div class="caption">
                <a href="rentoutua.event?cmd=eventinfo-view&evNum=<%=event.getEvNum()%>"><h3><%= event.getEvTitle() %></h3></a>
                <p class="ev_date"><%= event.getEvDate() %></p>
<!--                 <a href="#" class="btn btn-info btn-xs" role="button">수정</a> <a href="#" class="btn btn-default btn-xs btn-danger" role="button">삭제</a></p> -->
            </div>
          </div>
        </div>
		<%
		j++; 
			if(j==listSize){break;}
		}%>

	  </div><!--End row -->
      <% }//end of for %>
      
      	<!--글쓰기 폼 이동 버튼 -->
   		<div class="row">
   			<div class="col-xs-18 col-sm-6 col-md-3">
   				<a href="rentoutua.event?cmd=eventinfo-form" class="btn btn-default" role="button">글쓰기</a>
   			 </div>
   		</div>     
      
 </div><!-- End container -->
    
    <!-- 푸터 연결 -->
	<jsp:include page="footer2.jsp"></jsp:include>
</body>
</html>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
 <% 
 	request.setCharacterEncoding("EUC-KR");
 %> 
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
<% 
	int result = Integer.parseInt(request.getAttribute("result").toString());
%>
</head>
<body>
<%if(result==0) {%>
db 입력 성공
<%} %>
</body>
</html>
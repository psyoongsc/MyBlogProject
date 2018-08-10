<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<% request.setCharacterEncoding("UTF-8"); %>

<%
	String id = request.getParameter("id");
	
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>로그인 성공!!!</title>
</head>
<body>
<b><%= id %><br>님 어서오세요!!
<h4>로그인에 성공하셨습니다!!</h4>
</body>
</html>
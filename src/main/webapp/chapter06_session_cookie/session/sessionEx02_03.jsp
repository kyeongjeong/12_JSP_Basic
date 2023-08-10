<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>session</title>
</head>
<body>
	
	<h3>마이페이지</h3>
	<% 
		// 세션 데이터 조회 : (형변환)session.getAttribute("속성명");
		String id = (String)session.getAttribute("id");
		String role = (String)session.getAttribute("role");
	%>
	
	<p><%=id %>님 (<%=role %>)로그인 중</p>
	
</body>
</html>
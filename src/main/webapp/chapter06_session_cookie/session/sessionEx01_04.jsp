<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>session</title>
</head>
<body>
	
	<h3>주문내역</h3>
	<% 
		String id = request.getParameter("id");
	%>
	<p><%=id %>님 로그인중</p>


</body>
</html>
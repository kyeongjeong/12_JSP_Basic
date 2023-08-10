<%@page import="java.util.Random"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.Date"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>import</title>
</head>
<body>

	<% 
		Date temp = new Date();
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd hh:mm:ss");
		String now = sdf.format(temp);
	%>
	<h1>현재 시간 : <%=now %></h1>
	<hr>
	
	<% 
		Random ran = new Random();
		int r = ran.nextInt(6);
		String[] languages = {"JSP" , "MySQL" , "javascript" , "CSS" , "HTML" , "java"};
	%>
	<h1><%=languages[r] %> 언어가 재미있다!</h1>

</body>
</html>
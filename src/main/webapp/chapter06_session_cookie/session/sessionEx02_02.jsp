<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>session</title>
</head>
<body>
	
	<% 
	
		request.setCharacterEncoding("utf-8");
	
		String id     = request.getParameter("id");
		String passwd = request.getParameter("passwd");
	
		// DB에서 select쿼리 인증 로직
		
		// 세션 등록 : session.setAttribute("속성명", 데이터);
		session.setAttribute("id", id);
		session.setAttribute("role" , "admin");
		
		// 세션 유효기간 설정 (초)
		//session.setMaxInactiveInterval(60); 	 	  // 1분
		//session.setMaxInactiveInterval(60 * 10); 	  // 10분
		//session.setMaxInactiveInterval(60 * 60); 	  // 1시간
		//session.setMaxInactiveInterval(60 * 60 * 24); // 1일
		
	%>	
		
	<h3>로그인 되었습니다.</h3>
	<p>아이디 : <%=id %></p>

	<hr>
	<p><a href="sessionEx02_03.jsp">마이페이지</a></p>
	<p><a href="sessionEx02_04.jsp">주문내역</a></p>
	<p><a href="sessionEx02_05.jsp">로그아웃</a></p>
	
	
	
</body>
</html>
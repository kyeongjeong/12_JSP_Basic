<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>session</title>
</head>
<body>

	<% 
	
		//session.removeAttribute("id");
		//session.removeAttribute("role");
	
		session.invalidate();
		
	%>
	
	<script>
		alert("로그아웃 되었습니다.");
		location.href = "sessionEx02_01.jsp";
	</script>

</body>
</html>
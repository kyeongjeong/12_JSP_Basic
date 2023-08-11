<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>${pageTitle }</title>
</head>
<body>

	<h4>session 확인 : ${sessionScope.id } / ${sessionScope.role } / ${sessionScope.isMobile }</h4>
	
	
	<hr>
	
	<h4>request확인 : ${name } / ${contact }</h4>
	
</body>
</html>
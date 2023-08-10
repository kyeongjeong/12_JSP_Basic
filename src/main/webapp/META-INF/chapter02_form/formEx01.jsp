<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>데이터 전송 기초1</title>
</head>
<script>
	
	function sendData() {
		
		document.f.submit();
	}
</script>
<body>

	<%--
	
		# 폼 데이터 전송
	
		action : 데이터를 전송할 위치를 작성한다.
		method : 입력데이터가 서버로 보내지는 방법을 기술한다. GET과 POST 방식이 있고 기본방식은 GET방식이다. 
	
			- GET방식 : URL 주소 뒤에 파라미터를 붙여서 데이터를 전달하는 방식.
			            ? 기호 앞에적힌 곳은 URL주소가 되고 
			            ? 기호 뒤에 오는 값들이 서버로 전달되는 파라미터 값이 된다.
			
			- POST방식 : 사용자가 입력한 데이터를 URL 주소에 붙이지 않고 
			             HTTP Request 헤더에 포함시켜서 전송하는 방식이다.
			
	 --%>
	
	<form action="formEx01Pro.jsp" method="post" name = "f">
		<fieldset>
			<legend>회원정보 입력</legend>
			
			<!-- form태그 안에 있는 name속성의 데이터가 서버로 전송된다. -->
			<p>이름 : <input type="text"   name="name" ></p>
			<p>연락처 : <input type="text" name="contact"></p>
			<p>나이 : <input type="text"   name="age" ></p>
			
			<!-- 방법 1) submit을 사용하여 전송한다.(일반적인 방법) -->
			<input type="submit" value="입력완료(submit)">	
			
			<input type = "button" value = "입력완료(js)" onclick = sendData()>
				
		</fieldset>
	</form>

</body>
</html>
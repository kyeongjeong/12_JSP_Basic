<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>bean</title>
</head>
<body>

	<%-- 
	
		# JSP Use Bean

		- DB에 저장된 데이터를 View에 전달하는 클래스
		- View에서 입력된 데이터를 DB에 전달하는 클래스 
		- Java의 데이터와 기능으로 이루어진 클래스
		- Java의 모델 클래스 (VO , DTO)의 역할을 한다.
		- Bean을 사용하지 않을 경우 기능을 확장하거나 코드를 재사용하기가 상당히 어려워 짐
		- 반복적인 작업을 효율적으로 처리하기 위해 사용하는 구문
		
	
	 	[ 형식 ] 
		
		1) 빈 사용하기
		
		<jsp:useBean id="빈이름" class="자바빈 클래스 이름" scope="범위" />

			id : JSP페이지에서 자바빈 객체에 접근 할 때 사용하는 이름
			class : 패키지 이름을 포함한 자바빈 클래스의 완전한 이름을 입력(.을 구분자로 사용)
			scope : 자바빈 객체가 저장될 영역을 지정
				    page, request, session, application 중 하나를 지정할 수 있다.
			     	아무것도 명시하지 않을 경우 기본값은 page 



		2) 데이터 셋업
		
		<jsp:setProperty name="자바빈" property="이름" value="값" />

			name    : 프로퍼티 값을 변경할 자바빈 객체의 이름.  
				   액션 태그의 id 속성에서 지정한 값을 사용
			property : 값을 지정할 프로퍼티의 이름 ( * 을 사용할 경우 전체값을 할당 할 수 있다.)
			value    : 프로퍼티의 값



		3) 데이터 불러오기
		
		<jsp:getProperty name="자바빈" property="이름" />
	
	 --%>

	<form action="beanEx01Pro.jsp" method="post" >
		<fieldset>
			<p>상품코드 :   <input type="text" name="pdCd"></p>
			<p>상품이름 :   <input type="text" name="pdNm"></p>
			<p>부서코드 :   <input type="text" name="deptCd"></p>
			<p>부서이름 :   <input type="text" name="deptNm"></p>
			<p>담당자코드 : <input type="text" name="mgrCd"></p>
			<p>담당자이름 : <input type="text" name="mgrNm"></p>
			<p><input type="submit" value="전송"></p>
		</fieldset>
	</form>
	
</body>
</html>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>jdbc</title>
</head>
<body>

	<%-- 
	
		# JDBC (Java DataBase Connectivity) 데이터 베이스 연동 방법 
		
		1) (중요)mysql-connector-j-x.x.xx.jar파일을 WEB-INF 폴더의 lib 폴더에 넣는다. 
		
		2) Class.forName("com.mysql.cj.jdbc.Driver"); 및 연결정보를 작성한다.(url , id , password)
		
		3) DriverManager의 getConnection(url , id , password) 메소드를 사용하여
		   데이터베이스 연결정보가 저장되어있는 Connection 객체를 생성한다.
		
	--%>

	<%
		// 데이터베이스를 연결하기 위한 객체
		Connection conn = null; //  java.sql.Connection

		try {

			// forName 생성
			Class.forName("com.mysql.cj.jdbc.Driver");

			// DB 연결 정보 > "jdbc:mysql://db server ip:port number/(connection)database name?option"
			String url = "jdbc:mysql://localhost:3306/JDBC_EX?serverTimezone=Asia/Seoul";
			// DB 연결 계정
			String user = "root";
			// DB 연결 비밀번호
			String password = "1234";

			// 데이터베이스 연동
			conn = DriverManager.getConnection(url, user, password); // java.sql.DriverManager
			System.out.println("연결 성공");

		} 
		
		catch (Exception e) {
		
			e.printStackTrace();
			System.out.println("연결 실패");
		} 
		
		finally {
		
			// 데이터베이스 연동 종료
			conn.close();
		}
	%>


</body>
</html>
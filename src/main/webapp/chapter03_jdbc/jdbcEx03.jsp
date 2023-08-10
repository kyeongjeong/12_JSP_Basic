<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.util.Date"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>jdbc + insert(update, delete)</title>
</head>
<body>

	<%
		Connection conn = null;
		PreparedStatement pstmt = null;

		try {
			
			Class.forName("com.mysql.cj.jdbc.Driver");			
			conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/JDBC_EX?serverTimezone=Asia/Seoul", "root", "1234");			
			
			/*
			
				# prepareStatement
				
				- 원래 statement객체로 사용하였으나 SQL Injection 공격에 대응하는 보안 기법으로 prepareStatement를 사용한다.
				
				- 우선 ?로 쿼리문의 파라메타 형식을 만들고 setter 메서드로 데이터를 대입하여 쿼리문을 완성한다.
				   pstmt.set자료형(인덱스, 값);
				
				- 인덱스는 1부터 시작한다.
				
				Ex)
				pstmt.setInt(index , value);     // 정수 타입 데이터 적용 메서드
				pstmt.setString(index , value);  // 문자열 타입 데이터 적용 메서드
				pstmt.setDate(index , value);  	 // 날짜 타입 데이터 적용 메서드
		
			*/
			
			// 선처리문 쿼리 작성
			String sql = "INSERT INTO PRODUCT VALUES(?, ?, ?, NOW())";	
				
			// 선처리문 쿼리 완성
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, "P10016"); // 첫 번째 물음표에 값을 넣는 과정. INSERT INTO PRODUCT VALUES("P10016", ?, ?, NOW())
			pstmt.setString(2, "게이밍 의자"); // INSERT INTO PRODUCT VALUES("P10016", "게이밍 의자", ?, NOW())
			pstmt.setInt(3, 185000); // INSERT INTO PRODUCT VALUES("P10016", "게이밍 의자", 185000, NOW())
			
			// insert, delete, update 쿼리문 실행. commit의 역할도 함
			pstmt.executeUpdate(); //아까 전에는 executeQuery() 였음.
		}
		
		catch(Exception e) {
			
			e.printStackTrace();
		}
		
		finally {
			
			pstmt.close();
			conn.close();
		}
	%>

</body>
</html>
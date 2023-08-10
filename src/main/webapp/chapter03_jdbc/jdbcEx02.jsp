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
<title>jdbc + select query</title>
</head>
<body>

	<%
		//데이터베이스를 연결하기 위한 객체	
		Connection conn = null; //java.sql.Connection
	
		//쿼리문을 실행하기 위한 객체
		PreparedStatement pstmt = null; //java.sql.PreparedStatement
		
		// select쿼리의 결과를 저장할 객체
		ResultSet rs = null; //Resultset이랑은 차이 분명히 있으니까 주의하기!! //java.sql.ResultSet
	
		try {
			
			Class.forName("com.mysql.cj.jdbc.Driver");
			conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/JDBC_EX?serverTimezone=Asia/Seoul", "root", "1234");
			
			pstmt = conn.prepareStatement("SELECT * FROM PRODUCT");
			rs = pstmt.executeQuery(); //select문 실행 메서드
			
			/*
			
			# db의 컬럼명을 가져 오는 2가지 방법
			
				1) rs.get자료형메서드("컬럼명");
				  
					ex) 
						rs.getString("PRODUCT_CD"); 
						rs.getInt("PRODUCT_PRICE");
						rs.getDate("ENROLL_DT");
				
						
				2) rs.get자료형메서드(index);
					
					ex) 
						rs.getString(1);
						rs.getInt(2);
						rs.getDate(3);
				
					- 유지보수 및 가독성 향상을 위해서 컬럼명지정 방식을 권장한다.
					- index가 1부터 시작되는 점을 유의해야 한다.
			
			*/
			
			while (rs.next()) { // next() : select 쿼리의 결과물이 있으면
				
				String productCd = rs.getString("PRODUCT_CD"); //rs.getString(1); 도 가능. 그러나 가독성 위해 추천하진 않음
				String productNm = rs.getString("PRODUCT_NM");
				int price = rs.getInt("PRICE");
				Date regDt = rs.getDate("REG_DT");
				
				System.out.println("productCd : " + productCd);
				System.out.println("productNm : " + productNm);
				System.out.println("price : " + price);
				System.out.println("regDt : " + regDt);
				System.out.println();
			}
		}
		
		catch(Exception e) {
			
			e.printStackTrace();
		}
		
		finally {
			
			rs.close();
			pstmt.close();
			conn.close();
		}
	%>

</body>
</html>
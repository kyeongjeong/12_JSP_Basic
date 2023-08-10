<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>forward2</title>
</head>
<body>

	<!-- javascript -->
	<script>
		/* var pdCd = "0x01";
		var pdNm = "keyboard";
		
		//var url = "forwardEx02_targer.jsp?pdCd=" + pdCd + "&pdNm=" + pdNm;
		var url = "forwardEx02_targer.jsp";
			url += "?pdCd=" + pdCd;
			url += "&pdNm=" + pdNm;
		
		location.href = url; */
	</script>

	<!-- jsp(java) -->
	<%
		/* String pdCd = "0x02";
		String pdNm = "mouse";
		
		String url = "forwardEx02_targer.jsp";
		url += "?pdCd=" + pdCd;
		url += "&pdNm=" + pdNm;
		
		response.sendRedirect(url); */
	%>

	<!-- action tag -->
	<jsp:forward page="forwardEx02_targer.jsp">
		<jsp:param name="pdCd" value="0x03" />
		<jsp:param name="pdNm" value="pad" />
	</jsp:forward>

</body>
</html>



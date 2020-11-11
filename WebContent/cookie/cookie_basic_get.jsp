<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%
	// 쿠키 사용하기
	// 쿠키는 서버에 요청이 들어올때 자동으로 전송됩니다.
	
	Cookie[] cookies = request.getCookies();

	if(cookies != null) {	// 쿠키가 없는경우가 존재하기 때문에,
		
		for(int i=0; i<cookies.length; i++) {
			out.println(cookies[i].getName() + "<br>");	// 쿠키 이름
			out.println(cookies[i].getValue() + "<br>");	// 쿠키의 값
		}
		
	}
	
%>

<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Insert title here</title>
	</head>
	<body>
	
	</body>
</html>























<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Insert title here</title>
	</head>
	<body>
	
		<!-- a태그를 이용해서 req_video페이지로 상대경로, 절대경로 이동 -->
		<h2>첫번째 문제</h2>
		<a href="../../request/req_video.jsp">req_video(상대경로)</a><br>
		<a href="/JSPBasic/request/req_video.jsp">req_video(절대경로)</a><br>
		
		
		<!-- img태그를 사용해서 java.png참조 -->
		<h2>두번째 문제</h2>
		<img src="../../request/img/java.png" name="상대경로" ><br>
		
		
		<!-- a태그를 이용해서 TestServlet으로 상대경로, 절대경로 -->
		<a href="../../servlet/testServlet.jsp">TestServlet(상대경로)</a><br>
		<a href="/JSPBasic/servlet/testServlet.jsp">TestServlet(절대경로)</a>
	
	</body>
</html>
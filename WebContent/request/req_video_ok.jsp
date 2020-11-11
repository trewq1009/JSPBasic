<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    <%
    	String num = request.getParameter("num");
    %>
    
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Insert title here</title>
	</head>
	<body>
		<!--
			앞에서 어떤 동영상 클릭하냐에 따라,
			각각 알맞은 동영상이 보여지도록 처리.
		-->
		
		<div align="center">
			<h2>강의영상</h2>
			<hr>
			<%if(num == null) {%>
				<p>잘못된 접근입니다.</p>
			
			<%} else if(num.equals("1")) {%>
				<p>자바 수업 소개</p>
				<iframe width="560" height="315" src="https://www.youtube.com/embed/L0a6N-rj-CI" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
			
			<%} else if(num.equals("2")) {%>
				<p>자바스크립트 수업 소개</p>
				<iframe width="560" height="315" src="https://www.youtube.com/embed/lMhMQTxZQTQ" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
			
			<%} else if(num.equals("3")) {%>
				<p>오라클 설치 과정</p>
				<iframe width="560" height="315" src="https://www.youtube.com/embed/DEVR_R2Hva0" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
			
			<%} %>
			
		</div>
		
		
	</body>
</html>
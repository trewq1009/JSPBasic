<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.Date"%>
<%@page import="java.text.DateFormat"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    <%
    	/*
    		1. Date클래스를 이용해서 xxxx년xx월xx일 형태로 날짜를 생성
    		쿠키이름은 show쿠키로 생성해주세요.
    	*/
    	
    	Date date = new Date();
    	SimpleDateFormat sdf = new SimpleDateFormat("yyyy년MM월dd일");
    	String now = sdf.format(date);
    	
    	Cookie cookie = new Cookie("show", now);
    	
    	cookie.setMaxAge(20);
    	
    	response.addCookie(cookie);
    	
    %>
    
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Insert title here</title>
	</head>
	<body>
		<a href="cookie02.jsp">쿠키 사용</a>
	</body>
</html>
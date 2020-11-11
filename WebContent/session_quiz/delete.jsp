<%@page import="com.session.UserRepository"%>
<%@page import="com.session.User"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

    <%
    
    	// 세션정보가 없는 경우
    	if(session.getAttribute("login") == null) {
    		response.sendRedirect("login01.jsp");
    	}
    
    	User user = (User)session.getAttribute("login");
    
    	UserRepository.delUser(user.getId());	// 삭제
    	
    	session.invalidate();
    	
    	response.sendRedirect("login01.jsp");	// 로그인페이지로 이동
    
    %>
    
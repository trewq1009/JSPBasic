<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	/*
		 올바른 인증값을 적은 경우는 reverse.jsp로 이동
		 올바른 인증값을 적은 경우는 authYN이름을 인증성공 세션을 생성
		 올바르지 않은 경우는 다시 인증페이지로 이동.
		 
	*/
	
	String auth = (String)session.getAttribute("auth");
	
	String code = request.getParameter("code");
	
	if(code.equals(auth)) {
		// 인증성공세션
		session.setAttribute("authYN", "y");
		response.sendRedirect("reverse.jsp");
	} else {
		%>
			<script>
				alert("인증번호를 확인하세요.")
				location.href = "auth.jsp";
			</script>
		<%
	}
	
%>














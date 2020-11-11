<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    <%
    	request.setCharacterEncoding("utf-8");	// 한글처리
    	
    	String name = request.getParameter("name");
    	String k = request.getParameter("kor");
	    String e = request.getParameter("eng");
	    String m = request.getParameter("math");
	    
	    int kor = Integer.parseInt(k);
	    int eng = Integer.parseInt(e);
	    int math = Integer.parseInt(m);
	    
	    int	sum = kor + eng + math;
	    double avg = sum / 3.0;
	    
	    String result = String.format("%.2f", avg);
	    
    %>
    
    
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Insert title here</title>
	</head>
	<body>
		<h2>결과</h2>
		이름:<%=name %><br>
		합계:<%=sum %><br>
		평균:<%=avg %><br>
		
		<%if(avg > 80) { %>
			고득점
		<%} else if(avg > 60 && avg <=80) {%>
			중간
		<%} %>
	</body>
</html>





















<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    <%
    	Cookie[] cookie = request.getCookies();
    	String name = "";
    	if(cookie != null) {
    		for(int i=0; i<cookie.length; i++) {
    			
    			if(cookie[i].getValue().equals("abc")) {
    				name = cookie[i].getValue();
    			}
    			
    		}
    		
    		out.println(name + "님 환영합니다.");
    		
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